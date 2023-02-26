<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promotion extends Model
{
    use HasFactory;

    protected $table = "promotions";

    protected $fillable = [
        'title',
        'price',
        'status',
        'order_id',
        'created_at',
        'created_by',
        'updated_at',
        'updated_by',
    ];


}
