<div class="{{ !isset($itemHotel) ? 'col-md-4' : '' }} ftco-animate fadeInUp ftco-animated {{ isset($itemHotel) ? $itemHotel : '' }}">
    <div class="project-wrap hotel">
        <a href="{{ route('hotel.detail', ['id' => $hotel->id, 'slug' => safeTitle($hotel->h_name)]) }}"
           class="img" style="background-image: url({{ $hotel->h_image ? asset(pare_url_file($hotel->h_image)) : asset('admin/dist/img/no-image.png') }});">
            <span class="price">{{ number_format($hotel->h_price,0,',','.') }} vnd</span>
        </a>
        <div class="text p-4">
            <h3>
                <a href="{{ route('hotel.detail', ['id' => $hotel->id, 'slug' => safeTitle($hotel->h_name)]) }}" title="{{ $hotel->h_name }}">
                    {{ the_excerpt($hotel->h_name, 100) }}
                </a>
            </h3>
            <p class="location"><span class="fa fa-map-marker" style="margin-right: 10px"></span>{{ isset($hotel->location) ? $hotel->location->l_name : '' }}</p>
            <p>{!! the_excerpt($hotel->h_description, 200) !!}</p>
            <p><a href="{{ route('hotel.detail', ['id' => $hotel->id, 'slug' => safeTitle($hotel->h_name)]) }}" title="{{ $hotel->h_name }}" class="btn btn-primary">Xem thêm</a></p>
        </div>

    </div>
</div>
