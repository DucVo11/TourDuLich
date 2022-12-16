<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class Category extends Model
{
    use HasFactory;
    protected $table = 'categories';
    public $timestamps = true;
    const TYPES = [
        1 => 'Sản phẩm',
        2 => 'Tin tức'
    ];
     const STATUS = [
         1 => 'Hiển thị',
         2 => 'Ẩn'
     ];


    protected $fillable = ['c_name', 'c_parent_id', 'c_slug', 'c_avatar', 'c_banner', 'c_description', 'c_hot', 'c_status', 'c_type'];


    public function children()
    {
        return $this->hasMany(self::class, 'c_parent_id', 'id');
    }

    public function parent(){
        return $this->hasOne(self::class, 'id', 'c_parent_id')->select('id', 'c_name');
    }

    public function getParents()
    {
        return $this->whereNull('c_parent_id')->orderByDesc('id')->get();
    }

    public function news()
    {
        return $this->hasMany(Article::class, 'a_category_id', 'id')->where('a_active', 1);
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
                $params['c_banner'] = $image['name'];
        }
        $params['c_slug'] = Str::slug($request->c_name);
        $params['c_user_id'] = Auth::user()->id;
        if ($id) {
           return $this->find($id)->update($params);
        }
        return $this->create($params);
    }
}
