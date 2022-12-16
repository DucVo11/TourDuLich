<?php
namespace App\Http\ViewComposer;
use GuzzleHttp\Psr7\Request;
use Illuminate\View\View;


class CategoryComposer
{
    public function compose(View $view) {

        $view->with();
    }
}