<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <div class="container-fluid px-5">
        <a href={{ route('home') }}>
            <img src={{ asset('storage/img/logo.png') }} alt="" style="width: 55px">
        </a>
        <ul class="navbar-nav flex-row gap-5">
            <li class="nav-item">
                <a class="nav-link {{ $active === 'home' ? 'text-primary text-decoration-underline' : '' }}" href={{ route('home') }}>Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle {{ $active === 'category' ? 'text-primary text-decoration-underline' : '' }}" href="#" id="navbarDropdownMenuLink" data-bs-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    Category
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href={{ route('category', 1) }}>Data Science</a>
                    <a class="dropdown-item" href={{ route('category', 2) }}>Network Security</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ $active === 'writer' ? 'text-primary text-decoration-underline' : '' }}" href={{ route('writers') }}>Writers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ $active === 'about' ? 'text-primary text-decoration-underline' : '' }}" href={{ route('about') }}>About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ $active === 'popular' ? 'text-primary text-decoration-underline' : '' }}" href={{ route('popular') }}>Popular</a>
            </li>
        </ul>
    </div>
</nav>
