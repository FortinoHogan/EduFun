@extends('layouts.main.main')

@section('content')
    <div class="container d-flex flex-column mt-3 gap-3" style="min-height: 80vh">
        <h3>{{ $category->name }}</h3>
        <img src={{ asset($post->{'img-path'}) }} alt="" class="rounded-5">
        <p>{{ $post->created_at->format('Y-m-d') }} | by: {{ $post->writer->name }}</p>
        <p>{{ $post->content }}</p>
    </div>
@endsection
