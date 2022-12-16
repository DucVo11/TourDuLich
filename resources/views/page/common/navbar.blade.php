<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="{{ route('page.home') }}">VHDTravel<span>Du Lịch Cùng VHDTravel</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item {{ request()->is('/') ? 'active' : ''}}"><a href="{{ route('page.home') }}" class="nav-link">Trang chủ</a></li>
                <li class="nav-item {{ request()->is('ve-chung-toi.html') ? 'active' : '' }}"><a href="{{ route('about.us') }}" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item {{ request()->is('tour.html') || request()->is('tour/*') ? 'active' : '' }}"><a href="{{ route('tour') }}" class="nav-link">Tours</a></li>
                <li class="nav-item {{ request()->is('khach-san.html') || request()->is('khach-san/*') ? 'active' : '' }}"><a href="{{ route('hotel') }}" class="nav-link">Khách sạn</a></li>
                <li class="nav-item {{ request()->is('tin-tuc.html') || request()->is('tin-tuc/*')  ? 'active' : '' }}"><a href="{{ route('articles.index') }}" class="nav-link">Tin tức </a></li>
                <li class="nav-item {{ request()->is('lien-he.html') ? 'active' : '' }}"><a href="{{ route('contact.index') }}" class="nav-link">Liên hệ</a></li>
                @if (Auth::guard('users')->check())
                    @php $user = Auth::guard('users')->user(); @endphp
                    <li class="nav-item {{ request()->is('thong-tin-tai-khoan.html') || request()->is('thay-doi-mat-khau.html') || request()->is('danh-sach-tour.html') ? 'active' : '' }}"><a href="{{ route('info.account') }}" class="nav-link" title="{{ $user->name }}">Xin chào : {{ the_excerpt($user->name, 15) }}</a></li>
                    <li class="nav-item {{ request()->is('dang-xuat.html') ? 'active' : '' }}"><a  href="{{ route('page.user.logout') }}" class="nav-link">Đăng xuất</a></li>
                @else
                    <li class="nav-item {{ request()->is('dang-ky-tai-khoan.html') ? 'active' : '' }}"><a href="{{ route('user.register') }}" class="nav-link">Đăng ký</a></li>
                    <li class="nav-item {{ request()->is('dang-nhap.html') ? 'active' : '' }}"><a  href="{{ route('page.user.account') }}" class="nav-link">Đăng nhập</a></li>
                @endif

            </ul>
        </div>
    </div>
</nav>