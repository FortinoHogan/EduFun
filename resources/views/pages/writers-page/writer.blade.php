@extends('layouts.main.main')

@section('content')
    <div class="container" style="min-height: 80vh">
        <div class="d-flex align-items-center gap-3 my-5">
            <div class="d-flex justify-content-center align-items-center shadow-lg"
                style="width: 100px; height: 100px; border-radius: 50%; overflow: hidden;">
                <img src="{{ asset($writer->{'img-path'}) }}" alt="{{ $writer->name }}"
                    style="width: 100%; height: auto; object-fit: cover;" />
            </div>
            <div>
                <h4 class="text-center">{{ $writer->name }}</h4>
                <p class="text-center">Spesialis {{ $writer->category->name }}</p>
            </div>
        </div>
        @foreach ($posts as $post)
            <div class="d-flex flex-row mb-4">
                <img src="{{ asset($post->{'img-path'}) }}" alt="{{ $post->title }}" class="rounded-5"
                    style="width: 300px; height: auto; margin-right: 20px;">
                <div class="flex-grow-1">
                    <h2>{{ $post->title }}</h2>
                    <p>{{ Str::limit($post->content, 100, '...') }}</p>
                    <div class="text-end">
                        <a href={{ route('detail', $post->id) }} class="btn btn-primary">Read More...</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
