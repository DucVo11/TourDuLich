@extends('page.layouts.page')
@section('title', 'Cuộc đời là những chuyến đi | VHD Travel')
@section('style')
@stop
@section('content')
    <div class="hero-wrap js-fullheight" style="background-image: url({{ asset('page/images/tour2.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
                <div class="col-md-7 ftco-animate">
                    <span class="subheading">Welcome to VHD Travel</span>
                    <h1 class="mb-4">Khám phá địa điểm yêu thích của bạn với chúng tôi</h1>
                    <p class="caps">Du lịch đến bất kỳ nơi nào bạn chỉ cần liên hệ với chúng tôi</p>
                </div>
                <a href="https://www.youtube.com/watch?v=6cwK3nzBBNg" class="icon-video popup-vimeo d-flex align-items-center justify-content-center mb-4">
                    <span class="fa fa-play"></span>
                </a>
            </div>
        </div>
    </div>

    <section class="ftco-section ftco-no-pb ftco-no-pt">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="ftco-search d-flex justify-content-center">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap">
                                <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Tìm kiếm Tour</a>

                                    <a class="nav-link " id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Tìm kiếm khách sạn</a>

                                </div>
                            </div>
                            <div class="col-md-12 tab-wrap">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                                        @include('page.common.searchTour')
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                                        @include('page.common.searchHotel', compact('locations'))
                                    </div>
                                </div>
                            </div>
                        </div>
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

    <section class="ftco-section img ftco-select-destination" style="background-image: url({{ asset('page/images/bg_3.jpg') }});">
        <div class="container">
            <div class="row justify-content-center pb-4">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Danh sách</span>
                    <h2 class="mb-4">Địa điểm du lịch</h2>
                </div>
            </div>
        </div>
        <div class="container container-2">
            <div class="row">
                <div class="col-md-12">
                    <div class="carousel-destination owl-carousel ftco-animate">
                        @if ($locations->count() > 0)
                            @foreach($locations as $location)
                                <div class="item">
                                    <div class="project-destination">
                                        <a href="#" class="img" style="background-image: url({{ asset('page/images/place-1.jpg') }});">
                                            <div class="text">
                                                <h3>{{ $location->l_name }}</h3>
                                                <span>{{ $location->tours ? $location->tours->count() : 0 }} Tours</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center pb-4">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Danh Sách</span>
                    <h2 class="mb-4">Tour Du Lịch Mới Nhất</h2>
                </div>
            </div>
            <div class="row">
                @if($tours->count() > 0)
               
                    @foreach($tours as $tour)
                        @include('page.common.itemTour', compact('tour'))
                    @endforeach
                   
                @endif
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

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center pb-4">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Danh sách</span>
                    <h2 class="mb-4">Bài Đăng Gần Đây</h2>
                </div>
            </div>
            <div class="row d-flex">
                @if ($articles->count() > 0)
                    @foreach($articles as $article)
                        @include('page.common.itemArticle', compact('article'))
                    @endforeach
                @endif
            </div>
        </div>
    </section>

    <section class="ftco-intro ftco-section ftco-no-pt">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 text-center">
                    <div class="img"  style="background-image: url({{ asset('page/images/bg_2.jpg') }});">
                        <div class="overlay"></div>
                        <h2>Chúng tôi là Công ty Du lịch VHD Travel</h2>
                        <p>Chúng tôi sẽ mang đến cho quý khách những trãi nghiệm tuyệt vời nhất</p>
                        <p class="mb-0"><a href="#" class="btn btn-primary px-4 py-3">Liên hệ qua Messager của chúng tôi</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop
