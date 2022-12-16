<div class="container-fluid">
    <form role="form" action="" method="post" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <!-- form start -->
                    <div class="card-body">
                        <div class="form-group {{ $errors->first('l_name') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Tên địa điểm <sup class="text-danger">(*)</sup></label>
                            <div>
                                <input type="text" maxlength="100" class="form-control"  placeholder="Tên địa điểm" name="l_name" value="{{ old('l_name',isset($location) ? $location->l_name : '') }}">
                                <span class="text-danger "><p class="mg-t-5">{{ $errors->first('l_name') }}</p></span>
                            </div>
                        </div>
                        <div class="form-group {{ $errors->first('l_description') ? 'has-error' : '' }}">
                            <label for="inputEmail3" class="control-label default">Mô tả</label>
                            <div>
                                <textarea name="l_description" cols="20" rows="8" style="resize:vertical; height: 218px;" class="form-control" placeholder="Mô tả ...">{{ old('l_description',isset($location) ? $location->l_description : '') }}</textarea>
                                <span class="text-danger"><p class="mg-t-5">{{ $errors->first('l_description') }}</p></span>
                            </div>
                        </div>
                        <div class="form-group {{ $errors->first('l_content') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Giới thiệu </label>
                            <div>
                                <textarea name="l_content" id="l_content" cols="30" rows="10" class="form-control" style="height: 225px;">{{ old('l_content', isset($location) ? $location->l_content : '') }}</textarea>
                                <script>
                                    ckeditor(l_content);
                                </script>
                                @if ($errors->first('l_content'))
                                    <span class="text-danger">{{ $errors->first('l_content') }}</span>
                                @endif
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
                    <div class="card-header">
                        <h3 class="card-title">Trạng thái </h3>
                    </div>
                    <div class="card-body">
                        <select class="custom-select" name="l_status">
                            @foreach($status as $key => $item)
                                <option
                                        {{old('l_status', isset($location->l_status) ? $location->l_status : '') == $key ? 'selected="selected"' : ''}}
                                        value="{{$key}}"
                                >
                                    {{$item}}
                                </option>
                            @endforeach
                        </select>
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
                            @if(isset($location) && !empty($location->l_image))
                                <img src="{{ asset(pare_url_file($location->l_image)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
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
