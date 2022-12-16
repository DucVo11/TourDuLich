@extends('admin.layouts.main')
@section('title', 'Quản lý du lịch')
@section('style-css')
    <!-- fullCalendar -->
@stop
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Quản lý du lịch</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('admin.home') }}">Trang chủ</a></li>
                        {{--<li class="breadcrumb-item"><a href="#">Quản lý bán hàng</a></li>--}}
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title"></h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-info"><i class="fas fa-th-large"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Tổng số tour</span>
                                    <span class="info-box-number">{{ number_format($tour) }}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-success"><i class="fas fa-th-large"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Tour đã đặt</span>
                                    <span class="info-box-number">{{ number_format($bookTour) }}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-danger"><i class="fa fa-fw fa-user"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Tổng số thành viên</span>
                                    <span class="info-box-number">{{ number_format($user) }}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-info color-palette"><i class="fas fa-file-word"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Tổng số bài viết</span>
                                    <span class="info-box-number">{{ number_format($article) }}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                    </div>
                </div>
                <div class="card-body"  >
                 
                    <h3>Tour nổi bật </h3>

<div>
                    @if($tours->count() > 0)
                    <table style="border-collapse: collapse; width: 100%; height: 68px;" border="1">
<tbody>
<tr style="height: 17px;">
<td style="width: 33.3333%; text-align: center; height: 17px;"><strong><em>Mã Tour</em></strong></td>
<td style="width: 33.3333%; text-align: center; height: 17px;"><strong><em>Tên tour</em></strong></td>
<td style="width: 33.3333%; text-align: center; height: 17px;"><strong><em>Lượt đăng ký</em></strong></td>
</tr>
               @foreach($tours as $tour)
               
<tr style="height: 17px;">
<td style="width: 33.3333%; text-align: center; height: 17px;">{{$tour->id}}</td>
<td style="width: 33.3333%; text-align: center; height: 17px;">{{$tour->t_title}}</td>
<td style="width: 33.3333%; text-align: center; height: 17px;">{{$tour->t_follow}}</td>
</tr>


               @endforeach
</div>
</tbody>
</table>
</div>
           @endif
<span> .</span>
                <div class="col-sm-8" style="margin-left: 15px">
                    <form action="">
                        <div class="row">
                            <div class="col-sm-12 col-md-4">
                                <?php $month = date('m'); ?>
                                <div class="form-group">
                                    <select name="select_month" id="" class="form-control">
                                        <option value="">Chọn tháng</option>
                                        @for($i = 1; $i < 13; $i++)
                                            @if(Request::get('select_month'))
                                                <option {{ Request::get('select_month') == $i ? "selected='selected'" : '' }} value="{{$i}}">{{$i}}</option>
                                            @else
                                                <option {{ $month == $i ? "selected='selected'" : '' }} value="{{$i}}">{{$i}}</option>
                                            @endif
                                        @endfor
                                    </select>
                                </div>
                            </div>
                           
                            <div class="col-sm-12 col-md-4">
                                <?php $year = date('Y'); ?>
                                <div class="form-group">
                                    <select name="select_year" id="" class="form-control">
                                        <option value="">Chọn năm</option>
                                        @for($i = $year - 15; $i <= $year + 5; $i++)
                                            @if(Request::get('select_year'))
                                                <option {{ Request::get('select_year') == $i ? "selected='selected'" : '' }} value="{{$i}}">{{$i}}</option>
                                            @else
                                                <option {{ $year == $i ? "selected='selected'" : '' }} value="{{$i}}">{{$i}}</option>
                                            @endif
                                        @endfor
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-3">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-success " style="margin-right: 10px"><i class="fas fa-search"></i> Lọc dữ liệu </button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
                <div class="row" style="margin-bottom: 15px;">

                    <div class="col-sm-8">
                        <figure class="highcharts-figure">
                            <div id="container2" data-list-day="{{ $listDay }}" data-money-default={{ $arrRevenueTransactionMonthDefault }} data-money={{ $arrRevenueTransactionMonth }}>
                            </div>
                        </figure>
                    </div>
                    <div class="col-sm-4">
                        <figure class="highcharts-figure">
                            <div id="container" data-json="{{ $statusTransaction }}"></div>
                        </figure>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 15px;">
                <div class="col-sm-12">
                        <figure class="highcharts-figure">
                            <div id="container3" data-list-day="{{ $listDay }}"  data-money={{ $arrmoney }}>
                            </div>
                        </figure>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@stop

@section('script')
    <link rel="stylesheet" href="https://code.highcharts.com/css/highcharts.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    {{-- <script src="https://code.highcharts.com/modules/exporting.js"></script> --}}
    {{-- <script src="https://code.highcharts.com/modules/export-data.js"></script> --}}
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        let dataTransaction = $("#container").attr('data-json');
        dataTransaction  =  JSON.parse(dataTransaction);

        let listday = $("#container2").attr("data-list-day");
        listday = JSON.parse(listday);

        let listMoneyMonth = $("#container2").attr('data-money');
        listMoneyMonth = JSON.parse(listMoneyMonth);

        let listMoneyMonthDefault = $("#container2").attr('data-money-default');
        listMoneyMonthDefault = JSON.parse(listMoneyMonthDefault);

        let listday2 = $("#container3").attr("data-list-day");
        listday2 = JSON.parse(listday2);

        let listMoneyMonth2 = $("#container3").attr('data-money');
        listMoneyMonth2 = JSON.parse(listMoneyMonth2);



        Highcharts.chart('container', {

            chart: {
                styledMode: true
            },

            title: {
                text: 'Trạng thái các tour du lịch'
            },

            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr']
            },

            series: [{
                type: 'pie',
                allowPointSelect: true,
                keys: ['name', 'y', 'selected', 'sliced'],
                data: dataTransaction,
                showInLegend: true
            }]
        });

        Highcharts.chart('container2', {
            chart: {
                type: 'spline'
            },
            title: {
                text: 'Thống kê lượng khách hàng đặt tour trong tháng'
            },
            subtitle: {
                text: 'Dữ liệu thống kê'
            },
            xAxis: {
                categories: listday
            },
            yAxis: {
                title: {
                    text: 'Số lượng khách hàng'
                },
                labels: {
                    formatter: function () {
                        return this.value ;
                    }
                }
            },
            tooltip: {
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius: 4,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
                }
            },
            series: [
                {
                    name: 'Tổng số người lớn',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonth
                },
                {
                    name: 'Tổng số trẻ em',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonthDefault
                },
               
            ]
        });
        Highcharts.chart('container3', {
            chart: {
                type: 'spline'
            },
            title: {
                text: 'Thống kê Doanh thu trong tháng'
            },
            subtitle: {
                text: 'Dữ liệu thống kê'
            },
            xAxis: {
                categories: listday2
            },
            yAxis: {
                title: {
                    text: 'Tiền'
                },
                // number_format($totalPrice, 0,',','.') 
                labels: {
                    formatter: function () {
                        return this.value ;
                    }
                }
            },
            tooltip: {
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius: 4,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
                }
            },
            series: [
                {
                    name: 'Doanh thu',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonth2
                },
                
            ]
        });
    </script>
@stop