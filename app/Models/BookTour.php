<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookTour extends Model
{
    use HasFactory;
    protected $table = 'book_tours';
    public $timestamps = true;

    const STATUS = [
        1 => 'Tiếp nhận',
        2 => 'Đã xác nhận',
        3 => 'Đã thanh toán',
       // 4 => 'Đã kết thúc',
        5 => 'Đã hủy',
    ];
    const CLASS_STATUS = [
        1 => 'btn-secondary',
        2 => 'btn-info',
        3 => 'btn-success',
       // 4 => 'btn-warning',
        5 => 'btn-danger',
    ];

    protected $fillable = ['b_tour_id', 'b_user_id', 'b_name', 'b_email', 'b_phone', 'b_address', 'b_start_date', 'b_note', 'b_number_adults', 'b_number_children','b_price_adults','b_price_children','b_number_child6','b_number_child2','b_price_child6','b_price_child2','b_status'];

    public function tour()
    {
        return $this->belongsTo(Tour::class, 'b_tour_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'b_user_id', 'id');
    }
}
