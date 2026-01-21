@extends('layouts.app')

@section('content')
<div id="Background"
    class="absolute top-0 w-full h-[430px] rounded-b-[75px]"
    style="background: linear-gradient(180deg, #E6F4FB 0%, #88cefa 100%) !important;">
</div>

<div class="relative flex flex-col gap-[30px] my-[60px] px-5">
    <h1 class="font-bold text-[30px] leading-[45px] text-center">
        Check Your<br>Booking Details
    </h1>

    {{-- FORM --}}
    <form action="{{ route('check-booking.show', ['slug' => 'check']) }}" 
          method="POST"
          class="flex flex-col rounded-[30px] border border-[#F1F2F6] p-5 gap-6 bg-white">

        @csrf

        {{-- Error message --}}
        @if(session('error'))
            <div class="bg-red-100 text-red-600 p-3 rounded-lg text-sm">
                {{ session('error') }}
            </div>
        @endif

        <div class="flex flex-col gap-[6px]">
            <h1 class="font-semibold text-lg">Your Informations</h1>
            <p class="text-sm text-ngekos-grey">Fill the fields below with your valid data</p>
        </div>

        <div id="InputContainer" class="flex flex-col gap-[18px]">

            {{-- Booking ID --}}
            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Booking ID</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                    <img src="{{ asset('assets/images/icons/note-favorite-grey.svg') }}" class="w-5 h-5" alt="icon">
                    <input type="text" name="code" required
                        class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"
                        placeholder="Write your booking id">
                </label>
            </div>

            {{-- Email --}}
            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Email Address</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                    <img src="{{ asset('assets/images/icons/sms.svg') }}" class="w-5 h-5" alt="icon">
                    <input type="email" name="email" required
                        class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"
                        placeholder="Write your email">
                </label>
            </div>

            {{-- Phone --}}
            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Phone No</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                    <img src="{{ asset('assets/images/icons/call.svg') }}" class="w-5 h-5" alt="icon">
                    <input type="tel" name="phone_number" required
                        class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"
                        placeholder="Write your phone">
                </label>
            </div>

            <button type="submit"
    class="flex w-full justify-center rounded-full p-[14px_20px] font-bold text-white transition-all duration-300"
    style="background-color:  #5abaf1 !important;">
    View My Booking
</button>
        </div>
    </form>
</div>

@include('includes.navigation')
<style>
    /* Mengincar semua label/input yang punya interaksi focus atau hover */
    
    /* 1. Saat kotak input diklik (Focus) */
    .focus-within\:ring-\[\#91BF77\]:focus-within {
        --tw-ring-color: #00A3FF !important;
        ring-color: #00A3FF !important;
    }

    /* 2. Saat kursor menempel (Hover) */
    label:hover {
        border-color: #00A3FF !important;
        --tw-ring-color: #00A3FF !important;
    }

    /* 3. Menangani icon jika dia pakai filter warna */
    label:hover img, label:focus-within img {
        /* Opsional: Membuat icon sedikit lebih cerah saat hover */
        opacity: 0.8;
    }

    /* 4. Pastikan transisi tetap halus */
    label {
        transition: all 0.3s ease !important;
    }
</style>
@endsection
