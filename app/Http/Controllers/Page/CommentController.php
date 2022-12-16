<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Comment;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    //
    public function comment(Request $request)
    {

        if($request->ajax()) {
            try {
                $comment = new Comment();
                if ($request->tour_id) {
                    $comment->cm_tour_id = $request->tour_id;
                }
                if ($request->reply_id) {
                    $comment->cm_reply_id = $request->reply_id;
                }
                if ($request->article_id) {
                    $comment->cm_article_id = $request->article_id;
                }
                if ($request->hotel_id) {
                    $comment->cm_hotel_id = $request->hotel_id;
                }

                $comment->cm_user_id = Auth::guard('users')->user()->id;
                $comment->cm_content = $request->message;
                $comment->cm_status = 1;
                $comment->save();
                $comment = $comment->with('user')->find($comment->id);
                $html =  view('page.common.itemComment',compact('comment'))->render();
                return response([
                    'code' => 200,
                    'html' => $html
                ]);
            } catch (\Exception $exception) {
                return response([
                    'code' => 404,
                    'html' => ''
                ]);
            }
        }
    }

    public function replyComment(Request $request)
    {
        if($request->ajax()) {

        }
    }
}
