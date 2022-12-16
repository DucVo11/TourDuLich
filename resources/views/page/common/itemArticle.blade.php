<div class="col-md-4 d-flex ftco-animate fadeInUp ftco-animated">
    <div class="blog-entry justify-content-end">
        <a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}"
           class="block-20" style="background-image: url({{ asset(pare_url_file($article->a_avatar)) }});" alt="{{ $article->a_title }}">
        </a>
        <div class="text">
            <div class="d-flex align-items-center mb-4 topp">
                <div class="one">
                    <span class="day">{{ date('d', strtotime($article->created_at)) }}</span>
                </div>
                <div class="two">
                    <span class="yr">{{ date('Y', strtotime($article->created_at)) }}</span>
                    <span class="mos">{{ date('M', strtotime($article->created_at)) }}</span>
                </div>
            </div>
            <h3 class="heading" title="{{ $article->a_title }}">
                <a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}">
                    {{ the_excerpt($article->a_title, 100) }}
                </a>
            </h3>
            <p>{!! the_excerpt($article->a_description, 200) !!}</p>
            <p><a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}" class="btn btn-primary">Xem thêm</a></p>
        </div>
    </div>
</div>