<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Hotel extends Model
{
    use HasFactory;
    protected $table = 'hotels';
    public $timestamps = true;

    const STATUS = [
        1 => 'Xuất bản',
        2 => 'Bản nháp'
    ];

    protected $fillable = [
        'h_name',
        'h_image',
        'h_anbum_image',
        'h_address',
        'h_phone',
        'h_number_people',
        'h_price',
        'h_sale',
        'h_description',
        'h_content',
        'h_status',
        'h_start_date',
        'h_end_date',
        'h_location_id',
        'h_user_id ',
    ];

    public function location ()
    {
        return $this->belongsTo(Location::class, 'h_location_id', 'id')->where('l_status', 1);
    }

    public function user ()
    {
        return $this->belongsTo(User::class, 'h_user_id', 'id');
    }

    public function createOrUpdate($request , $id ='')
    {
        $params = $request->except(['images', '_token', 'submit']);

        if (isset($request->images) && !empty($request->images)) {
            $image = upload_image('images');
            if ($image['code'] == 1)
                $params['h_image'] = $image['name'];
        }

        $params['h_user_id'] = Auth::user()->id;
        if ($id) {
            return $this->find($id)->update($params);
        }
        return $this->create($params);
    }

    public function scopeActive($query)
    {
        return $query->where('h_status', 1);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, 'cm_hotel_id', 'id');
    }
}
