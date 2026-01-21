<?php

namespace App\Repositories;

use App\Interfaces\TransactionRepositoryInterface;
use App\Models\Room;
use App\Models\Transaction;

class TransactionRepository implements TransactionRepositoryInterface
{
    public function getTransactionDataFromSession()
    {
        return session()->get('transaction');
    }

    public function saveTransactionDataToSession($data)
    {
        $transaction = session()->get('transaction', []);

        foreach ($data as $key => $value) {
            $transaction[$key] = $value;
        }

        session()->put('transaction', $transaction);
    }

    public function saveTransactionData($data)
    {
        if (!isset($data['room_id'], $data['duration'], $data['payment_method'])) {
            throw new \Exception('Data transaksi tidak lengkap');
        }

        $room = Room::findOrFail($data['room_id']);

        $data = $this->prepareTransactionData($data, $room);

        $transaction = Transaction::create($data);

        session()->forget('transaction');

        return $transaction;
    }

    public function getTransactionByCode($code)
    {
        return Transaction::where('code', $code)->first();
    }

    /* =========================
        🔥 INI YANG KURANG
    ========================== */
    public function updateTransactionStatus($id, $status)
    {
        return Transaction::where('id', $id)->update([
            'payment_status' => $status,
            'transaction_date' => now()->toDateString(),
        ]);
    }

    private function prepareTransactionData($data, $room)
    {
        $data['code'] = $this->generateTransactionCode();
        $data['payment_status'] = 'pending';
        $data['transaction_date'] = now()->toDateString();
        $data['start_date'] = now()->toDateString();

        $total = $this->calculateTotalAmount(
            $room->price_per_month,
            $data['duration']
        );

        $data['total_amount'] = $this->calculatePaymentAmount(
            $total,
            $data['payment_method']
        );

        return $data;
    }

    public function getTransactionByCodeEmailPhone($code, $email, $phone)
{
    return Transaction::where('code', $code)
        ->where('email', $email)
        ->where('phone_number', $phone)
        ->first();
}


    private function generateTransactionCode()
    {
        return 'NGKBWA' . rand(100000, 999999);
    }

    private function calculateTotalAmount($pricePerMonth, $duration)
    {
        $pricePerMonth = (int) $pricePerMonth;
        $duration = (int) $duration;

        $subtotal = $pricePerMonth * $duration;
        $tax = $subtotal * 0.11;
        $insurance = $subtotal * 0.01;

        return $subtotal + $tax + $insurance;
    }

    private function calculatePaymentAmount($total, $paymentMethod)
    {
        return $paymentMethod === 'full_payment'
            ? $total
            : $total * 0.3;
    }
}
