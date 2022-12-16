<?php
namespace App\Http\ViewComposer;
use GuzzleHttp\Psr7\Request;
use Illuminate\View\View;


class SidebarNewsComposer
{
    public function compose(View $view) {

        $view->with();
    }
}