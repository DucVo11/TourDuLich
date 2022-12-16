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
                    <h1 class="mb-0 bread">Tài Khoản</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                @include('page.common.sideBarUser')
                <div class="col-lg-9 ftco-animate py-md-5">
                    <form action="{{ route('update.info.account', $user->id) }}" method="POST" enctype="multipart/form-data" class="p-5 contact-form">
                        @csrf
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Họ và tên <sup class="text-danger">(*)</sup></label>
                                    <input type="text" name="name" class="form-control" placeholder="Họ và tên" value="{{ old('name', $user->name) }}">
                                    @if ($errors->first('name'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Email <sup class="text-danger">(*)</sup></label>
                                    <input type="text" name="email" class="form-control" placeholder="Email" value="{{ old('email', $user->email) }}">
                                    @if ($errors->first('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Số điện thoại <sup class="text-danger">(*)</sup></label>
                                    <input type="text" name="phone" class="form-control" placeholder="Số điện thoại" value="{{ old('phone', $user->phone) }}">
                                    @if ($errors->first('phone'))
                                        <span class="text-danger">{{ $errors->first('phone') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Địa chỉ <sup class="text-danger">(*)</sup></label>
                                    <input type="text" name="address" class="form-control" placeholder="Địa chỉ" value="{{ old('address', $user->address) }}">
                                    @if ($errors->first('address'))
                                        <span class="text-danger">{{ $errors->first('address') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-3 ">
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Ảnh đại diện </label>
                                    <input type="file" class="input-file" id="avatar" name="images">
                                </div>
                                <div class="col-md-12 text-center vcard bio">
                                    <img src="{{  $user->avatar ? asset(pare_url_file($user->avatar)) :  asset('page/images/user_default.png') }}" alt="" class="img-circle avatar" width="100%">
                                </div>
                            </div>
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