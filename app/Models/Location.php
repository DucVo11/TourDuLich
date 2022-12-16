<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class Location extends Model
{
    use HasFactory;
    protected $table = 'locations';
    public $timestamps = true;

    protected $fillable = [
        'l_name',
        'l_slug',
        'l_image',
        'l_description',
        'l_content',
        'l_status',
        'l_user_id',
    ];

    const STATUS = [
        1 => 'Hiển thị',
        2 => 'Ẩn'
    ];

    public function createOrUpdate($request , $id ='')
    {
        $params = $request->except(['images', '_token']);
        if (isset($request->images) && !empty($request->images)) {
            $image = upload_image('images');
            if ($image['code'] == 1)
                $params['l_image'] = $image['name'];
        }
        $params['l_slug'] = Str::slug($request->l_name);
        $params['l_user_id'] = Auth::user()->id;
        if ($id) {
            return $this->find($id)->update($params);
        }
        return $this->create($params);
    }

    public function tours()
    {
        return $this->hasMany(Tour::class, 't_location_id', 'id')->where('t_status', 1);
    }

    public function scopeActive($query)
    {
        return $query->where('l_status', 1);
    }
}
