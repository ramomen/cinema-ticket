<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\BookingRequest;
use App\Models\ShowSeat;
use App\Models\Booking;
use Carbon\Carbon;

class BookingController extends Controller
{
    public function store(BookingRequest $request)
    {
        $booking = new Booking;
        $booking->number_of_seats = $request->number_of_seats;
        $booking->timestamp = Carbon::now();
        $booking->status = $request->status;
        $booking->user_id = $request->user_id;
        $booking->show_id = $request->show_id;
        $booking->save();
        
        $showSeat = ShowSeat::where('show_id', $request->show_id)->where('cinema_seat_id', $request->number_of_seats);
        $showSeat->update(array('status' => $request->status));
        $showSeat->update(array('booking_id' => $booking->id));
        
        return $booking->id;
    }
}
