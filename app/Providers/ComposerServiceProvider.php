<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
        View::composer(['page.common.header'] , 'App\Http\ViewComposer\CategoryComposer');
        View::composer(['page.common.sidebarNews'] , 'App\Http\ViewComposer\SidebarNewsComposer');
    }
}
