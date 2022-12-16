@extends('page.layouts.page')
@section('title', 'Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2022')
@section('style')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/200-hinh-nen.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Giới thiệu<i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Giới thiệu</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section services-section">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-6 order-md-last heading-section pl-md-5 ftco-animate d-flex align-items-center">
                    <div class="w-100">
                        <span class="subheading">Welcome to VHD Travel</span>
                        <h2 class="mb-4">Đã đến lúc bắt đầu cuộc phiêu lưu của bạn</h2>
                        <p>Xách balo lên vào đi với chúng tôi, bạn sẽ có được những trãi nghiệm tuyệt vời với dịch vụ của chúng tôi!</p>
                        <p>Các bạn hãy tìm đến với Fun Travel để được đi đến bất cứ nơi nào trên thế giới. Dành cho người có niềm đam mê bất tận với du lịch!</p>
                        
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-1 d-block img" style="background-image: url({{ asset('page/images/services-1.jpg') }});">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-paragliding"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Các hoạt động</h3>
                                    <p>Hoạt động dã ngoại, thể thao trong quá trình du lịch</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-2 d-block img" style="background-image: url({{ asset('page/images/services-2.jpg') }});">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Sắp xếp chuyến đi</h3>
                                    <p>Chúng tôi sẽ giúp bạn sắp xếp chuyến đi một cách thoải mái nhất, luôn luôn có các tour để bạn có nhiều sự lựa chọn</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-3 d-block img" style="background-image: url({{ asset('page/images/services-3.jpg') }});">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-tour-guide"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Hướng dẫn riêng</h3>
                                    <p>Xách balo lên vào đi với chúng tôi, bạn sẽ có được những trãi nghiệm tuyệt vời với dịch vụ của chúng tôi!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-4 d-block img" style="background-image: url({{ asset('page/images/services-4.jpg') }});">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-map"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Quản lý vị trí</h3>
                                    <p>Các bạn hãy tìm đến với VHD Travel để được đi đến bất cứ nơi nào trên thế giới. Dành cho người có niềm đam mê bất tận với du lịch!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-about img"style="background-image: url({{ asset('page/images/bg_4.jpg') }});">
        <div class="overlay"></div>
        <div class="container py-md-5">
            <div class="row py-md-5">
                <div class="col-md d-flex align-items-center justify-content-center">
                    <a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex align-items-center justify-content-center mb-4">
                        <span class="fa fa-play"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-about ftco-no-pt img">
        <div class="container">
            <div class="col-md-12 heading-section ftco-animate">
                <div class="row d-flex">
                    <div class="col-md-12 about-intro">
                        <div class="row">
                            <div class="col-md-6 d-flex align-items-stretch">
                                <div class="img d-flex w-100 align-items-center justify-content-center" style="background-image:url({{ asset('page/images/about-1.jpg') }});">
                                </div>
                            </div>
                            <div class="col-md-6 pl-md-5 py-5">
                                <div class="row justify-content-start pb-3">
                                    <span class="subheading">Giới thiệu</span>
                                    <h2 class="mb-4">Hãy làm cho chuyến tham quan của bạn trở nên đáng nhớ và an toàn với chúng tôi</h2>
                                    <p>Những chuyến đi du lịch đều đọng lại trong chúng ta nhiều kỉ niệm đặc biệt, vì thế hãy trân trọng những giây phút vui vẻ, hạnh phúc trong chuyến đi của mình. Chúng tôi sẽ đồng hành cùng bạn để góp phần làm cho những trãi nghiệm đó càng thêm tuyệt vời.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('page.common.listCommentHot', compact('comments'))
@stop
@section('script')
@stop
