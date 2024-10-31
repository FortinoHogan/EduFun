@extends('layouts.main.main')

@section('content')
    <div class="mb-5">
        <img src={{ asset('storage/img/hero.png') }} alt=""
            style="width: 100vw; height: 75vh; object-fit: cover">
    </div>
    <div class="container">
        @foreach ($posts as $post)
            <div class="d-flex gap-4 mb-4">
                <img src="{{ asset($post->{'img-path'}) }}" alt="{{ $post->title }}" class="rounded-5"
                    style="width: 300px; height: auto;">
                <div class="flex-grow-1">
                    <h2>{{ $post->title }}</h2>
                    <p>{{ $post->created_at->format('Y-m-d') }} | by: {{ $post->writer->name }}</p>
                    <p>{{ Str::limit($post->content, 100, '...') }}</p>
                    <div class="text-end">
                        <a href={{ route('detail', $post->id) }} class="btn btn-primary">Read More...</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
