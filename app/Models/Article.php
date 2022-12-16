<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class Article extends Model
{
    use HasFactory;
    protected $table = 'articles';
    public $timestamps = true;
    const ACTIVES = [
        1 => 'Xuất bản',
        2 => 'Bản nháp'
    ];
    protected $fillable = [
        'a_title',
        'a_slug',
        'a_hot',
        'a_active',
        'a_view',
        'a_description',
        'a_avatar',
        'a_content',
        'a_category_id',
        'a_user_id',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'a_category_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'a_user_id', 'id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, 'cm_article_id', 'id');
    }

    /**
     * @param $request
     * @param string $id
     * @return mixed
     */
    public function createOrUpdate($request , $id ='')
    {
        $params = $request->except(['images', '_token']);
        if (isset($request->images) && !empty($request->images)) {
            $image = upload_image('images');
            if ($image['code'] == 1)
                $params['a_avatar'] = $image['name'];
        }
        $params['a_slug'] = Str::slug($request->a_name);
        $params['a_user_id'] = Auth::user()->id;
        if ($id) {
            return $this->find($id)->update($params);
        }
        return $this->create($params);
    }

    public function scopeActive($query)
    {
        return $query->where('a_active', 1);
    }
}
