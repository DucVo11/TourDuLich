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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Danh sách <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Đặt tour</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                @include('page.common.sideBarUser')
                <div class="col-lg-9 ftco-animate py-md-5">
                    <table class="table table-hover table-bordered my-tour">
                        <thead>
                            <tr>
                                <th style="vertical-align: middle; width: 3%">STT</th>
                                <th style="vertical-align: middle; width: 20%">Tên tour</th>
                                <th style="vertical-align: middle;">Thông tin</th>
                                <th style="vertical-align: middle;" class=" text-center">Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (!$bookTours->isEmpty())
                                @php $i = $bookTours->firstItem(); @endphp
                                @foreach($bookTours as $tour)
                                    <tr>
                                        <td style="vertical-align: middle; width: 3%">{{ $i }}</td>
                                        <td style="vertical-align: middle; width: 30%">
                                            <p>{{ $tour->tour->t_title }}</p>
                                            <p><b>Điểm xuất phát : </b> {{ $tour->tour->t_starting_gate }}</p>
                                            <p><b>Điểm đón : </b> {{ $tour->b_address }}</p>
                                            <p><b>Ngày khởi hành : </b> {{ $tour->tour->t_start_date }}</p>
                                            <p><b>Ngày trở về : </b> {{ $tour->tour->t_end_date }}</p>
                                        </td>
                                        <td style="vertical-align: middle; width: 50%">
                                         <p><b>Mã booking : </b> {{ $tour->id }}</p>
                                            <p><b>Số người lớn : </b> {{ $tour->b_number_adults }} - <b>Thành tiền</b>: {{ number_format($tour->b_number_adults*$tour->b_price_adults, 0,',','.') }} vnd</p>
                                            <p><b>Số trẻ em (6-12 tuổi) :</b> {{ $tour->b_number_children }} - <b>Thành tiền</b>: {{ number_format($tour->b_number_children*$tour->b_price_children, 0,',','.') }} vnd</p>
                                            <p><b>Số trẻ em (2-6 tuổi) :</b> {{ $tour->b_number_child6 }} - <b>Thành tiền</b>: {{ number_format($tour->b_number_child6*$tour->b_price_child6, 0,',','.') }} vnd</p>
                                            <p><b>Số trẻ em (dưới 2 tuổi) :</b> {{ $tour->b_number_child2 }} - <b>Thành tiền</b>: {{ number_format($tour->b_number_child2*$tour->b_price_child2, 0,',','.') }} vnd</p>

                                           
                                            @php
                                            $totalPrice = ($tour->b_number_adults*$tour->b_price_adults)+($tour->b_number_children*$tour->b_price_children)+($tour->b_number_child6*$tour->b_price_child6)+($tour->b_number_child2*$tour->b_price_child2)
                                            @endphp
                                            <p><b>Tổng tiền :</b> {{ number_format($totalPrice, 0,',','.') }} vnd</p>
                                            <p><b>Ghi chú :</b> {{ $tour->b_note }}</p>
                                        </td>
                                        <td style="vertical-align: middle; width: 17%">
                                            @if($tour->b_status != 1)
                                                <button type="button" class="btn btn-block {{ $classStatus[$tour->b_status] }} btn-sm btn-status-order">{{ $status[$tour->b_status]  }}</button>
                                            @endif
                                            @if($tour->b_status == 1)
                                                <a class="btn btn-block btn-danger btn-sm btn-cancel-order" href="{{ route('post.cancel.order.tour', ['status' => 5, 'id' => $tour->id]) }}" >Hủy</a>
                                            @endif
                                        </td>
                                    </tr>
                                    @php $i++ @endphp
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                    <div class="row mt-5">
                        <div class="col text-center">
                            <div class="block-27">
                                {{ $bookTours->links('page.pagination.default') }}
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .col-md-8 -->
            </div>

        </div>
    </section>
@stop
@section('script')
@stop