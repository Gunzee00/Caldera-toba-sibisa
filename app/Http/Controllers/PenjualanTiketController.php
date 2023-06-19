<?php

namespace App\Http\Controllers;

use App\Models\Pesanan;
use Illuminate\Http\Request;
use App\Models\PesananDetail;
use Illuminate\Support\Facades\Auth;

class PenjualanTiketController extends Controller
{
    public function indexpenjualan()
    {
        $pesanan_details = Pesanan::where('user_id', Auth::user()->id)->where('status', '!=', 0)->get()->sortByDesc('updated_at');
        $pesanan_details = Pesanan::all();
        $pesanan_details = Pesanan::paginate(10); // Menampilkan 10 data per halaman
        return view('admin.penjualan_tiket.indexpenjualan', [
            "title" => 'Pesanan | Detail Pemesanan',
        ], compact('pesanan_details'));
    }
}
