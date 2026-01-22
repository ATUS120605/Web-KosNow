<div id="BottomNav" class="relative flex w-full h-[138px] shrink-0">
    <nav class="fixed bottom-5 w-full max-w-[640px] px-5 z-10">
        <div class="grid grid-cols-4 h-fit rounded-[40px] py-4 px-5 bg-ngekos-black items-end">
            
            <a href="{{ route('home') }}" class="flex flex-col items-center text-center gap-1">
                <div class="flex items-center justify-center h-8">
                    <img src="{{ asset('assets/images/icons/globe.png') }}" 
                         alt="icon"
                         style="width: 28px; height: 28px; filter: {{ request()->routeIs('home') ? 'none' : 'grayscale(100%) brightness(1.2)' }};"
                         class="flex shrink-0">
                </div>
                <span class="font-semibold text-[12px]" 
                      style="color: {{ request()->routeIs('home') ? '#FFFFFF' : '#9CA3AF' }} !important;">
                    Discover
                </span>
            </a>

            <a href="{{ route('check-booking') }}" class="flex flex-col items-center text-center gap-1">
                <div class="flex items-center justify-center h-8">
                    <img src="{{ asset('assets/images/icons/file.png') }}" 
                         alt="icon"
                         style="width: 28px; height: 28px; filter: {{ request()->routeIs('check-booking') ? 'none' : 'grayscale(100%) opacity(0.5)' }};"
                         class="flex shrink-0">
                </div>
                <span class="font-semibold text-[12px]" 
                      style="color: {{ request()->routeIs('check-booking') ? '#FFFFFF' : '#9CA3AF' }} !important;">
                    Orders
                </span>
            </a>

            <a href="{{ route('find-kos') }}" class="flex flex-col items-center text-center gap-1">
                <div class="flex items-center justify-center h-8">
                    <img src="{{ asset('assets/images/icons/magnifying-glass.png') }}" 
                         alt="icon"
                         style="width: 28px; height: 28px; filter: {{ request()->routeIs('find-kos') ? 'none' : 'grayscale(100%) opacity(0.5)' }};"
                         class="flex shrink-0">
                </div>
                <span class="font-semibold text-[12px]" 
                      style="color: {{ request()->routeIs('find-kos') ? '#FFFFFF' : '#9CA3AF' }} !important;">
                    Find
                </span>
            </a>

            <a href="#" class="flex flex-col items-center text-center gap-1">
                <div class="flex items-center justify-center h-8">
                    <img src="{{ asset('assets/images/icons/help-desk.png') }}" 
                         alt="icon"
                         style="width: 28px; height: 28px; filter: grayscale(100%) opacity(0.5);" 
                         class="flex shrink-0">
                </div>
                <span class="font-semibold text-[12px]" 
                      style="color: #9CA3AF !important;">
                    Help
                </span>
            </a>

        </div>
    </nav>
</div>