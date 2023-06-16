@extends('user.layouts.app')
@section('title')
    List Menu
@endsection
@section('content')
<section class="main-article" id="article-1">
    @foreach ($artikel as $item)
        <h1 class="heading">{{ $artikel[0]->judul_artikel }}</h1>

        <section class="blog-parents">
            <div class="blog-container">

                <div class="card">
                    <div
                        style=" max-height: 600px; display: block;
                margin-left: auto;
                margin-right: auto;: 600px; overflow:hidden">
                        <img src="{{ asset('/image//' . $artikel[0]->gambar) }}" class="card-img-top"
                            alt="...">
                    </div>
                    <div class="card-body">
                        {{-- <h1 class="card-title">{{ $artikel[0]->judul_artikel }}</h1> --}}
                        <p class="card-text">{{ $artikel[0]->deskripsi }}</p>
                    </div>
                </div>
    @endforeach
    </div>
</section>
@endsection
