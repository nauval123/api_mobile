<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\misi;

class apiController extends Controller
{
    public function get_all_misi(){
        return response()->json(misi::all(),200);
    }

    public function all_easy_misi(){
        return response()->json(misi::where('tingkat','easy')->get(),200);
    }

    public function all_medium_misi(){
        return response()->json(misi::where('tingkat','medium')->get(),200);
    }

    public function all_hard_misi(){
        return response()->json(misi::where('tingkat','hard')->get(),200);
    }

}
