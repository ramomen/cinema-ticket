<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CinemaRequest;
use App\Models\City;
use App\Models\Cinema;
use App\Models\CinemaHall;

class CinemaController extends Controller
{   
    public function _construct(Type $var = null)
    {
        $this->middleware('auth:api')->except('index','show');
    }



    public function index(Request $request)
    {
        $result = Cinema::get();
        return $result;   
    }

    public function show(Request $request, $id)
    {
        $result = CinemaHall::where('cinema_id',$id)->get();
        return $result;
    }


    public function store(CinemaRequest $request)
    {
        $cinema = new Cinema;
        $cinema->name = $request->name;
        $cinema->total_cinema_halls = $request->total_cinema_halls;
        $cinema->city_id = $request->city_id;
        $cinema->save();
        

        return $request->post();
    }
}
