<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Show extends Model
{
    use HasFactory;
    protected $table = 'shows';
    protected $primaryKey = 'id';


    protected $fillable = [
        'id',
        'date',
        'start_time',
        'end_time',
        'cinema_hall_id',
        'movie_id'
    ];

    public function cinemaHall(){
        return $this->hasMany(CinemaHall::class,'id','cinema_hall_id'); 
    }
    public function movie(){
        return $this->belongsTo(Movie::class,'movie_id','id'); 
    }
    public function showSeats()
    {
        return $this->hasMany(ShowSeat::class,'show_id','id'); 

    }

}
