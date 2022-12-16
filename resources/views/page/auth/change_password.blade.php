@extends('page.layouts.page')
@section('title', 'Thông tin tài khoản - Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2022')
@section('style')
@stop
@section('seo')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/bg_1.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Tài khoản <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Đổi Mật Khẩu</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                @include('page.common.sideBarUser')
                <div class="col-lg-9 ftco-animate py-md-5">
                    <form action="{{ route('post.change.password') }}" method="POST" class="p-5 contact-form">
                        @csrf
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Mật khẩu hiện tại <sup class="text-danger">(*)</sup></label>
                            <input type="password" name="c_password" class="form-control" placeholder="Mật khẩu">
                            @if ($errors->first('c_password'))
                                <span class="text-danger">{{ $errors->first('c_password') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Mật khẩu <sup class="text-danger">(*)</sup></label>
                            <input type="password" name="password" class="form-control" placeholder="Mật khẩu">
                            @if ($errors->first('password'))
                                <span class="text-danger">{{ $errors->first('password') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Nhập lại mật khẩu <sup class="text-danger">(*)</sup></label>
                            <input type="password" name="r_password" class="form-control" placeholder="Nhập lại mật khẩu">
                            @if ($errors->first('r_password'))
                                <span class="text-danger">{{ $errors->first('r_password') }}</span>
                            @endif
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="form-group">
                                <input type="submit" value="Cập nhật" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form>
                </div> <!-- .col-md-8 -->
            </div>
        </div>
    </section>
@stop
@section('script')
@stop