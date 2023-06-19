@extends('user.layouts.app')
@section('title')
   Detail Kamar
@endsection
@section('content')
<div class="card">
    <img src="{{ asset('image/' . $kamar->gambar_kamar) }}" class="card-img-top" alt="..." style="max-width: 300px; max-height: 400px; center">

    <div class="card-body">
        <h5 class="card-title">{{ $kamar->nama_kamar }} <p class="card-text">{{ $kamar->status }}</p></h5>
        
        <p class="card-text">{{ $kamar->deskripsi }}</p>
       
        <a href="/list-menu " class="btn btn-primary btn-block btn-sm">kembali</a>
    </div>
</div>
@endsection
