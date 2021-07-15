<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ShowSeat;
use App\Models\CinemaSeat;
class ShowSeatController extends Controller
{
    public function _contructor(Request $request)
    {
       $this->middleware('auth:api');
    }

    public function show(Request $request,$id)
    {
        $result = ShowSeat::where('id',$id)->with('cinemaSeat')->get();
        return $result; 
    }
}
