<?php

namespace App\Http\Controllers;

use App\Models\Pesanan;
use Illuminate\Http\Request;
use App\Models\PesananDetail;

class PenjualanTiketController extends Controller
{
    public function indexpenjualan()
    {   
        $pesanan_details = Pesanan::all();
        return view('admin.penjualan_tiket.indexpenjualan', [
            "title" => 'Pesanan | Detail Pemesanan',
        ], compact( 'pesanan_details'));
    }
    
}
