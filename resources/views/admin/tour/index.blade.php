@extends('admin.layouts.main')
@section('title', '')
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="{{ route('admin.home') }}"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('tour.index') }}">Bài viết</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <section class="content">
                <div class="container-fluid">
                    <div class="card card-default">
                        <div class="card-header card-header-border-bottom">
                            <h3 class="card-title">From tìm kiếm</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <form action="">
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        <div class="form-group">
                                            <input type="text" name="t_title" class="form-control mg-r-15" placeholder="Tiêu đề tour">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="form-group">
                                            <input type="date" name="t_start_date" class="form-control mg-r-15">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="form-group">
                                            <input type="date" name="t_end_date" class="form-control mg-r-15">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success " style="margin-right: 10px"><i class="fas fa-search"></i> Tìm kiếm </button>
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="{{ route('tour.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th width="4%" class=" text-center">STT</th>
                                        <th>Tiêu đề</th>
                                        <th>Hình ảnh</th>
                                        <th>Lich trình / Giá</th>
                                        <th>Thông tin / Địa điểm</th>
                                        <th class="text-center">Trạng thái</th>
                                        <th class="text-center">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (!$tours->isEmpty())
                                        @php $i = $tours->firstItem(); @endphp
                                        @foreach($tours as $tour)
                                            <tr>
                                                <td class=" text-center" style="vertical-align: middle;">{{ $i }}</td>
                                                <td style="vertical-align: middle; width: 20%" class="title-content">
                                                    <p>{{ $tour->t_title }}</p>
                                                </td>

                                                <td style="vertical-align: middle; width:15%;">
                                                    @if(isset($tour) && !empty($tour->t_image))
                                                        <img src="{{ asset(pare_url_file($tour->t_image)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 100px; width:100%;">
                                                    @else
                                                        <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 100px; width:100%;">
                                                    @endif
                                                </td>
                                                <td style="vertical-align: middle; width: 20%" class="title-content">
                                                    <p><b>Hành trình:</b> {{ $tour->t_journeys }}</p>
                                                    <p><b>Lịch trình :</b> {{ $tour->t_schedule }}</p>
                                                    <p><b>Số người :</b> {{ $tour->t_number_guests }}</p>
                                                    <p><b>Đã đăng ký :</b> {{ $tour->t_number_registered }}</p>
                                                    <p><b>Giá người lớn :</b> {{ number_format($tour->t_price_adults,0,',','.') }} vnd</p>
                                                    <p><b>Giá trẻ em :</b> {{ number_format($tour->t_price_children,0,',','.') }} vnd</p>
                                                </td>
                                                <td style="vertical-align: middle;">
                                                    <p><b>Địa điểm :</b> {{ isset($tour->location) ? $tour->location->l_name : '' }}</p>
                                                    <p><b>Di chuyển :</b> {{ $tour->t_move_method }}</p>
                                                    <p><b>Điểm xuất phát :</b> {{ $tour->t_starting_gate }}</p>
                                                    <p><b>Ngày đi :</b> {{ $tour->t_start_date }}</p>
                                                    <p><b>Ngày về :</b> {{ $tour->t_end_date }}</p>
                                                </td>
                                                <td class=" text-center" style="vertical-align: middle;">{{ $status[$tour->t_status] }}</td>
                                                <td class="text-center" style="vertical-align: middle;">
                                                    <a class="btn btn-primary btn-sm" href="{{ route('tour.update', $tour->id) }}">
                                                        <i class="fas fa-pencil-alt"></i>
                                                    </a>
                                                    <a class="btn btn-danger btn-sm btn-delete btn-confirm-delete" href="{{ route('tour.delete', $tour->id) }}">
                                                        <i class="fas fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            @php $i++ @endphp
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                            @if($tours->hasPages())
                                <div class="pagination float-right margin-20">
                                    {{ $tours->appends($query = '')->links() }}
                                </div>
                            @endif
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>
    </section>
@stop
