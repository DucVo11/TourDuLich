<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Category;

class ArticleController extends Controller
{
    //
    public function index(Request $request)
    {
        $articles = Article::active();
        if ($request->key_search) {
            $articles->where('a_title', 'like', '%'.$request->key_search.'%');
        }
        $articles = $articles->orderByDesc('id')->paginate(NUMBER_PAGINATION_PAGE);
        return view('page.articles.index', compact('articles'));
    }

    public function detail(Request $request, $id)
    {
        $article = Article::find($id);

        if (!$article) {
            return redirect()->back()->with('error', 'Dữ liệu không tồn tại');
        }

        $categories = Category::with('news')->get();
        $articles = Article::with('user')->active()->orderByDesc('id')->limit(NUMBER_PAGINATION_PAGE)->get();

        return view('page.articles.detail', compact('article', 'categories', 'articles'));
    }
}
