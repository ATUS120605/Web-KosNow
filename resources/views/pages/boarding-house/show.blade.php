@extends ('layouts.app')


@section('content')


<div id="Content-Container"
        class="relative flex flex-col w-full max-w-[640px] min-h-screen mx-auto bg-white overflow-x-hidden">
        <div id="ForegroundFade"
            class="absolute top-0 w-full h-[143px] bg-[linear-gradient(180deg,#070707_0%,rgba(7,7,7,0)_100%)] z-10">
        </div>
        <div id="TopNavAbsolute" class="absolute top-[60px] flex items-center justify-between w-full px-5 z-10">
            <a href="{{route('home')}}"
                class="w-12 h-12 flex items-center justify-center shrink-0 rounded-full overflow-hidden bg-white/10 backdrop-blur-sm">
                <img src="{{ asset('assets/images/icons/arrow-left-transparent.svg') }}" class="w-8 h-8" alt="icon">
            </a>
            <p class="font-semibold text-white">Details</p>
            <button
                class="w-12 h-12 flex items-center justify-center shrink-0 rounded-full overflow-hidden bg-white/10 backdrop-blur-sm">
                <img src="{{ asset('assets/images/icons/like.svg') }}" class="w-[26px] h-[26px]" alt="">
            </button>
        </div>
       <div id="Gallery" class="swiper swiper-gallery w-full overflow-hidden -mb-[38px]">
    <div class="swiper-wrapper">
        @foreach ($boardingHouse->rooms as $room)
            @foreach ($room->roomImages as $image)
                <div class="swiper-slide !w-fit">
                    <div class="flex w-[320px] h-[430px] overflow-hidden rounded-xl">
                        <img src="{{ asset('storage/' . $image->image) }}"
                             class="w-full h-full object-cover"
                             alt="gallery thumbnails">
                    </div>
                </div>
            @endforeach
        @endforeach
    </div>
</div>

        <main id="Details" class="relative flex flex-col rounded-t-[40px] py-5 pb-[10px] gap-4 bg-white z-10">
            <div id="Title" class="flex items-center justify-between gap-2 px-5">
                <h1 class="font-bold text-[22px] leading-[33px]">{{ $boardingHouse->name }}</h1>
                <div
                    class="flex flex-col items-center text-center shrink-0 rounded-[22px] border border-[#F1F2F6] p-[10px_20px] gap-2 bg-white">
                    <img src="{{ asset('assets/images/icons/star.svg') }}" class="w-6 h-6" alt="icon">
                    <p class="font-bold text-sm">4/5</p>
                </div>
            </div>
            <hr class="border-[#F1F2F6] mx-5">
            <div id="Features" class="grid grid-cols-2 gap-x-[10px] gap-y-4 px-5">
                <div class="flex items-center gap-[6px]">
                    <img src="{{ asset('assets/images/icons/location.svg') }}" class="w-[26px] h-[26px] flex shrink-0" alt="icon">
                    <p class="text-ngekos-grey">Kota {{ $boardingHouse->city->name }}</p>
                </div>
                <div class="flex items-center gap-[6px]">
                    <img src="{{ asset('assets/images/icons/3dcube.svg') }}" class="w-[26px] h-[26px] flex shrink-0" alt="icon">
                    <p class="text-ngekos-grey">In  {{ $boardingHouse->category->name }}</p>
                </div>
                <div class="flex items-center gap-[6px]">
                    <img src="{{ asset('assets/images/icons/profile-2user.svg') }}" class="w-[26px] h-[26px] flex shrink-0" alt="icon">
                    <p class="text-ngekos-grey">4 People</p>
                </div>
                <div class="flex items-center gap-[6px]">
                    <img src="{{ asset('assets/images/icons/shield-tick.svg') }}" class="w-[26px] h-[26px] flex shrink-0" alt="icon">
                    <p class="text-ngekos-grey">Privacy 100%</p>
                </div>
            </div>
            <hr class="border-[#F1F2F6] mx-5">
            <div id="About" class="flex flex-col gap-[6px] px-5">
                <h2 class="font-bold">About</h2>
                <p class="leading-[30px]">{!! $boardingHouse->description !!}</p>
            </div>
            <div id="Tabs" class="swiper-tab w-full overflow-x-hidden">
                <div class="swiper-wrapper">
                    <div class="swiper-slide !w-fit">
                        <button
                            class="tab-link rounded-full p-[8px_14px] border border-[#F1F2F6] text-sm font-semibold hover:bg-ngekos-black hover:text-white transition-all duration-300 !bg-ngekos-black !text-white"
                            data-target-tab="#Bonus-Tab">Bonus Kos</button>
                    </div>
                    <div class="swiper-slide !w-fit">
                        <button
                            class="tab-link rounded-full p-[8px_14px] border border-[#F1F2F6] text-sm font-semibold hover:bg-ngekos-black hover:text-white transition-all duration-300"
                            data-target-tab="#Testimonials-Tab">Testimonials</button>
                    </div>
                    <div class="swiper-slide !w-fit">
                        <button
                            class="tab-link rounded-full p-[8px_14px] border border-[#F1F2F6] text-sm font-semibold hover:bg-ngekos-black hover:text-white transition-all duration-300"
                            data-target-tab="#Rules-Tab">Rules</button>
                    </div>
                    <div class="swiper-slide !w-fit">
                        <button
                            class="tab-link rounded-full p-[8px_14px] border border-[#F1F2F6] text-sm font-semibold hover:bg-ngekos-black hover:text-white transition-all duration-300"
                            data-target-tab="#Contact-Tab">Contact</button>
                    </div>
                    <div class="swiper-slide !w-fit">
                        <button
                            class="tab-link rounded-full p-[8px_14px] border border-[#F1F2F6] text-sm font-semibold hover:bg-ngekos-black hover:text-white transition-all duration-300"
                            data-target-tab="#Rewards-Tab">Rewards</button>
                    </div>
                </div>
            </div>
            <div id="TabsContent" class="px-5">
                <div id="Bonus-Tab" class="tab-content flex flex-col gap-5">
                    <div class="flex flex-col gap-4">
                        @foreach ($boardingHouse->bonuses as $bonus)
                            <div
                                class="bonus-card flex items-center rounded-[22px] border border-[#F1F2F6] p-[10px] gap-3 hover:border [#00A3FF] transition-all duration-300">
                                <div class="flex w-[120px] h-[90px] shrink-0 rounded-[18px] bg-[#D9D9D9] overflow-hidden">
                                    <img src="{{ asset('storage/' . $bonus->image) }}" class="w-full h-full object-cover"
                                        alt="thumbnails">
                                </div>
                                <div>
                                    <p class="font-semibold">{{ $bonus->name }}</p>
                                    <p class="text-sm text-ngekos-grey">{{ $bonus->description }}</p>
                                </div>
                            </div>
                            
                        @endforeach
                    </div>
                </div>
                <div id="Testimonials-Tab" class="tab-content flex-col gap-5 hidden">
    <div class="flex flex-col gap-4">
        @foreach ($boardingHouse->testimonials as $testimonial)
            {{-- Hapus </div> nyasar yang tadi ada di sini --}}
            <div class="testi-card flex flex-col rounded-[22px] border border-[#F1F2F6] p-4 gap-3 bg-white hover:border-[#00A3FF] transition-all duration-300">
                <div class="flex items-center gap-3">
                    <div class="w-[70px] h-[70px] flex shrink-0 rounded-full border-4 border-white ring-1 ring-[#F1F2F6] overflow-hidden">
                        <img src="{{ asset('storage/' . $testimonial->photo) }}" class="w-full h-full object-cover" alt="icon">
                    </div>
                    <div>
                        <p class="font-semibold">{{ $testimonial->name }}</p>
                        <p class="mt-[2px] text-sm text-ngekos-grey">{{ $testimonial->created_at->format('d F Y') }}</p>
                    </div>
                </div>
                <p class="leading-[26px]">{{ $testimonial->content }}</p>
                <div class="flex">
                    @for ($i = 0; $i < $testimonial->rating; $i++)
                        <img src="{{ asset('assets/images/icons/Star 1.svg') }}" class="w-[22px] h-[22px] flex shrink-0" alt="">
                    @endfor
                </div>
            </div>
        @endforeach
    </div>
</div>
              <div id="Rules-Tab" class="tab-content flex-col gap-5 hidden">
    <ul class="list-disc pl-5 space-y-2">
        <li>1. Tamu wajib menunjukkan identitas diri (KTP/SIM/Paspor) saat check-in.</li>
        <li>2. Waktu check-in mulai pukul 14.00 dan check-out maksimal pukul 12.00.</li>
        <li>3. Dilarang membawa tamu tambahan tanpa izin pengelola.</li>
        <li>4. Dilarang merokok di dalam kamar.</li>
        <li>5. Dilarang membawa minuman keras, narkoba, atau barang terlarang.</li>
        <li>6. Menjaga kebersihan dan fasilitas penginapan.</li>
        <li>7. Kerusakan fasilitas menjadi tanggung jawab tamu.</li>
        <li>8. Harap menjaga ketenangan, terutama setelah pukul 22.00.</li>
        <li>9. Hewan peliharaan tidak diperbolehkan.</li>
    </ul>
</div>
                
              <div id="Contact-Tab" class="tab-content flex-col gap-5 hidden">
    <div class="flex flex-col gap-4">
        <div>
            <p class="font-semibold">Nama Pengelola</p>
            <p>Ibu Atus</p>
        </div>

        <div>
            <p class="font-semibold">Nomor WhatsApp</p>
            <p>08xxxxxxxxxx</p>
        </div>

        <div>
            <p class="font-semibold">Email</p>
            <p>KosNow@gmail.com</p>
        </div>

        <div>
            <p class="font-semibold">Alamat</p>
            <p>Banjarmasin, Kalimantan Selatan</p>
        </div>

        <div>
            <p class="font-semibold">Jam Operasional</p>
            <p>08.00 – 22.00 WITA</p>
        </div>
    </div>
</div>
    
<div id="Rewards-Tab" class="tab-content flex-col gap-5 hidden">
    <div class="flex flex-col gap-4">
        <div>
            <p class="font-semibold">🎁 Diskon Menginap</p>
            <p>Dapatkan potongan harga 10% untuk pemesanan minimal 3 malam.</p>
        </div>

        <div>
            <p class="font-semibold">⭐ Tamu Loyal</p>
            <p>Gratis 1 malam setelah 5 kali menginap.</p>
        </div>

        <div>
            <p class="font-semibold">☕ Fasilitas Gratis</p>
            <p>Kopi dan teh gratis setiap hari selama menginap.</p>
        </div>

        <div>
            <p class="font-semibold">🚀 Prioritas Booking</p>
            <p>Tamu tetap mendapatkan prioritas saat kamar hampir penuh.</p>
        </div>

        <div>
            <p class="font-semibold">🎉 Promo Musiman</p>
            <p>Diskon spesial saat libur panjang dan hari besar.</p>
        </div>
    </div>
</div>

        
        </main>
        <div id="BottomNav" class="relative flex w-full h-[138px] shrink-0" style="z-index: 999;">
            <div class="fixed bottom-5 w-full max-w-[640px] px-5" style="z-index: 999;">
                <div class="flex items-center justify-between rounded-[40px] py-4 px-6 shadow-2xl" 
                     style="background-color: #070707 !important; display: flex !important;">
                    
                    <p class="font-bold text-xl leading-[30px]" style="color: #6ec8fc !important;">
                        Rp {{ number_format($boardingHouse->price, 0, ',', '.') }}
                        <br>
                        <span class="text-sm font-normal text-white">/bulan</span>
                    </p>

                    <a href="{{ route('boarding-house.rooms', ['slug' => $boardingHouse->slug]) }}"
                       class="flex shrink-0 rounded-full py-[14px] px-5 font-bold text-white transition-all"
                       style="background-color: #5abaf1 !important;">
                       Book Now
                    </a>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- Init Swiper -->
    <script>
        new Swiper('.swiper-gallery', {
            slidesPerView: 'auto',
            spaceBetween: 16,
            freeMode: true,
            grabCursor: true,
        });
    </script>

    <!-- Script bawaan kamu -->
    <script src="{{ asset('assets/js/details.js') }}"></script>

    <style>
    /* Memaksa warna border menjadi biru saat di-hover */
    .testi-card:hover, .bonus-card:hover {
        border-color: #00A3FF !important;
    }

    /* Memastikan transisi tetap halus */
    .testi-card, .bonus-card {
        transition: border-color 0.3s ease !important;
    }
</style>
@endsection