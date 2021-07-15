<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShowSeat extends Model
{
    use HasFactory;
    protected $table = 'show_seats';
    protected $primaryKey = 'id';
    public $timestamps = false;



    protected $fillable = [
        'id',
        'status',
        'price',
        'cinema_seat_id',
        'show_id',
        'booking_id'
    ];

    public function cinemaSeat(){
        return $this->belongsTo(CinemaSeat::class,'cinema_seat_id','id'); 
    }
    public function show(){
        return $this->belongsTo(Show::class,'show_id','id'); 
    } 
    public function booking(){
        return $this->hasMany(Booking::class,'booking_id','id'); 
    }
}
