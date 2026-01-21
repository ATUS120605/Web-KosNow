@extends('layouts.app')

@section('content')
  <div id="Background"
    class="absolute top-0 w-full h-[230px] rounded-b-[75px]"
    style="background: linear-gradient(180deg, #E6F4FB 0%, #88cefa 100%);">
</div>
    <div id="TopNav" class="relative flex items-center justify-between px-5 mt-[60px]">
        <a href="{{ route('boarding-house.rooms', $boardingHouse->slug) }}"
            class="w-12 h-12 flex items-center justify-center shrink-0 rounded-full overflow-hidden bg-white">
            <img src="{{ asset('assets/images/icons/arrow-left.svg') }}" class="w-[28px] h-[28px]" alt="icon">
        </a>
        <p class="font-semibold">Customer Information</p>
        <div class="dummy-btn w-12"></div>
    </div>
    <div id="Header" class="relative flex items-center justify-between gap-2 px-5 mt-[18px]">
        <div class="flex flex-col w-full rounded-[30px] border border-[#F1F2F6] p-4 gap-4 bg-white">
            <div class="flex gap-4">
                <div class="flex w-[120px] h-[132px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                    <img src="{{ asset('storage/' . $boardingHouse->thumbnail) }}" class="w-full h-full object-cover" alt="icon">
                </div>
                <div class="flex flex-col gap-3 w-full">
                    <p class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">{{ $boardingHouse->name }}</p>
                    <hr class="border-[#F1F2F6]">
                    <div class="flex items-center gap-[6px]">
                        <img src="{{ asset('assets/images/icons/location.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                        <p class="text-sm text-ngekos-grey">Kota {{ $boardingHouse->city->name }}</p>
                    </div>
                    <div class="flex items-center gap-[6px]">
                        <img src="{{ asset('assets/images/icons/profile-2user.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                        <p class="text-sm text-ngekos-grey">In {{ $boardingHouse->category->name }}</p>
                    </div>
                </div>
            </div>
            <hr class="border-[#F1F2F6]">
            <div class="flex gap-4">
                <div class="flex w-[120px] h-[156px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                    <img src="{{ asset('storage/' . ($room->roomImages->first()->image ?? '')) }}" class="w-full h-full object-cover" alt="icon">
                </div>
                <div class="flex flex-col gap-3 w-full">
                    <p class="font-semibold text-lg leading-[27px]">{{ $room->name }}</p>
                    <hr class="border-[#F1F2F6]">
                    <div class="flex items-center gap-[6px]">
                        <img src="{{ asset('assets/images/icons/profile-2user.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                        <p class="text-sm text-ngekos-grey">{{ $room->capacity }} People</p>
                    </div>
                    <div class="flex items-center gap-[6px]">
                        <img src="{{ asset('assets/images/icons/3dcube.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                        <p class="text-sm text-ngekos-grey">{{ $room->square_feet }} sqft flat</p>
                  </div>
                    <hr class="border-[#F1F2F6]">
                    {{-- Harga Jadi Biru --}}
                    <p class="font-semibold text-lg" style="color:  #6ec8fc!important;">
                        Rp {{ number_format($room->price_per_month, 0, ',', '.') }}
                        <span class="text-sm text-ngekos-grey font-normal">/bulan</span>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <form action="{{ route('booking.information.save', ['slug' => $boardingHouse->slug]) }}" method="POST">
        @csrf
        <div class="flex flex-col gap-[6px] px-5">
            <h1 class="font-semibold text-lg">Your Informations</h1>
            <p class="text-sm text-ngekos-grey">Fill the fields below with your valid data</p>
        </div>

        <div id="InputContainer" class="flex flex-col gap-[18px]">

         {{-- Name --}}
            <div class="flex flex-col w-full gap-2 px-5">
                <p class="font-semibold">Complete Name</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white focus-within:ring-1 focus-within:ring-[#00A3FF] transition-all duration-300 @error('name') border border-red-500 @enderror">
                    <img src="{{ asset('assets/images/icons/profile-2user.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                    <input type="text" name="name" class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal" placeholder="Write your name" value="{{ old('name') }}">
                </label>
               {{-- Ganti setiap blok @error dengan ini --}}
        @error('name')
            <p style="color: #ef4444 !important; font-size: 0.875rem; margin-top: 0.25rem; font-weight: 500;">
                {{ $message }}
            </p>
        @enderror
            </div>

            {{-- Email --}}
            <div class="flex flex-col w-full gap-2 px-5">
                <p class="font-semibold">Email Address</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white focus-within:ring-1 focus-within:ring-[#00A3FF] transition-all duration-300 @error('email') border border-red-500 @enderror">
                    <img src="{{ asset('assets/images/icons/sms.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                    <input type="email" name="email" class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal" placeholder="Write your email" value="{{ old('email') }}">
                </label>
               {{-- Ganti setiap blok @error dengan ini --}}
            @error('email')
                <p style="color: #ef4444 !important; font-size: 0.875rem; margin-top: 0.25rem; font-weight: 500;">
                    {{ $message }}
                </p>
            @enderror
            </div>

            {{-- Phone --}}
            <div class="flex flex-col w-full gap-2 px-5">
                <p class="font-semibold">Phone No</p>
                <label class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white focus-within:ring-1 focus-within:ring-[#00A3FF] transition-all duration-300 @error('phone') border border-red-500 @enderror">
                    <img src="{{ asset('assets/images/icons/call.svg') }}" class="w-5 h-5 flex shrink-0" alt="icon">
                    <input type="tel" name="phone_number" class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal" placeholder="Write your phone" value="{{ old('phone') }}">
                </label>
               {{-- Ganti setiap blok @error dengan ini --}}
            @error('name')
                <p style="color: #ef4444 !important; font-size: 0.875rem; margin-top: 0.25rem; font-weight: 500;">
                    {{ $message }}
                </p>
            @enderror
            </div>

            {{-- Duration --}}
            <div class="flex items-center justify-between px-5">
                <p class="font-semibold">Duration in Month</p>
                <div class="relative flex items-center gap-[10px] w-fit">
                    <button type="button" id="Minus" class="w-12 h-12 flex-shrink-0">
                        <img src="{{ asset('assets/images/icons/minus.svg') }}" alt="icon">
                    </button>
                    <input id="Duration" type="text" value="1" name="duration" class="appearance-none outline-none !bg-transparent w-[42px] text-center font-semibold text-[22px] leading-[33px]" inputmode="numeric" pattern="[0-9]*">
                    <button type="button" id="Plus" class="w-12 h-12 flex-shrink-0">
                        <img src="{{ asset('assets/images/icons/plus.svg') }}" alt="icon">
                    </button>
                </div>
                @error('duration')
                    <p class="text-red-500 text-sm mt-1 px-5">{{ $message }}</p>
                @enderror
            </div>

            {{-- Start Date --}}
            <div class="flex flex-col gap-2">
                <p class="font-semibold px-5">Moving Date</p>
                <div class="swiper w-full overflow-x-hidden">
                    <div class="swiper-wrapper select-dates"></div>
                </div>
                @error('start_date')
                    <p class="text-red-500 text-sm mt-1 px-5">{{ $message }}</p>
                @enderror
            </div>

        </div>

       <div id="BottomNav" class="relative flex w-full h-[132px] shrink-0" style="background-color: transparent;">
    <div class="fixed bottom-5 w-full max-w-[640px] px-5" style="z-index: 9999;">
        <div class="flex items-center justify-between rounded-[40px] py-4 px-6" 
             style="background-color: #070707 !important; display: flex !important;">
            
            <div class="flex flex-col gap-[2px]">
                <p id="price" class="font-bold text-xl leading-[30px]" style="color:  #6ec8fc !important;"></p>
                <span class="text-sm text-white">Grand Total</span>
            </div>

            <button type="submit" 
                class="flex shrink-0 rounded-full py-[14px] px-5 font-bold text-white"
                style="background-color: #5abaf1 !important;">
                Book Now
            </button>
        </div>
    </div>
</div>
        </div>
    </form>
@endsection

@section('scripts')
<script>
    const defaultPrice = {{ $room->price_per_month }};
</script>
<script src="{{ asset('assets/js/cust-info.js') }}"></script>
 
<style>
    /* Efek Hover: Saat kursor di atas kotak tanggal */
    .date-card:hover {
        border-color: #00A3FF !important;
        background-color: #F0F9FF !important;
    }

    /* Efek Selected: Saat radio button di dalamnya tercentang */
    .date-card:has(.date-input:checked) {
        border-color: #00A3FF !important;
        background-color: #E6F4FB !important;
        box-shadow: 0 0 0 2px #00A3FF; /* Memberikan efek ring biru */
    }

    /* Warna Teks Biru saat Hover atau Selected */
    .date-card:hover p,
    .date-card:has(.date-input:checked) p {
        color: #00A3FF !important;
    }

    /* Transisi Halus */
    .date-card {
        transition: all 0.2s ease-in-out !important;
    }
</style>
@endsection
