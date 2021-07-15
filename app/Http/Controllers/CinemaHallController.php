<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CinemaSeat;
use App\Models\ShowSeat;
use App\Models\CinemaHall;
use App\Models\Movie;
use App\Models\Show;

class CinemaHallController extends Controller
{


    public function show(Request $request, $id)
    {
        $result = Show::where('cinema_hall_id',$id)->with('movie')->with('showSeats')->get();
       // $result = $showList->movie_id->get();
        return $result;

    }

  

    public function movies(Request $request,$id,$movie_id)
    {
       $show_result = Show::where('cinema_hall_id',$id)->where('movie_id',$movie_id)->with('cinemaHall')->get();
       
        return $show_result;

    }

    public function seats(Request $request)
    {
       
    }

    public function cinemaSeats(Request $request)
    {
    }
    public function shows(Request $request,$id)
    {
        $result = Show::where('cinema_hall_id',$id)->with('movie')->get();
        return $result;

    }
}
