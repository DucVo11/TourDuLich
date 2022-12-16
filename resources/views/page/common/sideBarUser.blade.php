<div class="col-lg-3 sidebar ftco-animate bg-light py-md-5 fadeInUp ftco-animated">
    <div class="sidebar-box ftco-animate fadeInUp ftco-animated">
        <div class="categories related-tour">
            <h3>Tài Khoản</h3>
            <li class="{{ request()->is('thong-tin-tai-khoan.html') ? 'active-user' : '' }}"><a href="{{ route('info.account') }}">Thông tin tài khoản </a></li>
            <li class="{{ request()->is('danh-sach-tour.html') ? 'active-user' : '' }}"><a href="{{ route('my.tour') }}">Danh sách tour đã đặt </a></li>
            <li class="{{ request()->is('thay-doi-mat-khau.html') ? 'active-user' : '' }}"><a href="{{ route('change.password') }}">Đổi mật khẩu </a></li>
        </div>
    </div>
</div>