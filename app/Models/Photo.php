<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;
    protected $fillable = [
        'gambar_tiket',
        'pesanan_id',
    ];

    public function pesanan2()
    {
        return $this->belongsTo(Pesanan::class, 'pesanan_id', 'id');
    }
}
