<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Interfaces\TransactionRepositoryInterface;
use App\Http\Requests\CostumerInformationStoreRequest;
use App\Http\Requests\BookingShowRequest;
use App\Models\Transaction;

class BookingController extends Controller
{
    private BoardingHouseRepositoryInterface $boardingHouseRepository;
    private TransactionRepositoryInterface $transactionRepository;

    public function __construct(
        BoardingHouseRepositoryInterface $boardingHouseRepository,
        TransactionRepositoryInterface $transactionRepository
    ) {
        $this->boardingHouseRepository = $boardingHouseRepository;
        $this->transactionRepository = $transactionRepository;
    }

    /* =========================
        STEP 1 – BOOKING
    ========================== */
    public function booking(Request $request, $slug)
    {
        session()->forget('transaction_code'); // reset kalau mulai booking baru
        $this->transactionRepository->saveTransactionDataToSession($request->all());

        return redirect()->route('booking.information', $slug);
    }

    /* =========================
        STEP 2 – INFORMATION
    ========================== */
    public function information($slug)
    {
        $transaction = $this->transactionRepository->getTransactionDataFromSession();

        if (!$transaction || !isset($transaction['room_id'])) {
            return redirect()
                ->route('boarding-house.show', $slug)
                ->with('error', 'Silakan pilih kamar terlebih dahulu');
        }

        $boardingHouse = $this->boardingHouseRepository->getBoardingHouseBySlug($slug);
        $room = $this->boardingHouseRepository->getBoardingHouseRoomById($transaction['room_id']);

        return view('pages.booking.information', compact('boardingHouse', 'transaction', 'room'));
    }

    public function saveInformation(CostumerInformationStoreRequest $request, $slug)
    {
        $this->transactionRepository->saveTransactionDataToSession($request->validated());
        return redirect()->route('booking.checkout', $slug);
    }

    /* =========================
        STEP 3 – CHECKOUT
    ========================== */
    public function checkout($slug)
    {
        $transaction = $this->transactionRepository->getTransactionDataFromSession();

        if (!$transaction || !isset($transaction['room_id'])) {
            return redirect()
                ->route('boarding-house.show', $slug)
                ->with('error', 'Silakan pilih kamar terlebih dahulu');
        }

        $boardingHouse = $this->boardingHouseRepository->getBoardingHouseBySlug($slug);
        $room = $this->boardingHouseRepository->getBoardingHouseRoomById($transaction['room_id']);

        return view('pages.booking.checkout', compact('boardingHouse', 'transaction', 'room'));
    }

    /* =========================
        STEP 4 – PAYMENT
    ========================== */
    public function payment(Request $request, $slug)
    {
        $this->transactionRepository->saveTransactionDataToSession(
            $request->only('payment_method')
        );

        /**
         * CEGAH INSERT DUPLIKAT
         */
        if (session()->has('transaction_code')) {
            $transaction = $this->transactionRepository
                ->getTransactionByCode(session('transaction_code'));
        } else {
            $transaction = $this->transactionRepository->saveTransactionData(
                $this->transactionRepository->getTransactionDataFromSession()
            );

            session(['transaction_code' => $transaction->code]);
        }

        // konfigurasi Midtrans
        \Midtrans\Config::$serverKey = config('midtrans.server_key');
        \Midtrans\Config::$isProduction = config('midtrans.is_production');
        \Midtrans\Config::$isSanitized = true;
        \Midtrans\Config::$is3ds = true;

        $params = [
            'transaction_details' => [
                'order_id' => $transaction->code,
                'gross_amount' => (int) $transaction->total_amount,
            ],
            'customer_details' => [
                'first_name' => $transaction->name,
                'email' => $transaction->email,
                'phone' => $transaction->phone_number,
            ],
            'callbacks' => [
                'finish' => route('booking.success', [
                    'slug' => $slug,
                    'order_id' => $transaction->code,
                ]),
            ],
        ];

        try {
            $paymentUrl = \Midtrans\Snap::createTransaction($params)->redirect_url;
            return redirect($paymentUrl);
        } catch (\Exception $e) {
            return redirect()
                ->route('booking.checkout', $slug)
                ->with('error', $e->getMessage());
        }
    }

    /* =========================
        STEP 5 – SUCCESS
    ========================== */
    public function success(Request $request, $slug)
    {
        $transaction = $this->transactionRepository
            ->getTransactionByCode($request->order_id);

        if (!$transaction) {
            abort(404);
        }

        if ($transaction->payment_status !== 'success') {
            $this->transactionRepository->updateTransactionStatus(
                $transaction->id,
                'success'
            );
        }

        session()->forget('transaction_code'); // bersihkan setelah selesai

        return view('pages.booking.success', compact('transaction'));
    }

    public function check()
    {
        return view('pages.booking.check-booking');
    }

   public function show(BookingShowRequest $request)
{
    $transaction = $this->transactionRepository
        ->getTransactionByCodeEmailPhone(
            $request->code,
            $request->email,
            $request->phone_number
        );

    if (!$transaction) {
        return redirect()->back()->with('error', 'Transaksi tidak ditemukan.');
    }

    return view('pages.booking.detail', compact('transaction'));
}
}
