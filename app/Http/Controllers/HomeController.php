<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\City;
use App\Models\BoardingHouse;

class HomeController extends Controller
{
    public function index()
    {
        return view('pages.home', [
            // Categories
            'categories' => Category::withCount('boardinghouses')->get(),

            // Popular Kos
            'popolarBoardingHouses' => BoardingHouse::with([
                'city',
                'category',
                'rooms'
            ])
            ->withCount('transactions')
            ->orderByDesc('transactions_count')
            ->limit(5)
            ->get(),

            // Cities ✅ INI YANG KURANG
            'cities' => City::withCount('boardinghouses')->get(),

            // All Boarding Houses
            'boardingHouses' => BoardingHouse::with([
                'city',
                'rooms'
            ])->get(),
        ]);
    }
}
