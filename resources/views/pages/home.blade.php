@extends('layouts.app')

@section('content')
    <style>
        .custom-hover-blue:hover {
            border-color: #87CEEB !important;
        }
    </style>

    <div id="Background"
        class="absolute top-0 w-full h-[280px] rounded-bl-[75px]"
        style="background: linear-gradient(180deg, #B0E0E6 0%, #87CEEB 100%);">
    </div>

    <div id="TopNav" class="relative flex items-center justify-between px-5 mt-[60px]">
        <div class="flex flex-col gap-1">
            <p>Good day,</p>
            <h1 class="font-bold text-xl leading-[30px]">Explore Cozy Home</h1>
        </div>
       <a href="{{ route('check-booking') }}"
    class="w-12 h-12 flex items-center justify-center shrink-0 rounded-full overflow-hidden bg-white shadow-sm hover:bg-gray-50 transition-all">
    <img src="assets/images/icons/notification.svg" class="w-[28px] h-[28px]" alt="icon">
</a>
    </div>
    

    <div id="Categories" class="swiper w-full overflow-x-hidden mt-[30px]">
        <div class="swiper-wrapper">
            @foreach($categories as $category)
                <div class="swiper-slide !w-fit pb-[30px]">
                    <a href="{{ route('category.show', $category->slug) }}" class="card">
                        <div class="flex flex-col items-center w-[120px] shrink-0 rounded-[40px] p-4 pb-5 gap-3 bg-white shadow-[0px_12px_30px_0px_#0000000D] text-center transition-all duration-300"
     style="border: 2px solid transparent; cursor: pointer;"
     onmouseover="this.style.border='2px solid #00A3FF'" 
     onmouseout="this.style.border='2px solid transparent'">
                            <div class="w-[70px] h-[70px] rounded-full flex shrink-0 overflow-hidden">
                                <img src="{{ asset('storage/' . $category->image) }}" class="w-full h-full object-cover"
                                    alt="thumbnail">
                            </div>
                            <div class="flex flex-col gap-[2px]">
                                <h3 class="font-semibold">{{ $category->name }}</h3>
                                <p class="text-sm text-ngekos-grey">{{ $category->boardinghouses->count() ?? 0 }} Kos</p>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>

    <section id="Popular" class="flex flex-col gap-4">
        <div class="flex items-center justify-between px-5">
            <h2 class="font-bold">Popular Kos</h2>
            <a href="{{ route('find-kos.result') }}">
            <div class="flex items-center gap-2">
                <span>See all</span>
                <img src="assets/images/icons/arrow-right.svg" class="w-6 h-6 flex shrink-0" alt="icon">
            </div>
        </a>
                </div>
        <div class="swiper w-full overflow-x-hidden">
            <div class="swiper-wrapper">
                @forelse($popolarBoardingHouses as $boarding)
                    <div class="swiper-slide !w-fit">
                        <a href="{{ route ('boarding-house.show', ['slug' => $boarding->slug]) }}" class="card">
                            <div
                                class="custom-hover-blue flex flex-col w-[250px] shrink-0 rounded-[30px] border border-[#F1F2F6] p-4 pb-5 gap-[10px] transition-all duration-300">
                                <div class="flex w-full h-[150px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                                    <img src="{{ asset('storage/' . $boarding->thumbnail) }}" class="w-full h-full object-cover"
                                        alt="thumbnail">
                                </div>
                                <div class="flex flex-col gap-3">
                                    <h3 class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">{{ $boarding->name }}</h3>
                                    <hr class="border-[#F1F2F6]">
                                    <div class="flex items-center gap-[6px]">
                                        <img src="assets/images/icons/location.svg" class="w-5 h-5 flex shrink-0"
                                            alt="icon">
                                        <p class="text-sm text-ngekos-grey">{{ $boarding->city->name }}</p>
                                    </div>
                                    <div class="flex items-center gap-[6px]">
                                        <img src="assets/images/icons/3dcube.svg" class="w-5 h-5 flex shrink-0"
                                            alt="icon">
                                        <p class="text-sm text-ngekos-grey">{{ $boarding->category->name }}</p>
                                    </div>
                                    <div class="flex items-center gap-[6px]">
                                        <img src="assets/images/icons/profile-2user.svg" class="w-5 h-5 flex shrink-0"
                                            alt="icon">
                                        <p class="text-sm text-ngekos-grey">{{ $boarding->rooms->count() }} Rooms</p>
                                    </div>
                                   <hr class="border-[#F1F2F6]">
                                    <p class="font-semibold text-lg" style="color:  #6ec8fc;">
                                        Rp {{ number_format($boarding->price, 0, ',', '.') }}
                                        <span class="text-sm text-ngekos-grey font-normal">/bulan</span>
                                    </p>
                                    </div>
                                </div>
                        </a>
                    </div>
                @empty
                    <div class="px-5">
                        <p class="text-ngekos-grey">No boarding houses available</p>
                    </div>
                @endforelse
            </div>
        </div>
    </section>

 <section id="Cities" style="padding: 24px 20px; background-color: #FFFFFF; margin-top: 20px; border-radius: 32px 32px 0 0;">
    
    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px;">
        <h2 style="font-weight: 700; font-size: 16px; color: #141414; margin: 0;">Browse Cities</h2>
        
        <a href="{{ route('find-kos.result') }}" style="text-decoration: none; display: flex; align-items: center; gap: 6px;">
            <span style="font-size: 14px; font-weight: 600; color: #7F8187;">See all</span>
            <img src="{{ asset('assets/images/icons/arrow-right.svg') }}" 
                 style="width: 24px; height: 24px; flex-shrink: 0;" 
                 alt="icon">
        </a>
    </div>

    <div id="cityList" style="display: flex; flex-direction: column; gap: 12px;">
        @foreach($cities as $index => $city)
            <a href="{{ route('city.show', ['slug' => $city->slug]) }}" 
               class="city-item"
               style="text-decoration: none; color: inherit; {{ $index >= 3 ? 'display: none;' : '' }}">
                
                <div class="city-card" style="display: flex; align-items: center; justify-content: space-between; padding: 14px; background: #FFFFFF; border-radius: 20px; border: 2px solid transparent; transition: all 0.2s ease; box-shadow: 0 4px 6px rgba(0,0,0,0.02);">
                    <div style="display: flex; align-items: center; gap: 16px;">
                        <div style="width: 52px; height: 52px; flex-shrink: 0; border-radius: 16px; overflow: hidden;">
                            <img src="{{ asset('storage/' . $city->image) }}" 
                                 style="width: 100%; height: 100%; object-fit: cover;" 
                                 alt="{{ $city->name }}">
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <h3 style="font-weight: 700; font-size: 15px; color: #141414; margin: 0;">{{ $city->name }}</h3>
                            <p style="font-size: 12px; color: #878C94; margin: 2px 0 0 0;">{{ $city->boardinghouses->count() }} Kos tersedia</p>
                        </div>
                    </div>
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#D1D5DB" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M9 18l6-6-6-6"></path>
                    </svg>
                </div>
            </a>
        @endforeach
    </div>

    @if($cities->count() > 3)
    <div style="display: flex; justify-content: center; margin-top: 16px;">
        <button id="toggleBtn" onclick="toggleCities()" 
                style="width: 100%; padding: 12px; border: none; background: #FFFFFF; border-radius: 16px; color: #007BFF; cursor: pointer; display: flex; align-items: center; justify-content: center; box-shadow: 0 4px 6px rgba(0,0,0,0.02);">
            <svg id="btnIcon" style="transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1); color: #007BFF;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                <path d="M6 9l6 6 6-6"></path>
            </svg>
        </button>
    </div>
    @endif

    <style>
        .city-card:hover {
            border-color: #007BFF !important;
            transform: translateY(-2px);
        }
        .rotate-180 {
            transform: rotate(180deg);
        }
    </style>

    <script>
        function toggleCities() {
            const items = document.querySelectorAll('.city-item');
            const btnIcon = document.getElementById('btnIcon');
            let isExpanded = btnIcon.classList.contains('rotate-180');

            items.forEach((item, index) => {
                if (index >= 3) {
                    item.style.display = isExpanded ? 'none' : 'block';
                }
            });

            if (isExpanded) {
                btnIcon.classList.remove('rotate-180');
            } else {
                btnIcon.classList.add('rotate-180');
            }
        }
    </script>
</section>

    <section id="Best" class="flex flex-col gap-4 px-5 mt-[30px]">
        <div class="flex items-center justify-between">
            <h2 class="font-bold">All Great KosNow</h2>
            <a href="{{ route('find-kos.result') }}">
    <div class="flex items-center gap-2 hover:opacity-70 transition-all">
        <span class="text-sm font-medium">See all</span>
        <img src="assets/images/icons/arrow-right.svg" class="w-6 h-6 flex shrink-0" alt="icon">
    </div>
</a>
        </div>
        <div class="flex flex-col gap-4">
            @forelse($boardingHouses as $boarding)
                <a href="{{ route ('boarding-house.show', ['slug' => $boarding->slug]) }}" class="card">
                    <div
                        class="custom-hover-blue flex rounded-[30px] border border-[#F1F2F6] p-4 gap-4 bg-white transition-all duration-300">
                        <div class="flex w-[120px] h-[183px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                            <img src="{{ asset('storage/' . $boarding->thumbnail) }}" class="w-full h-full object-cover" alt="thumbnail">
                        </div>
                        <div class="flex flex-col gap-3 w-full">
                            <h3 class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">{{ $boarding->name }}</h3>
                            <hr class="border-[#F1F2F6]">
                            <div class="flex items-center gap-[6px]">
                                <img src="assets/images/icons/location.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                                <p class="text-sm text-ngekos-grey">{{ $boarding->city->name }}</p>
                            </div>
                            <div class="flex items-center gap-[6px]">
                                <img src="assets/images/icons/profile-2user.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                                <p class="text-sm text-ngekos-grey">{{ $boarding->rooms->count() }} Rooms</p>
                            </div>
                            <hr class="border-[#F1F2F6]">
                            <p class="font-semibold text-lg" style="color:  #6ec8fc;">
                                Rp {{ number_format($boarding->price, 0, ',', '.') }}
                                <span class="text-sm text-ngekos-grey font-normal">/bulan</span>
                            </p>
                        </div>
                    </div>
                </a>
            @empty
                <div class="text-center">
                    <p class="text-ngekos-grey">No boarding houses available</p>
                </div>
            @endforelse
        </div>
    </section>

    @include('includes.navigation')

    
@endsection