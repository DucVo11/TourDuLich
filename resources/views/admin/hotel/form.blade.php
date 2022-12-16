<div class="container-fluid">
    <form role="form" action="" method="post" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <!-- form start -->
                    <div class="card-body">
                        <div class="form-group {{ $errors->first('c_name') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Tên khách sạn <sup class="text-danger">(*)</sup></label>
                            <div>
                                <input type="text" maxlength="100" class="form-control"  placeholder="Tên phòng khách sạn" name="h_name" value="{{ old('h_name',isset($hotel) ? $hotel->h_name : '') }}">
                                <span class="text-danger "><p class="mg-t-5">{{ $errors->first('h_name') }}</p></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label>Địa điểm <sup class="text-danger">(*)</sup></label>
                                    <select class="custom-select" name="h_location_id">
                                        <option value="">Chọn địa điểm</option>
                                        @foreach($locations as $location)
                                            <option
                                                    {{old('t_location_id', isset($hotel->h_location_id ) ? $hotel->h_location_id  : '') == $location->id ? 'selected="selected"' : ''}}
                                                    value="{{$location->id}}"
                                            >
                                                {{$location->l_name}}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger"><p class="mg-t-5">{{ $errors->first('t_location_id') }}</p></span>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select class="custom-select" name="h_status">
                                        @foreach($status as $key => $statu)
                                            <option
                                                    {{old('t_status', isset($hotel->h_status ) ? $hotel->h_status : '') == $key ? 'selected="selected"' : ''}}
                                                    value="{{$key}}"
                                            >
                                                {{$statu}}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger"><p class="mg-t-5">{{ $errors->first('t_status') }}</p></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Giá từ / ngày</label>
                                    <div>
                                        <input type="number" class="form-control"  placeholder="Giá" name="h_price" value="{{ old('h_price',isset($hotel) ? $hotel->h_price : '') }}">
                                        <span class="text-danger "><p class="mg-t-5">{{ $errors->first('h_price') }}</p></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Điện thoại liên hệ</label>
                                    <div>
                                        <input type="text" class="form-control"  placeholder="Điện thoại liên hệ" name="h_phone" value="{{ old('h_phone',isset($hotel) ? $hotel->h_phone : '') }}">
                                        <span class="text-danger "><p class="mg-t-5">{{ $errors->first('h_phone') }}</p></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <div>
                                        <input type="text" class="form-control"  placeholder="Địa chỉ" name="h_address" value="{{ old('h_address',isset($hotel) ? $hotel->h_address : '') }}">
                                        <span class="text-danger "><p class="mg-t-5">{{ $errors->first('h_address') }}</p></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group {{ $errors->first('h_description') ? 'has-error' : '' }}">
                            <label for="inputEmail3" class="control-label default">Mô tả</label>
                            <div>
                                <textarea name="h_description" id="h_description" cols="20" rows="8" style="resize:vertical; height: 218px;" class="form-control" placeholder="Mô tả ...">{{ old('h_description',isset($hotel) ? $hotel->h_description : '') }}</textarea>
                                <span class="text-danger"><p class="mg-t-5">{{ $errors->first('h_description') }}</p></span>
                                <script>
                                    ckeditor(h_description);
                                </script>
                            </div>
                        </div>
                        <div class="form-group {{ $errors->first('h_content') ? 'has-error' : '' }}">
                            <label for="inputEmail3" class="control-label default">Nội dung </label>
                            <div>
                                <textarea name="h_content" id="h_content" cols="20" rows="8" style="resize:vertical; height: 218px;" class="form-control" placeholder="Mô tả ...">{{ old('h_content',isset($hotel) ? $hotel->h_content : '') }}</textarea>
                                <span class="text-danger"><p class="mg-t-5">{{ $errors->first('h_content') }}</p></span>
                                <script>
                                    ckeditor(h_content);
                                </script>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title"> Xuất bản</h3>
                    </div>
                    <div class="card-body">
                        <div class="btn-set">
                            <button type="submit" name="submit" class="btn btn-info">
                                <i class="fa fa-save"></i> Lưu dữ liệu
                            </button>
                            <button type="reset" name="reset" value="reset" class="btn btn-danger">
                                <i class="fa fa-undo"></i> Reset
                            </button>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-header">
                        <h3 class="card-title">Hình ảnh </h3>
                    </div>
                    <div class="card-body" style="min-height: 288px">
                        <div class="form-group">
                            <div class="input-group input-file" name="images">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                </span>
                                <input type="text" class="form-control" placeholder='Không có tệp nào ...'/>
                                <span class="input-group-btn"></span>
                            </div>
                            <span class="text-danger "><p class="mg-t-5">{{ $errors->first('images') }}</p></span>
                            @if(isset($hotel) && !empty($hotel->h_image))
                                <img src="{{ asset(pare_url_file($hotel->h_image)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                            @else
                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
