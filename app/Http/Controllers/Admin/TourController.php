<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tour;
use App\Models\Location;
use App\Http\Requests\TourRequest;

class TourController extends Controller
{
    //
    protected $tour;
    //
    /**
     * HomeController constructor.
     */
    public function __construct(Tour $tour, Location $location)
    {
        view()->share([
            'tour_active' => 'active',
            'status' => $tour::STATUS,
            'locations' => $location->where('l_status', 1)->get()
        ]);
        $this->tour = $tour;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $tours = Tour::with('location');
        if ($request->t_title) {
            $tours->where('t_title', 'like', '%'.$request->t_title.'%');
        }

        if ($request->t_start_date) {
            $startDate = date('Y-m-d', strtotime($request->t_start_date));
            $tours->where('t_start_date', '>=', $startDate);
        }

        if ($request->t_end_date) {
            $endDate = date('Y-m-d', strtotime($request->t_end_date));
            $tours->where('t_end_date', '<=', $endDate);
        }

        $tours = $tours->orderByDesc('id')->paginate(NUMBER_PAGINATION);
        return view('admin.tour.index', compact('tours'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.tour.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TourRequest $request)
    {
        //
        \DB::beginTransaction();
        try {
            $this->tour->createOrUpdate($request);
            \DB::commit();
            return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $tour = Tour::findOrFail($id);

        if (!$tour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        return view('admin.tour.edit', compact('tour'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        \DB::beginTransaction();
        try {
            $this->tour->createOrUpdate($request, $id);
            \DB::commit();
            return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $tour = Tour::find($id);
        if (!$tour) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        try {
            $tour->delete();
            return redirect()->back()->with('success', 'Xóa thành công');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', 'Đã xảy ra lỗi không thể xóa dữ liệu');
        }
    }
}
