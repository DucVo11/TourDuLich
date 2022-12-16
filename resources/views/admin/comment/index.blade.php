@extends('admin.layouts.main')
@section('title', '')
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="{{ route('admin.home') }}"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('comment.index') }}">Bình luận</a></li>
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
                                        <input type="text" name="name" class="form-control mg-r-15" placeholder="Tên người bình luận">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4">
                                    <div class="form-group">
                                        <input type="text" name="email" class="form-control mg-r-15" placeholder="Email">
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
                                    <th>Tên user</th>
                                    <th>Email</th>
                                    <th>Nội dung</th>
                                    <th class="text-center">Trạng thái</th>
                                    @if(Auth::user()->can(['full-quyen-quan-ly']))
                                        <th class=" text-center">Hành động</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @if (!$comments->isEmpty())
                                    @php $i = $comments->firstItem(); @endphp
                                    @foreach($comments as $comment)
                                        <tr>
                                            <td class="text-center" style="vertical-align: middle; width: 2%">{{ $i }}</td>
                                            <td style="vertical-align: middle; width: 10%" class="title-content">
                                                {{ isset($comment->user) ? $comment->user->name : '' }}
                                            </td>
                                            <td style="vertical-align: middle; width: 10%" class="title-content">
                                                {{ isset($comment->user) ? $comment->user->email : '' }}
                                            </td>
                                            <td style="vertical-align: middle;">
                                                {{ $comment->cm_content }}
                                            </td>
                                            <td style="vertical-align: middle; width: 11%">
                                                <button type="button" class="btn btn-block {{ $classStatus[$comment->cm_status] }} btn-xs">{{ $status[$comment->cm_status] }}</button>
                                            </td>
                                            @if(Auth::user()->can(['full-quyen-quan-ly', ]))
                                                <td style="vertical-align: middle; width: 17%" class="text-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-success btn-sm">Action</button>
                                                        <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                            <span class="caret"></span>
                                                            <span class="sr-only">Toggle Dropdown</span>
                                                        </button>
                                                        <ul class="dropdown-menu action-transaction" role="menu">
                                                            <li><a href="{{ route('comment.delete', $comment->id) }}" class="btn-confirm-delete"><i class="fa fa-trash"></i>  Delete</a></li>
                                                            @foreach($status as $key => $item)
                                                                <li class="update_book_tour" url='{{ route('comment.update.status', ['status' => $key, 'id' => $comment->id]) }}'><a><i class="fas fa-check"></i>  {{ $item }}</a></li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </td>
                                            @endif
                                        </tr>
                                        @php $i++ @endphp
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                            @if($comments->hasPages())
                                <div class="pagination float-right margin-20">
                                    {{ $comments->appends($query = '')->links() }}
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
