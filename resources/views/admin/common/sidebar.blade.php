<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('admin.home')}}" class="brand-link navbar-info">
        <img src="{!! asset('admin/dist/img/AdminLTELogo.png') !!}"
             alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">Trang Quản Trị</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        @php
            $user = Auth::user();
        @endphp
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ asset('/admin/dist/img/avatar5.png') }}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{!! $user->name !!}</a>
        </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-legacy nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                @if(Auth::user()->can(['full-quyen-quan-ly', 'truy-cap-he-thong']))
                <li class="nav-item has-treeview">
                    <a href="{{ route('admin.home') }}" class="nav-link {{ isset($home_active) ? $home_active : '' }}">
                        <i class="nav-icon fas fa fa-home"></i>
                        <p>Bảng điều khiển</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-danh-muc']))
                <li class="nav-item has-treeview">
                    <a href="{{ route('category.index') }}" class="nav-link {{ isset($category_active) ? $category_active : '' }}">
                        <i class="nav-icon fa fa-list"></i>
                        <p>Danh mục</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-bai-viet']))
                <li class="nav-item">
                    <a href="{{ route('article.index') }}" class="nav-link {{ isset($article_active) ? $article_active : '' }}">
                        <i class="nav-icon fas fa-file-word" aria-hidden="true"></i>
                        <p>Bài viết</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-dia-diem']))
                <li class="nav-item">
                    <a href="{{ route('location.index') }}" class="nav-link {{ isset($location_active) ? $location_active : '' }}">
                        <i class="nav-icon fas fa-map-marker-alt" aria-hidden="true"></i>
                        <p>Địa điểm</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-tour']))
                <li class="nav-item">
                    <a href="{{ route('tour.index') }}" class="nav-link {{ isset($tour_active) ? $tour_active : '' }}">
                        <i class="nav-icon fas fa-th-large" aria-hidden="true"></i>
                        <p>Tours</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-khach-san']))
                <li class="nav-item">
                    <a href="{{ route('hotel.index') }}" class="nav-link {{ isset($hotel_active) ? $hotel_active : '' }}">
                        <i class="nav-icon fas fa-bed" aria-hidden="true"></i>
                        <p>Khách sạn</p>
                    </a>
                </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'quan-ly-dat-tour']))
                    <li class="nav-item">
                        <a href="{{ route('book.tour.index') }}" class="nav-link {{ isset($book_tour_active) ? $book_tour_active : '' }}">
                            <i class="nav-icon fas fa-cart-plus" aria-hidden="true"></i>
                            <p>Danh sách đặt tour</p>
                        </a>
                    </li>
                @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'quan-ly-binh-luan']))
                    <li class="nav-item">
                        <a href="{{ route('comment.index') }}" class="nav-link {{ isset($comment_active) ? $comment_active : '' }}">
                            <i class="nav-icon fas fa-comments" aria-hidden="true"></i>

                            <p>Quản lý bình luận </p>
                        </a>
                    </li>
                @endif
                {{--<li class="nav-item">--}}
                    {{--<a href="{{ route('group.permission.index') }}" class="nav-link {{ isset($group_permission) ? $group_permission : '' }}">--}}
                        {{--<i class="nav-icon fa fa-hourglass" aria-hidden="true"></i>--}}
                        {{--<p>Nhóm quyền</p>--}}
                    {{--</a>--}}
                {{--</li>--}}
                {{--<li class="nav-item">--}}
                    {{--<a href="{{ route('permission.index') }}" class="nav-link {{ isset($permission_active) ? $permission_active : '' }}">--}}
                        {{--<i class="nav-icon fa fa-balance-scale"></i>--}}
                        {{--<p> Quyền </p>--}}
                    {{--</a>--}}
                {{--</li>--}}
                 @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-vai-tro']))
                <li class="nav-item">
                    <a href="{{ route('role.index') }}" class="nav-link {{ isset($role_active) ? $role_active : '' }}">
                        <i class="nav-icon fa fa-gavel" aria-hidden="true"></i>
                        <p> Vai trò </p>
                    </a>
                </li>
                 @endif
                @if(Auth::user()->can(['full-quyen-quan-ly', 'danh-sach-nguoi-dung']))
                <li class="nav-item">
                    <a href="{{ route('user.index') }}" class="nav-link {{ isset($user_active) ? $user_active : '' }}">
                        <i class="nav-icon fa fa-fw fa-user" aria-hidden="true"></i>
                        <p> Người dùng </p>
                    </a>
                </li>
                 @endif
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
