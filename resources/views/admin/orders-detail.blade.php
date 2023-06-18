@extends('admin.layouts.master')
@section('content')
    <div class="col-md-12">
        <div class="card mt-2">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr>
                            <th>No</th>
                            <th>Gambar Tiket</th>
                            <th>Nama tiket</th>
                            <th>Jumlah</th>
                            <th>Harga</th>
                            <th>Tanggal Tiket</th>
                            <th style="width: 120px">Total Harga</th>

                        </tr>
                        <?php
                        $no = 1;
                        ?>
                        @foreach ($pesanan_details as $pesanan_detail)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>
                                    <img src="{{ url('productimage') }}/{{ $pesanan_detail->tiket->gambar_tiket }}"
                                        style="width: 100px; height:100px;" class="card-img-top" alt="product image" />
                                </td>
                                <td>{{ $pesanan_detail->tiket->jenis_tiket }}</td>
                                <td>{{ $pesanan_detail->jumlah }} buah</td>
                                <td>Rp. {{ number_format($pesanan_detail->tiket->harga) }}</td>
                                <td>{{ $pesanan_detail->pesanan->tanggal_tiket }}</td>
                                <td>Rp. {{ number_format($pesanan_detail->jumlah_harga) }}</td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        @endsection
