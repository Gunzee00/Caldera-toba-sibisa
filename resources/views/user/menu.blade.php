@extends('user.layouts.app')
@section('title')
    List Menu
@endsection
@section('content')
    <div class="container ">
        <div class="row">
          <h3>Tiket</h3>
          <hr></hr>
          @foreach ($dataMenu as $tiket)
          <div class="card row-sm-4" style="border: 1px solid rgb(1, 1, 1); margin:5px; width:350px; height:auto;justify-content:center; align-items:center;">
              <div style="position:relative; width:300px; height:200px;">
                  <img src="{{ url('productimage') }}/{{ $tiket->gambar }}" class="card-img-top" alt="{{ $tiket->gambar }}" style="position:absolute; width:100%; height:100%; object-fit:cover;"/>
              </div>
              <div class="card-body">
                  <h5 class="card-title">{{ $tiket->jenis_tiket }}</h5>
                  <p class="card-text">
                      <strong>Harga :</strong> Rp.{{ number_format($tiket->harga) }} <br>
                      <strong>Stok :</strong> {{ $tiket->stok }} <br>
                      <hr>
                      <strong>Keterangan : {{ $tiket->keterangan }}</strong> <br>
                  </p>
                  @if($tiket->stok <= 0)
                      <p class="text-danger">*Maaf, stok sudah habis.</p>
                      <a href="{{ url('pesan') }}/{{ $tiket->id }}" class="btn btn-primary disabled"><i class="fas fa-shopping-cart"></i> Pesan</a>
                  @else
                      <a href="{{ url('pesan') }}/{{ $tiket->id }}" class="btn btn-primary"><i class="fas fa-shopping-cart"></i> Pesan</a>
                  @endif
              </div>
          </div>
      @endforeach
      
        </div>


    </div>
    <div class="container ">
      <div class="row">
        <h3>Kamar</h3>
        <hr></hr>
          @foreach ($kamar as $kamar)
          <div class="card row-sm-4" style="border: 1px solid rgb(1, 1, 1); margin:5px; width:350px; height:auto;justify-content:center; align-items:center;">
            <img src="{{ url('/image//' . $kamar ->gambar) }}" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">{{ $kamar->nama_kamar }}</h5>
                <p class="card-text">
                  <strong>Status :</strong>{{ $kamar->status }} <br>
                  <hr>
                  <strong>Deskripsi : {{ $kamar->deskripsi }}</strong> <br>
                </p>
                <a href="https://api.whatsapp.com/send?phone={{$kamar->nomor_telepon}}" target="_blank">
                  <button class="fab fa-whatsapp btn btn-primary"> pesan 
                </button></a>
              </div>
          </div>
          @endforeach
      </div>
  </div>
@endsection
