<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tour;
use App\Models\User;
use App\Models\BookTour;
use App\Http\Requests\BookTourRequest;
use Illuminate\Support\Facades\Auth;
use Mail;

class TourController extends Controller
{
    //
    public function index(Request $request)
    {
        $tours = Tour::with('user');

        if ($request->key_tour) {
            $tours->where('t_title', 'like', '%'. $request->key_tour .'%');
        }

        if ($request->t_start_date) {
            $startDate = date('Y-m-d', strtotime($request->t_start_date));
            $tours->where('t_start_date', '>=', $startDate);
        }

        if ($request->t_end_date) {
            $endDate = date('Y-m-d', strtotime($request->t_end_date));
            $tours->where('t_end_date', '<=', $endDate);
        }

        if ($request->price) {
            $price = explode('-', $request->price);
            $tours->whereBetween('t_price_adults', [$price[0], $price[1]]);
        }

        $tours = $tours->orderBy('t_start_date')->paginate(NUMBER_PAGINATION_PAGE);

        $viewData = [
            'tours' => $tours
        ];
        return view('page.tour.index', $viewData);
    }

    public function detail(Request $request, $id)
    {
        $tour = Tour::with(['comments' => function($query) use ($id){
            $query->with(['user', 'replies' => function($q) {
                $q->with('user')->limit(10);
            }])->where('cm_tour_id', $id)->limit(20)->orderByDesc('id');
        }])->find($id);

        if (!$tour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }
        $tours = Tour::where('t_location_id', $tour->t_location_id)->where('id', '<>', $id)->orderBy('id')->limit(NUMBER_PAGINATION_PAGE)->get();

        return view('page.tour.detail', compact('tour', 'tours'));
    }

    public function bookTour(Request $request, $id, $slug)
    {
        if (!Auth::guard('users')->check()) {
            return redirect()->back()->with('error', 'Vui lòng đăng nhập để đặt tour');
        }
        $tour = Tour::find($id);

        if (!$tour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }
        $user =  User::find(Auth::guard('users')->user()->id);

        return view('page.tour.book', compact('tour', 'user'));
    }

    public function postBookTour(BookTourRequest $request, $id)
    {
        $tour = Tour::find($id);
        $numberUser = $request->b_number_adults + $request->b_number_children+ $request->b_number_child6+ $request->b_number_child2;
        if (($tour->t_number_registered + $numberUser) > $tour->t_number_guests) {
            return redirect()->back()->with('error', 'Số lượng người đăng ký đã vượt quá giới hạn');
        }

        \DB::beginTransaction();
        try {
            $params = $request->except(['_token']);
            $user = Auth::guard('users')->user();
            $params['b_tour_id'] = $id;
            $params['b_user_id'] = $user->id;
            $params['b_status'] = 1;
            $params['b_price_adults']= $tour->t_price_adults -( $tour->t_price_adults* $tour->t_sale/100);
            $params['b_price_children']=$tour->t_price_children -( $tour->t_price_children* $tour->t_sale/100); 
            $params['b_price_child6']=($tour->t_price_children -( $tour->t_price_children* $tour->t_sale/100))*50/100;
            $params['b_price_child2']=($tour->t_price_children -( $tour->t_price_children* $tour->t_sale/100))*25/100;
            $book = BookTour::create($params);
            if ($book) {
                $tour->t_follow = $tour->t_follow + $numberUser;
                $tour->save();
            }
            \DB::commit();

            $mail =$user->email;
            Mail::send('emailtn',compact('book','tour','user'),function($email) use($mail){
                $email->subject('Thông tin xác nhận đơn Booking');
                $email->to($mail);
            });
            return redirect()->route('page.home')->with('success', 'Cám ơn bạn đã đặt tour chúng tôi sẽ liên hệ sớm để xác nhận.');
            
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }
    public function loi()
    {
      
            return redirect()->back()->with('error', 'Số lượng người đăng ký đã vượt quá giới hạn');

    }
}
