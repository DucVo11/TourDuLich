<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\UpdateInfoAccountRequest;
use App\Http\Requests\ChangePasswordRequest;
use App\Models\User;
use App\Models\BookTour;
use App\Models\Tour;
use Mail;

class AccountController extends Controller
{
    public function __construct(BookTour $bookTour)
    {
        view()->share([
            'status' => $bookTour::STATUS,
            'classStatus' => $bookTour::CLASS_STATUS,
        ]);
    }
    //
    public function infoAccount()
    {
        $user = Auth::guard('users')->user();
        return view('page.auth.account', compact('user'));
    }

    public function updateInfoAccount(UpdateInfoAccountRequest $request)
    {
        \DB::beginTransaction();
        try {
            $user =  User::find(Auth::guard('users')->user()->id);
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->address = $request->address;

            if (isset($request->images) && !empty($request->images)) {
                $image = upload_image('images');
                if ($image['code'] == 1)
                    $user->avatar = $image['name'];
            }

            $user->save();
            \DB::commit();
            return redirect()->back()->with('success', 'Cập nhật thành công.');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi không thể cập nhật tài khoản');
        }
    }

    public function changePassword()
    {
        return view('page.auth.change_password');
    }

    public function postChangePassword(ChangePasswordRequest $request)
    {
        \DB::beginTransaction();
        try {
            $user =  User::find(Auth::guard('users')->user()->id);
            $user->password = bcrypt($request->password);
            $user->save();
            \DB::commit();
            Auth::guard('users')->logout();
            return redirect()->route('page.user.account')->with('success', 'Đổi mật khẩu thành công.');
        } catch (\Exception $exception) {
            DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi không thể đổi mật khẩu');
        }
    }


    public function cancelTour($id)
    {
        \DB::beginTransaction();
        try {
            
            \DB::commit();

            return response([
                'status_code' => 200,
                'message' => 'Hủy thành công đơn hàng',
            ]);
        } catch (\Exception $exception) {
            \DB::rollBack();
            $code = 404;
            return response([
                'status_code' => $code,
                'message' => 'Không thể hủy đơn hàng',
            ]);
        }
    }

    public function myTour()
    {
        $user = Auth::guard('users')->user();
        $bookTours = BookTour::with(['tour'])->where('b_user_id', $user->id)->orderByDesc('id')->paginate(NUMBER_PAGINATION_PAGE);
        return view('page.auth.my_tour', compact('bookTours'));
    }

    public function updateStatus(Request $request, $status, $id)
    {
        $bookTour = BookTour::find($id);
        $numberUser = $bookTour->b_number_adults + $bookTour->b_number_children;
        if (!$bookTour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        \DB::beginTransaction();
        if($status != $bookTour->b_status){
        try {
            $bookTour->b_status = $status;
            if ($bookTour->save()) {
                if ($status == 5 ) {
                    $tour = Tour::find($bookTour->b_tour_id);
                    $numberRegistered = $tour->t_number_registered - $numberUser;
                    $tour->t_number_registered = $numberRegistered > 0 ? $numberRegistered : 0;
                    $tour->save();
                    
                }
            }
            $tour = Tour::find($bookTour->b_tour_id);
            $user = User::find($bookTour->b_user_id);
            $mailuser =$user->email;
                    Mail::send('emailhuy',compact('user','bookTour','tour'),function($email) use($mailuser){
                        $email->subject('Xác nhận HUỶ BOOKING');
                        $email->to($mailuser);
                    });
            \DB::commit();
           
            return response([
                'status_code' => 200,
                'message' => 'Hủy thành công đơn hàngg',
            ]);
        } catch (\Exception $exception) {
            \DB::rollBack();
            $code = 404;
            return response([
                'status_code' => $code,
                'message' => 'Không thể hủy đơn hàng',
            ]);
        }}
        else {
            return redirect()->back()->with('error', 'Trạng thái đã tồn tại');
        }
    }
}
