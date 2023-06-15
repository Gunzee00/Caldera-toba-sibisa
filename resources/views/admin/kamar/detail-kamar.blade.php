@extends('admin.layouts.master')
@section('content')
<div class="card">
    <img src="{{ asset('image/' . $kamar->gambar) }}" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">{{ $kamar->nama_kamar }}</h5>
        <p class="card-text">{{ $kamar->deskripsi }}</p>
        <p class="card-text">{{ $kamar->status }}</p>
        <a href="/show-artikel" class="btn btn-primary btn-block btn-sm">kembali</a>
    </div>
</div>
@endsection
