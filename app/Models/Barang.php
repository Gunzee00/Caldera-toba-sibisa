<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Barang extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'barangs';
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'nama_barang',
        'harga',
        'keterangan',
        'stok',
        'gambar',
    ];

    public function pesanan_detail()
    {
        return $this->belongTo('App\PesananDetail', 'barang_id', 'id');
    }

    public function pesanan() {
        return $this->belongTo(Pesanan::class);
    }
}
