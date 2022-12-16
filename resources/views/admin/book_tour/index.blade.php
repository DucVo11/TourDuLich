@extends('admin.layouts.main')
@section('title', '')
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="{{ route('admin.home') }}"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('book.tour.index') }}">Đặt tour</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
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
                                <div class="col-sm-12 col-md-4">
                                    <div class="form-group">
                                        <input type="text" name="name_tour" class="form-control mg-r-15" placeholder="Tên tour">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-3">
                                    <div class="form-group">
                                        <select class="custom-select" name="b_tour_id">
                                            <option value="">Chọn mã tour</option>
                                            @foreach($tours as $tour)
                                                @if (isset($tour->children) && count($tour->children) > 0)
                                                    <optgroup label="{{ $tour->c_name }}">
                                                        @foreach($tour->children as $children)
                                                            <option value="{{$tour->id}}">
                                                                {{$tour->c_name}}
                                                            </option>
                                                        @endforeach
                                                    </optgroup>
                                                @else
                                                    <option value="{{$tour->id}}">
                                                        {{$tour->id}}-{{$tour->t_title}}
                                                    </option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4">
                                    <div class="form-group">
                                        <input type="text" name="b_name" class="form-control mg-r-15" placeholder="Tên khách hàng">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4">
                                    <div class="form-group">
                                        <input type="text" name="b_email" class="form-control mg-r-15" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4">
                                    <div class="form-group">
                                        <input type="text" name="b_phone" class="form-control mg-r-15" placeholder="Số điện thoại">
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
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th width="4%" class=" text-center">STT</th>
                                    <th>Tên tour-Mã tour</th>
                                    <th>Thông tin khách hàng</th>
                                    <th>Dữ liệu tour</th>
                                    <th class="text-center">Trạng thái</th>
                                    @if(Auth::user()->can(['full-quyen-quan-ly', 'xoa-va-cap-nhat-trang-thai']))
                                    <th class=" text-center">Hành động</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @if (!$bookTours->isEmpty())
                                    @php $i = $bookTours->firstItem(); @endphp
                                    @foreach($bookTours as $book)
                                        <tr>
                                            <td class="text-center" style="vertical-align: middle; width: 2%">{{ $i }}</td>
                                            <td style="vertical-align: middle; width: 15%" class="title-content">
                                                {{ isset($book->tour) ? $book->tour->t_title : '' }}
                                               <p>({{ isset($book->tour) ? $book->tour->id : '' }})</p>
                                            </td>
                                            <td style="vertical-align: middle; width: 20%" class="title-content">
                                                <p><b>Tên</b>: {{ $book->b_name }}</p>
                                                <p><b>Email</b>: {{ $book->b_email }}</p>
                                                <p><b>Phone</b>: {{ $book->b_phone }}</p>
                                                <p><b>Địa chỉ</b>: {{ $book->user->address }}</p>
                                            </td>
                                            <td style="vertical-align: middle; width: 35%" class="title-content">                                            
                                                <p><b>Số người lớn</b>: {{ $book->b_number_adults }} - <b>Thành tiền</b>: {{ number_format($book->b_number_adults*$book->b_price_adults, 0,',','.') }} vnd</p>
                                                <p><b>Số trẻ em</b>: {{ $book->b_number_children }} - <b>Thành tiền</b>: {{ number_format($book->b_number_children*$book->b_price_children, 0,',','.') }} vnd</p>
                                                <p><b>Số trẻ em (2-6 tuổi) :</b> {{ $book->b_number_child6 }} - <b>Thành tiền</b>: {{ number_format($book->b_number_child6*$book->b_price_child6, 0,',','.') }} vnd</p>
                                            <p><b>Số trẻ em (dưới 2 tuổi) :</b> {{ $book->b_number_child2 }} - <b>Thành tiền</b>: {{ number_format($book->b_number_child2*$book->b_price_child2, 0,',','.') }} vnd</p>

                                                
                                                @php
                                                    $totalPrice = ($book->b_number_adults*$book->b_price_adults) + ($book->b_number_children*$book->b_price_children)+ ($book->b_number_child6*$book->b_price_child6)+ ($book->b_number_child2*$book->b_price_child2)
                                                @endphp
                                                <p><b>Tổng tiền </b>: {{ number_format($totalPrice, 0,',','.') }} vnd</p>
                                                <p><b>mã booking</b>: {{ $book->id }}</p>
                                                <p><b>điểm đón</b>: {{ $book->b_address }}</p>
                                                <p><b>Ghi chú</b>: {{ $book->b_note }}</p>
                                            </td>
                                            <td style="vertical-align: middle; width: 11%">
                                                <button type="button" class="btn btn-block {{ $classStatus[$book->b_status] }} btn-xs">{{ $status[$book->b_status] }}</button>
                                            </td>
                                            @if(Auth::user()->can(['full-quyen-quan-ly', 'xoa-va-cap-nhat-trang-thai']))
                                            <td style="vertical-align: middle; width: 17%">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-success btn-sm">Action</button>
                                                    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                        <span class="caret"></span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <ul class="dropdown-menu action-transaction" role="menu">
                                                        <li><a href="{{ route('book.tour.delete', $book->id) }}" class="btn-confirm-delete"><i class="fa fa-trash"></i>  Delete</a></li>
                                                        @foreach($status as $key => $item)
                                                            <li class="update_book_tour" url='{{ route('book.tour.update.status', ['status' => $key, 'id' => $book->id]) }}'><a><i class="fas fa-check"></i>  {{ $item }}</a></li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                                {{--<a class="btn btn-info btn-sm" target="_blank" href="" title="Thông tin đơn hàng">--}}
                                                    {{--<i class="fa fa-eye"></i>--}}
                                                {{--</a>--}}
                                            </td>
                                            @endif
                                        </tr>
                                        @php $i++ @endphp
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                            @if($bookTours->hasPages())
                                <div class="pagination float-right margin-20">
                                    {{ $bookTours->appends($query = '')->links() }}
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
