<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'payments';
    protected $primaryKey = 'id';



    protected $fillable = [
        'id',
        'amount',
        'timestamp',
        'discount_count_id',
        'remote_transaction_id',
        'payment_method',
        'booking_id'
    ];

    public function booking(){
        return $this->hasMany(Booking::class,'booking_id','id'); 
    }


}
