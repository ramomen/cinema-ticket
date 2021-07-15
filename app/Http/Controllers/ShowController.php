<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Show;
use App\Models\ShowSeat;
use App\Models\CinemaSeat;
use App\Models\CinemaHall;

class ShowController extends Controller
{
    public function show(Request $request,$id)
    {
        $result = Show::where('id',$id)->with('movie')->with('showSeats:id,status,price,cinema_seat_id,show_id')->get();

        //$result = ShowSeat::where('show_id',$id)->with('show')->with('cinemaSeat')->get();
        return $result;
         
    }
   
}
