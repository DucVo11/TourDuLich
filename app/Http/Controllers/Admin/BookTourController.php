<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\BookTour;
use App\Models\Tour;
use App\Models\User;
use Mail;

class BookTourController extends Controller
{
    public function __construct(BookTour $bookTour,Tour $tour)
    {
        view()->share([
            'book_tour_active' => 'active',
            'status' => $bookTour::STATUS,
            'classStatus' => $bookTour::CLASS_STATUS,
            'tours' => $tour::get(),
        ]);
        $this->bookTour = $bookTour;
    }
    //
    public function index(Request $request)
    {
        $bookTours = BookTour::with(['tour', 'user']);
      

        if ($request->name_tour) {
            $nameTour = $request->name_tour;
            $bookTours->whereIn('b_tour_id', function ($q) use ($nameTour) {
                $q->from('tours')
                    ->select('id')
                    ->where('t_title', 'like', '%'.$nameTour.'%');
            });
        }
        
        if ($request->b_tour_id) {
            $bookTours->where('b_tour_id', $request->b_tour_id);
          
        }
        if ($request->b_name) {
            $bookTours->where('b_name', 'like', '%'.$request->b_name.'%');
        }
        if ($request->b_email) {
            $bookTours->where('b_email', $request->b_email);
        }

        if ($request->b_phone) {
            $bookTours->where('b_phone', $request->b_phone);
        }

        $bookTours = $bookTours->orderByDesc('id')->paginate(NUMBER_PAGINATION_PAGE);
        return view('admin.book_tour.index', compact('bookTours'));
    }

    public function delete($id)
    {
        $bookTour = BookTour::find($id);
        if (!$bookTour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        try {
            $bookTour->delete();
            return redirect()->back()->with('success', 'Xóa thành công');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', 'Đã xảy ra lỗi không thể xóa dữ liệu');
        }
    }

    public function updateStatus(Request $request, $status, $id)
    {
        $bookTour = BookTour::find($id);
        $numberUser = $bookTour->b_number_adults + $bookTour->b_number_children+ $bookTour->b_number_child6+ $bookTour->b_number_child2;
        if (!$bookTour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }
    $temp= $bookTour->b_status;
        \DB::beginTransaction();
        if($status != $bookTour->b_status && $status > $bookTour->b_status ){
        try {
            $bookTour->b_status = $status;
            
            if ($bookTour->save()) {
                if($status == 4 && $temp !=3){
                    return redirect()->back()->with('error', 'thao tác lỗi');
                }
                if ($status == 5 ) {
                    if($temp ==4 ) {
                        return redirect()->back()->with('error', 'Thao tác sai');
                    }
                    if($temp==1){
                        $tour = Tour::find($bookTour->b_tour_id);
                    $tour->t_follow= $tour->t_follow - $numberUser;                   
                    $tour->save();
                    $user = User::find($bookTour->b_user_id);
                    $mailuser =$user->email;
                    Mail::send('emailhuy',compact('user','bookTour','tour'),function($email) use($mailuser){
                        $email->subject('Xác nhận HUỶ BOOKING');
                        $email->to($mailuser);
                    });
                    }else {
                        $tour = Tour::find($bookTour->b_tour_id);
                    $tour->t_number_registered = $tour->t_number_registered - $numberUser;                   
                    $tour->save();
                    $user = User::find($bookTour->b_user_id);
                    $mailuser =$user->email;
                    Mail::send('emailhuy',compact('user','bookTour','tour'),function($email) use($mailuser){
                        $email->subject('Xác nhận HUỶ BOOKING');
                        $email->to($mailuser);
                    });
                    }
                    
                } 
                if($status==3){
                   
                    if($temp == 2) {
                        $tour = Tour::find($bookTour->b_tour_id);
                        $user = User::find($bookTour->b_user_id);
                        $mailuser =$user->email;
                        Mail::send('emailtt',compact('user','bookTour','tour'),function($email) use($mailuser){
                            $email->subject('Xác nhận thanh toán');
                            $email->to($mailuser);
                        });
                    }
                    if($temp == 1) {

                        $tour = Tour::find($bookTour->b_tour_id);
                        $tour->t_number_registered = $tour->t_number_registered + $numberUser;
                        $tour->t_follow = $tour->t_follow - $numberUser;
                        $tour->save();
                        $user = User::find($bookTour->b_user_id);
                        $mailuser =$user->email;
                        Mail::send('emailtt',compact('user','bookTour','tour'),function($email) use($mailuser){
                            $email->subject('Xác nhận thanh toán');
                            $email->to($mailuser);
                        });
                    }
                    
                }
                if($status==2  ){
                   
                    $tour = Tour::find($bookTour->b_tour_id);
                    $tour->t_number_registered = $tour->t_number_registered + $numberUser;
                    $tour->t_follow = $tour->t_follow - $numberUser;
                    $tour->save();
                    $user = User::find($bookTour->b_user_id);
                    $mailuser =$user->email;
                    Mail::send('email',compact('user','bookTour','tour'),function($email) use($mailuser){
                        $email->subject('Xác nhận booking');
                        $email->to($mailuser);
                    });
                }
            }
           
            \DB::commit();
            return redirect()->route('book.tour.index')->with('success', 'Lưu dữ liệu thành công');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }else {
        return redirect()->back()->with('error', 'Lỗi thao tác');
    }
    }
}
