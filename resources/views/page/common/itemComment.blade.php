<li class="comment">
    <div class="vcard bio">
        <img src="{{ asset(isset($comment) && !empty($comment->user->avatar) ? asset(pare_url_file($comment->user->avatar)) : 'page/images/person_1.jpg') }}" alt="Image placeholder">
    </div>
    <div class="comment-body">
        <h3>{{ isset($comment) && !empty($comment->user->name) ? $comment->user->name : 'User Default' }}</h3>
        <div class="meta">{{ date('Y-m-d H:i', strtotime($comment->created_at)) }}</div>
        <div>
            {!! str_replace('\n', '</ br>', $comment->cm_content) !!}
        </div>
    </div>
</li>