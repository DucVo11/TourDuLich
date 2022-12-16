<div class="container-fluid">
    <form role="form" action="" method="post" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <!-- form start -->
                    <div class="card-body">
                        <div class="form-group {{ $errors->first('a_title') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Tiêu đề bài viết <sup class="text-danger">(*)</sup></label>
                            <div>
                                <input type="text" maxlength="180" class="form-control"  placeholder="Tiêu đề bài viết" name="a_title" value="{{ old('a_title',isset($article) ? $article->a_title : '') }}">
                                <span class="text-danger "><p class="mg-t-5">{{ $errors->first('a_title') }}</p></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label>Danh mục <sup class="text-danger">(*)</sup></label>
                                    <select class="custom-select" name="a_category_id">
                                        <option value="">Chọn danh mục</option>
                                        @foreach($categories as $category)
                                            <option
                                                    {{old('a_category_id', isset($article->a_category_id ) ? $article->a_category_id  : '') == $category->id ? 'selected="selected"' : ''}}
                                                    value="{{$category->id}}"
                                            >
                                                {{$category->c_name}}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger"><p class="mg-t-5">{{ $errors->first('a_category_id') }}</p></span>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select class="custom-select" name="a_active">
                                        @foreach($actives as $key => $active)
                                            <option
                                                    {{old('a_active', isset($article->a_active ) ? $article->a_active : '') == $key ? 'selected="selected"' : ''}}
                                                    value="{{$key}}"
                                            >
                                                {{$active}}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger"><p class="mg-t-5">{{ $errors->first('a_active') }}</p></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group {{ $errors->first('a_description') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Mô tả ngắn </label>
                            <div>
                                <textarea name="a_description" id="a_description" cols="30" rows="10" class="form-control" style="height: 225px;">{{ old('a_description', isset($article) ? $article->a_description : '') }}</textarea>
                                <script>
                                    ckeditor(a_description);
                                </script>
                                @if ($errors->first('a_description'))
                                    <span class="text-danger">{{ $errors->first('a_description') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group {{ $errors->first('a_content') ? 'has-error' : '' }} ">
                            <label for="inputEmail3" class="control-label default">Nội dung bài viết </label>
                            <div>
                                <textarea name="a_content" id="a_content" cols="30" rows="10" class="form-control" style="height: 225px;">{{ old('a_content', isset($article) ? $article->a_content : '') }}</textarea>
                                <script>
                                    ckeditor(a_content);
                                </script>
                                @if ($errors->first('a_content'))
                                    <span class="text-danger">{{ $errors->first('a_content') }}</span>
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
                            @if(isset($article) && !empty($article->a_avatar))
                                <img src="{{ asset(pare_url_file($article->a_avatar)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                            @else
                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                            @endif
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
    </form>
</div>
