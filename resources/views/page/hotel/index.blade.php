@extends('page.layouts.page')
@section('title', 'Khách Sạn - Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2021')
@section('style')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/hotel.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Khách Sạn <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Khách Sạn</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search-wrap-1 ftco-animate fadeInUp ftco-animated">
                        @include('page.common.searchHotel', compact('locations'))
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section">
        <div class="container">
            <div class="row">
                @if ($hotels->count())
                    @foreach($hotels as $hotel)
                        @include('page.common.itemHotel', compact('hotel'))
                    @endforeach
                @endif
            </div>
            <div class="row mt-5">
                <div class="col text-center">
                    <div class="block-27">
                        {{ $hotels->links('page.pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop
