@extends('admin.layouts.main')
@section('title', '')
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="{{ route('admin.home') }}"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('hotel.index') }}">Khách sạn</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="{{ route('hotel.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th width="4%" class=" text-center">STT</th>
                                        <th>Tên khách sạn</th>
                                        <th>Hình ảnh</th>
                                        <th>Thông tin</th>
                                        <th class="text-center">Trạng thái</th>
                                        <th class=" text-center">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (!$hotels->isEmpty())
                                        @php $i = $hotels->firstItem(); @endphp
                                        @foreach($hotels as $hotel)
                                            <tr>
                                                <td style="vertical-align: middle;" class=" text-center">{{ $i }}</td>
                                                <td style="vertical-align: middle; width: 20%" class="title-content">
                                                    <p>{{ $hotel->h_name }}</p>
                                                </td>
                                                <td style="vertical-align: middle; width:20%;">
                                                    @if(isset($hotel) && !empty($hotel->h_image))
                                                        <img src="{{ asset(pare_url_file($hotel->h_image)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 140px; width:100%;">
                                                    @else
                                                        <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 140px; width:100%;">
                                                    @endif
                                                </td>
                                                <td style="vertical-align: middle; width:35%;">
                                                    <p><b>Địa điểm :</b> {{ isset($hotel->location) ? $hotel->location->l_name : '' }}</p>
                                                    <p><b>Địa chỉ :</b> {{ $hotel->h_address }}</p>
                                                    <p><b>Điện thoại :</b> {{ $hotel->h_phone }}</p>
                                                    <p><b>Giá từ :</b> {{ number_format($hotel->h_price,0,',','.') }} vnđ</p>
                                                </td>
                                                {{--<td>{{ $types[$category->c_type] }}</td>--}}
                                                <td class="text-center" style="vertical-align: middle;">{{ $status[$hotel->h_status] }}</td>
                                                <td class="text-center" style="vertical-align: middle;">
                                                    <a class="btn btn-primary btn-sm" href="{{ route('hotel.update', $hotel->id) }}">
                                                        <i class="fas fa-pencil-alt"></i>
                                                    </a>
                                                    <a class="btn btn-danger btn-sm btn-delete btn-confirm-delete" href="{{ route('hotel.delete', $hotel->id) }}">
                                                        <i class="fas fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            @php $i++ @endphp
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                            @if($hotels->hasPages())
                                <div class="pagination float-right margin-20">
                                    {{ $hotels->appends($query = '')->links() }}
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
