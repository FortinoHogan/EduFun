@extends('layouts.main.main')

@section('content')
    <div class="container d-flex flex-column" style="min-height: 80vh">
        <h1 class="my-5">Our Writers:</h1>
        <div class="d-flex gap-5 flex-wrap justify-content-center">
            @foreach ($writers as $writer)
                <a href={{ route('writer', $writer->id) }} class="d-flex flex-column align-items-center gap-4 text-decoration-none text-dark" style="width: 400px;">
                    <div class="d-flex justify-content-center align-items-center shadow-lg"
                        style="width: 200px; height: 200px; border-radius: 50%; overflow: hidden;">
                        <img src="{{ asset($writer->{'img-path'}) }}" alt="{{ $writer->name }}"
                            style="width: 100%; height: auto; object-fit: cover;" />
                    </div>
                    <h4 class="text-center">{{ $writer->name }}</h4>
                    <p class="text-center">Spesialis {{ $writer->category->name }}</p>
                </a>
            @endforeach
        </div>
    </div>
@endsection
