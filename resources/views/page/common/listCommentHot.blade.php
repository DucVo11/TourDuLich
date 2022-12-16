<section class="ftco-section testimony-section bg-bottom" style="background-image: url({{ asset('page/images/bg_1.jpg') }});">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center pb-4">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                <span class="subheading">Danh sách</span>
                <h2 class="mb-4">Bình luận nổi bật</h2>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel">
                    @if($comments->count() > 0)
                        @foreach($comments as $comment)
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="text item-comment">
                                        <p class="mb-4">{!! the_excerpt($comment->cm_content, 150) !!}</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url({{ asset(isset($comment) && !empty($comment->user->avatar) ? asset(pare_url_file($comment->user->avatar)) : 'page/images/person_1.jpg') }})"></div>
                                            <div class="pl-3">
                                                <p class="name">{!! $comment->user->name !!}</p>
                                                <span class="position">Thành viên</span>
                                            </div>
                                        </div>
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