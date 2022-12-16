@extends('page.layouts.page')
@section('title', 'Đăng ký - Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2022')
@section('style')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/tour4.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Đăng ký <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Đăng ký</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pb contact-section mb-4">
        <div class="container">
            <div class="row block-9">
                <div class="col-md-12 order-md-last d-flex">
                    <form action="{{ route('post.account.register') }}" method="POST" class="bg-light p-5 contact-form">
                        @csrf
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Họ và tên <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="name" class="form-control" placeholder="Họ và tên">
                            @if ($errors->first('name'))
                                <span class="text-danger">{{ $errors->first('name') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Email <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="email" class="form-control" placeholder="Email">
                            @if ($errors->first('email'))
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số điện thoại <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="phone" class="form-control" placeholder="Số điện thoại">
                            @if ($errors->first('phone'))
                                <span class="text-danger">{{ $errors->first('phone') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Địa chỉ <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="address" class="form-control" placeholder="Địa chỉ">
                            @if ($errors->first('address'))
                                <span class="text-danger">{{ $errors->first('address') }}</span>
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
                                <input type="submit" value="Đăng ký" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop
