@extends('page.layouts.page')
@section('title', 'Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2022')
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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Tin tức <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Tin tức</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 ftco-animate py-md-5 mt-md-5 fadeInUp ftco-animated">
                    <h2 class="mb-3">{{ $article->a_title }}</h2>
                    <div class="description">
                        <p>
                            {!! $article->a_description !!}
                        </p>
                        <img src="{{ $article->a_avatar ? asset(pare_url_file($article->a_avatar)) : asset('admin/dist/img/no-image.png') }}" alt="" class="img-fluid">
                    </div>
                    <div class="content">
                        {!! $article->a_content !!}

                        <div class="pt-5 mt-5 py-5" style="border-top: 1px solid #ccc;">
                            <h3 class="mb-5" style="font-size: 20px; font-weight: bold;">Danh sách bình luận</h3>
                            <ul class="comment-list">
                                @if ($article->comments->count() > 0)
                                    @foreach($article->comments as $key => $comment)
                                        @include('page.common.itemComment', compact('comment'))
                                    @endforeach
                                @endif
                            </ul>
                            <!-- END comment-list -->

                            <div class="comment-form-wrap pt-5">
                                <h3 class="mb-5" style="font-size: 20px; font-weight: bold;">{{ Auth::guard('users')->check() ? 'Bình luận về tour du lịch' : 'Bạn cần đăng nhập để bình luận' }}</h3>
                                @if (Auth::guard('users')->check())
                                    <form action="#" class="p-5 bg-light">
                                        <div class="form-group">
                                            <label for="message">Nội dung</label>
                                            <textarea name="" id="message" cols="30" rows="5" class="form-control"></textarea>
                                            <span class="text-errors-comment" style="display: none;">Vui lòng nhập nội dung bình luận !!!</span>
                                        </div>
                                        <div class="form-group">
                                            <input type="" value="Gửi bình luận" class="btn py-3 px-4 btn-primary btn-comment" article_id="{{ $article->id }}">
                                        </div>
                                    </form>
                                @endif
                            </div>
                        </div>
                    </div>

                </div> <!-- .col-md-8 -->
                <div class="col-lg-4 sidebar ftco-animate bg-light py-md-5 fadeInUp ftco-animated">
                    <div class="sidebar-box pt-md-5">
                        <form action="{{ route('articles.index') }}" class="search-form">
                            <div class="form-group">
                                <span class="icon fa fa-search"></span>
                                <input type="text" name="key_search" class="form-control" placeholder="Tìm kiếm...">
                            </div>
                        </form>
                    </div>
                    <div class="sidebar-box ftco-animate fadeInUp ftco-animated">
                        <div class="categories">
                            <h3>Danh mục</h3>
                            @foreach($categories as $category)
                                <li><a href="#">{{ $category->c_name }} <span>({{ isset($category->news) ? $category->news->count() : 0 }})</span></a></li>
                            @endforeach
                        </div>
                    </div>

                    <div class="sidebar-box ftco-animate fadeInUp ftco-animated">
                        <h3>Bài viết mới</h3>
                        @if ($articles->count() > 0)
                            @foreach($articles as $article)
                                <div class="block-21 mb-4 d-flex">
                                    <a class="blog-img mr-4" style="background-image: url({{ $article->a_avatar ? asset(pare_url_file($article->a_avatar)) : asset('admin/dist/img/no-image.png') }}););"></a>
                                    <div class="text">
                                        <h3 class="heading">
                                            <a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}">
                                                {{ the_excerpt($article->a_title, 100) }}
                                            </a>
                                        </h3>
                                        <div class="meta">
                                            <div>
                                                <a href="#">
                                                    <span class="fa fa-calendar"></span>
                                                    {{ date('M', strtotime($article->created_at)) }} {{ date('d', strtotime($article->created_at)) }}, {{ date('Y', strtotime($article->created_at)) }}
                                                </a>
                                            </div>
                                            <div><a href="#"><span class="fa fa-user"></span> {{ $article->user ? $article->user->name : '' }}</a></div>
                                            {{--<div><a href="#"><span class="fa fa-comment"></span> 19</a></div>--}}
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>

            </div>
        </div>
    </section>
@stop
@section('script')
@stop