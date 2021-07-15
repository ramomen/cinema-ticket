<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\City;
use App\Models\Cinema;

class CityController extends Controller
{
    public function index (Request $request)
    {
       return City::all(); 
              // api/cities/
    }

    public function show(Request $request, $id)
    {
        $result = Cinema::where('city_id',$id)->get();
        return $result; 
             // api/cities/{id}
    }
}
