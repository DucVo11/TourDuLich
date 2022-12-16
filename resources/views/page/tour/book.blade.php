@extends('page.layouts.page')
@section('title', 'Đặt tour')
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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Tours <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Đặt Tour</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pb contact-section mb-4">
        <div class="container">
            <div class="row d-flex contact-info">
                <div class="col-md-3 d-flex">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-map-marker"></span>
                        </div>
                        <h3 class="mb-2">Địa chỉ</h3>
                        <p>Đường 3/2, Phường Xuân Khánh, Ninh Kiều, Cần Thơ</p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-phone"></span>
                        </div>
                        <h3 class="mb-2">Số điện thoại liên hệ</h3>
                        <p><a href="tel://1234567920">0366890324</a></p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-paper-plane"></span>
                        </div>
                        <h3 class="mb-2">Địa chỉ email</h3>
                        <p><a href="mailto:info@yoursite.com">vhdtravel663@gmail.com</a></p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="align-self-stretch box p-4 text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-globe"></span>
                        </div>
                        <h3 class="mb-2">Website</h3>
                        <p><a href="#">http://vhdtravel.xyz</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section contact-section ftco-no-pt">
        <div class="container">
            <div class="row block-9">
                <div class="col-md-6 order-md-last">
                    <p></p>
                    <form action="{{ route('post.book.tour', $tour->id) }}" method="POST" class="bg-light p-5 contact-form">
                        @csrf
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Họ và tên <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="b_name" value="{{ old('b_name', isset($user) ? $user->name : '') }}" class="form-control" placeholder="Họ và tên">
                            @if ($errors->first('b_name'))
                                <span class="text-danger">{{ $errors->first('b_name') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Email <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="b_email" value="{{ old('b_email', isset($user) ? $user->email : '') }}" class="form-control" placeholder="Email">
                            @if ($errors->first('b_email'))
                                <span class="text-danger">{{ $errors->first('b_email') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số điện thoại <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="b_phone" value="{{ old('b_phone', isset($user) ? $user->phone : '') }}" class="form-control" placeholder="Số điện thoại">
                            @if ($errors->first('b_phone'))
                                <span class="text-danger">{{ $errors->first('b_phone') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Địa chỉ <sup class="text-danger">(*)</sup></label>
                            <input type="text" name="b_address" value="{{ old('b_address', isset($user) ? $user->address : '') }}" class="form-control" placeholder="Địa chỉ">
                            @if ($errors->first('b_address'))
                                <span class="text-danger">{{ $errors->first('b_address') }}</span>
                            @endif
                        </div>
                        <!-- <div class="form-group">
                            <label for="inputEmail3" class="control-label">Ngày khởi hành dự kiến</label>
                            <input type="date" name="b_start_date" value="{{ old('b_address', isset($user) ? $user->address : '') }}" class="form-control">
                            @if ($errors->first('b_start_date'))
                                <span class="text-danger">{{ $errors->first('b_start_date') }}</span>
                            @endif
                        </div> -->
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số người lớn <sup class="text-danger">(*)</sup></label>
                            <input type="number" name="b_number_adults" class="form-control" placeholder="Số người lớn">
                            @if ($errors->first('b_number_adults'))
                                <span class="text-danger">{{ $errors->first('b_number_adults') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số trẻ em (6 - 12 tuổi) <sup class="text-danger">(*)</sup></label>
                            <input type="number"  min="0" value="0" name="b_number_children" class="form-control" placeholder="Số trẻ em">
                            @if ($errors->first('b_number_children'))
                                <span class="text-danger">{{ $errors->first('b_number_children') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số trẻ em (2-6 tuổi) <sup class="text-danger">(*)</sup></label>
                            <input type="number"  min="0" value="0" name="b_number_child6" class="form-control" placeholder="Số trẻ em">
                            @if ($errors->first('b_number_children'))
                                <span class="text-danger">{{ $errors->first('b_number_children') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Số trẻ em (Dưới 2 tuổi) <sup class="text-danger">(*)</sup></label>
                            <input type="number"  min="0" value="0" name="b_number_child2" class="form-control a" placeholder="Số trẻ em">
                            @if ($errors->first('b_number_children'))
                                <span class="text-danger">{{ $errors->first('b_number_children') }}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="control-label">Ghi chú</label>
                            <textarea name="b_note"  placeholder="Thông tin chi tiết để chúng tôi liên hệ nhanh chóng..." id="message" cols="20" rows="5" class="form-control"></textarea>
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="form-group">
                                <input type="submit" value="Đặt Tour" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                        
                    </form>

                </div>

                <div class="col-md-6 text-center">
                    <div class="col-md-12">
                        <h2 class="mb-3 title-book">{{ $tour->t_title }}</h2>
                        <h2 class="mb-3">{{ isset($tour->location) ? $tour->location->l_name : '' }}</h2>
                        <p>Hành trình : {{ $tour->t_journeys }}</p>
                        <p>Lịch trình : {{ $tour->t_schedule }}</p>
                        <p>Vận chuyển : {{ $tour->t_move_method }}</p>
                        <p>Số người tham gia : {{ $tour->t_number_guests }}</p>
                        <p>Đã đăng ký : {{ $tour->t_number_registered }}</p>
                        <div class="phoneWrap">
                            <div class="hotline">0909.189.888</div>
                            <div class="hotline">0903.933.788</div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <img src="{{ asset('page/images/travel.jpg') }}" alt="" class="image-book">
                    </div>
                    <div>
                    <table style="border-collapse: collapse; width: 100%;margin-top:20px" border="1">
<tbody>
<tr>
<td style="width: 10%;">Loại gi&aacute;/Độ tuổi</td>
<td style="width: 20%;">Người lớn(tr&ecirc;n 12 tuổi)</td>
<td style="width: 20%;">trẻ em(6-12 tuổi)</td>
<td style="width: 20%;">trẻ em(2-6 tuổi)</td>
<td style="width: 20%;">Sơ sinh( &lt;2 tuổi)</td>
</tr>
<tr>
<td style="width: 10%;">Gi&aacute;&nbsp;</td>
<td style="width: 20%;">{{ number_format($tour->t_price_adults-($tour->t_price_adults*$tour->t_sale/100),0,',','.') }} vnd</td>
<td style="width: 20%;">{{ number_format($tour->t_price_children-($tour->t_price_children*$tour->t_sale/100),0,',','.') }} vnd</td>
<td style="width: 20%;">{{ number_format(($tour->t_price_children-($tour->t_price_children*$tour->t_sale/100))*50/100,0,',','.') }} vnd}</td>
<td style="width: 20%;">{{ number_format(($tour->t_price_children-($tour->t_price_children*$tour->t_sale/100))*25/100,0,',','.') }} vnd</td>
</tr>
</tbody>
</table>
</div>
                </div>
            </div>
        </div>
        <script>
    $('.a').on('input',function(){
        var $a =$(this).val();
        var $p = $(this).parents('tr');
        var $b=300;
        var $t=$p.find('.t');
        $t.text($b*$a);
    })
</script>
    </section>
@stop
@section('script')
@stop