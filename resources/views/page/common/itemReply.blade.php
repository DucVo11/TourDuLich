<li class="comment">
    <div class="vcard bio">
        <img src="{{ asset(isset($reply) && !empty($reply->user->avatar) ? $reply->user->avatar : 'page/images/person_1.jpg') }}" alt="Image placeholder">
    </div>
    <div class="reply-body">
        <h3>{{ isset($reply) && !empty($reply->user->name) ? $reply->user->name : 'User Default' }}</h3>
        <div class="meta">{{ date('Y-m-d H:i', strtotime($reply->created_at)) }}</div>
        <p>{!! $reply->cm_content !!}</p>
        @if (empty($reply->cm_reply_id ))
            <p><a href="#" class="reply">Reply</a></p>
        @endif
    </div>
</li>