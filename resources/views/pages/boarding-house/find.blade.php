@extends('layouts.app')

@section('content')
    <div id="Background"
    class="absolute top-0 w-full h-[430px] rounded-b-[75px]"
    style="background: linear-gradient(180deg, #E6F4FB 0%, #88cefa 100%);">
        </div>
    <div class="relative flex flex-col gap-[30px] my-[60px] px-5">
        <h1 class="font-bold text-[30px] leading-[45px] text-center">Explore Our<br>Beautiful Koskos</h1>
        <form action="{{ route('find-kos.result') }}" method="GET"
            class="flex flex-col rounded-[30px] border border-[#F1F2F6] p-5 gap-6 bg-white">
            <div id="InputContainer" class="flex flex-col gap-[18px]">
                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Name</p>
                    <label
                        class="flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                        <img src="assets/images/icons/note-favorite-grey.svg" class="w-5 h-5 flex shrink-0"
                            alt="icon">
                        <input type="text" name="search" id=""
                            class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"
                            placeholder="Type the koskos name">
                    </label>
                </div>
                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Choose City</p>
                    <label
                        class="relative flex items-center w-full rounded-full p-[14px_20px] gap-2 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                        <img src="assets/images/icons/location.svg"
                            class="absolute w-5 h-5 flex shrink-0 transform -translate-y-1/2 top-1/2 left-5"
                            alt="icon">
                        <select name="city" id="" class="appearance-none outline-none w-full bg-white pl-8">
                            <option value="" hidden>Select city</option>
                            @foreach ($cities as $city)
                                <option value="{{ $city->slug }}">{{ $city->name }}</option>                                 
                            @endforeach
                        </select>
                        <img src="assets/images/icons/arrow-down.svg" class="w-5 h-5" alt="icon">
                    </label>
                </div>
                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Choose Category</p>
                    <label
                        class="relative flex items-center w-full rounded-full p-[14px_20px] gap-2 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                        <img src="assets/images/icons/location.svg"
                            class="absolute w-5 h-5 flex shrink-0 transform -translate-y-1/2 top-1/2 left-5"
                            alt="icon">
                        <select name="category" id="" class="appearance-none outline-none w-full bg-white pl-8">
                            <option value="" hidden>Select category</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->slug }}">{{ $category->name }}</option>                                 
                            @endforeach
                        </select>
                        <img src="assets/images/icons/arrow-down.svg" class="w-5 h-5" alt="icon">
                    </label>
               </div>
            <button type="submit"
                class="flex w-full justify-center rounded-full p-[14px_20px] bg-ngekos-orange font-bold text-white"
                style="background-color:#5abaf1;">
                Explore Now
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