<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Comment;

class CommentController extends Controller
{
    public function __construct(Comment $comment)
    {
        view()->share([
            'comment_active' => 'active',
            'status' => $comment::STATUS,
            'classStatus' => $comment::CLASS_STATUS,
        ]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $comments = Comment::with('user')->whereIn('cm_user_id', function ($q) use($request) {
            $q->from('users')->select('id');
            if ($request->name) {
                $q->where('name', 'like', '%'.$request->name.'%');
            }
            if ($request->email) {
                $q->where('email', $request->email);
            }
        })->orderByDesc('id')->paginate(NUMBER_PAGINATION);

        return view('admin.comment.index', compact('comments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        $comment = Comment::find($id);
        if (!$comment) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        try {
            $comment->delete();
            return redirect()->back()->with('success', 'Xóa thành công');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', 'Đã xảy ra lỗi không thể xóa dữ liệu');
        }
    }

    public function updateStatus(Request $request, $status, $id)
    {
        $comment = Comment::find($id);
        if (!$comment) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        \DB::beginTransaction();
        try {
            $comment->cm_status = $status;
            $comment->save();
            \DB::commit();
            return redirect()->route('comment.index')->with('success', 'Lưu dữ liệu thành công');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }
}
