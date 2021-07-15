<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CinemaSeat extends Model
{
    use HasFactory;
    protected $table = 'cinema_seats';
    protected $primaryKey = 'id';
    public $timestamps = false;



    protected $fillable = [
        'id',
        'seat_number',
        'type',
        'cinema_hall_id'
    ];

    public function cinemaHall(){
        return $this->hasMany(CinemaHall::class,'cinema_hall_id','id'); 
    }

}
