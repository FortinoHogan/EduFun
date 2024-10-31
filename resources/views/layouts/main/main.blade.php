<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    @include('customs.bootstrap5css')
</head>
<body>

    @include('layouts.navbar.navbar')

    <div>
        @yield('content')
    </div>

    @include('layouts.footer.footer')

    @include('customs.bootstrap5js')
</body>
</html>