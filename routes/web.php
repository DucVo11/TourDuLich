<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});

Route::get('errors-403', function() {
    return view('errors.403');
});
Route::group(['namespace' => 'Admin', 'prefix' => 'admin'], function() {

    Route::group(['namespace' => 'Auth'], function() {
        Route::get('/login', 'LoginController@login')->name('admin.login');
        Route::post('/login', 'LoginController@postLogin');
        Route::get('/register', 'RegisterController@getRegister')->name('admin.register');
        Route::post('/register', 'RegisterController@postRegister');
        Route::get('/logout', 'LoginController@logout')->name('admin.logout');
        Route::get('/forgot/password', 'ForgotPasswordController@forgotPassword')->name('admin.forgot.password');
    });

    Route::group(['middleware' =>['auth']], function() {
        Route::get('/home', 'HomeController@index')->name('admin.home')->middleware('permission:truy-cap-he-thong|full-quyen-quan-ly');

        Route::group(['prefix' => 'group-permission'], function(){
            Route::get('/','GroupPermissionController@index')->name('group.permission.index');
            Route::get('/create','GroupPermissionController@create')->name('group.permission.create');
            Route::post('/create','GroupPermissionController@store');

            Route::get('/update/{id}','GroupPermissionController@edit')->name('group.permission.update');
            Route::post('/update/{id}','GroupPermissionController@update');

            Route::get('/delete/{id}','GroupPermissionController@destroy')->name('group.permission.delete');
        });

        Route::group(['prefix' => 'permission'], function(){
            Route::get('/','PermissionController@index')->name('permission.index');
            Route::get('/create','PermissionController@create')->name('permission.create');
            Route::post('/create','PermissionController@store');

            Route::get('/update/{id}','PermissionController@edit')->name('permission.update');
            Route::post('/update/{id}','PermissionController@update');

            Route::get('/delete/{id}','PermissionController@delete')->name('permission.delete');
        });

        Route::group(['prefix' => 'role'], function(){
            Route::get('/','RoleController@index')->name('role.index')->middleware('permission:danh-sach-vai-tro|full-quyen-quan-ly');
            Route::get('/create','RoleController@create')->name('role.create')->middleware('permission:them-moi-vai-tro|full-quyen-quan-ly');
            Route::post('/create','RoleController@store');

            Route::get('/update/{id}','RoleController@edit')->name('role.update')->middleware('permission:chinh-sua-vai-tro|full-quyen-quan-ly');
            Route::post('/update/{id}','RoleController@update');

            Route::get('/delete/{id}','RoleController@delete')->name('role.delete')->middleware('permission:xoa-vai-tro|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'user'], function(){
            Route::get('/','UserController@index')->name('user.index')->middleware('permission:danh-sach-nguoi-dung|full-quyen-quan-ly');
            Route::get('/create','UserController@create')->name('user.create')->middleware('permission:them-moi-nguoi-dung|full-quyen-quan-ly');
            Route::post('/create','UserController@store');

            Route::get('/update/{id}','UserController@edit')->name('user.update')->middleware('permission:chinh-sua-nguoi-dung|full-quyen-quan-ly');
            Route::post('/update/{id}','UserController@update');

            Route::get('/delete/{id}','UserController@delete')->name('user.delete')->middleware('permission:xoa-nguoi-dung|full-quyen-quan-ly');
        });
        Route::group(['prefix' => 'category'], function(){
            Route::get('/','CategoryController@index')->name('category.index')->middleware('permission:danh-sach-danh-muc|full-quyen-quan-ly');
            Route::get('/create','CategoryController@create')->name('category.create')->middleware('permission:them-moi-danh-muc|full-quyen-quan-ly');
            Route::post('/create','CategoryController@store');

            Route::get('/update/{id}','CategoryController@edit')->name('category.update')->middleware('permission:chinh-sua-danh-muc|full-quyen-quan-ly');
            Route::post('/update/{id}','CategoryController@update');

            Route::get('/delete/{id}','CategoryController@delete')->name('category.delete')->middleware('permission:xoa-danh-muc|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'article'], function(){
            Route::get('/','ArticleContrller@index')->name('article.index')->middleware('permission:danh-sach-bai-viet|full-quyen-quan-ly');
            Route::get('/create','ArticleContrller@create')->name('article.create')->middleware('permission:them-moi-bai-viet|full-quyen-quan-ly');
            Route::post('/create','ArticleContrller@store');

            Route::get('/update/{id}','ArticleContrller@edit')->name('article.update')->middleware('permission:chinh-sua-bai-viet|full-quyen-quan-ly');
            Route::post('/update/{id}','ArticleContrller@update');

            Route::get('/delete/{id}','ArticleContrller@delete')->name('article.delete')->middleware('permission:xoa-bai-viet|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'location'], function(){
            Route::get('/','LocationController@index')->name('location.index')->middleware('permission:danh-sach-dia-diem|full-quyen-quan-ly');
            Route::get('/create','LocationController@create')->name('location.create')->middleware('permission:them-moi-dia-diem|full-quyen-quan-ly');
            Route::post('/create','LocationController@store');

            Route::get('/update/{id}','LocationController@edit')->name('location.update')->middleware('permission:chinh-sua-dia-diem|full-quyen-quan-ly');
            Route::post('/update/{id}','LocationController@update');

            Route::get('/delete/{id}','LocationController@delete')->name('location.delete')->middleware('permission:xoa-dia-diem|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'tour'], function(){
            Route::get('/','TourController@index')->name('tour.index')->middleware('permission:danh-sach-tour|full-quyen-quan-ly');
            Route::get('/create','TourController@create')->name('tour.create')->middleware('permission:them-moi-tour|full-quyen-quan-ly');
            Route::post('/create','TourController@store');

            Route::get('/update/{id}','TourController@edit')->name('tour.update')->middleware('permission:chinh-sua-tour|full-quyen-quan-ly');
            Route::post('/update/{id}','TourController@update');

            Route::get('/delete/{id}','TourController@delete')->name('tour.delete')->middleware('permission:xoa-tour|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'hotel'], function(){
            Route::get('/','HotelController@index')->name('hotel.index')->middleware('permission:danh-sach-khach-san|full-quyen-quan-ly');
            Route::get('/create','HotelController@create')->name('hotel.create')->middleware('permission:them-moi-khach-san|full-quyen-quan-ly');
            Route::post('/create','HotelController@store');

            Route::get('/update/{id}','HotelController@edit')->name('hotel.update')->middleware('permission:chinh-sua-khach-san|full-quyen-quan-ly');
            Route::post('/update/{id}','HotelController@update');

            Route::get('/delete/{id}','HotelController@delete')->name('hotel.delete')->middleware('permission:xoa-khach-san|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'book-tour'], function(){
            Route::get('/', 'BookTourController@index')->name('book.tour.index')->middleware('permission:quan-ly-dat-tour|full-quyen-quan-ly');
            Route::get('/update/{status}/{id}', 'BookTourController@updateStatus')->name('book.tour.update.status')->middleware('permission:xoa-va-cap-nhat-trang-thai|full-quyen-quan-ly');
            Route::get('/delete/{id}', 'BookTourController@delete')->name('book.tour.delete')->middleware('permission:xoa-va-cap-nhat-trang-thai|full-quyen-quan-ly');
        });

        Route::group(['prefix' => 'comments'], function(){
            Route::get('/', 'CommentController@index')->name('comment.index')->middleware('permission:quan-ly-binh-luan|full-quyen-quan-ly');
            Route::get('/update/{status}/{id}', 'CommentController@updateStatus')->name('comment.update.status');
            Route::get('/delete/{id}', 'CommentController@delete')->name('comment.delete')->middleware('permission:|full-quyen-quan-ly');
        });
    });
});

Route::group(['namespace' => 'Page'], function() {

    Route::group(['namespace' => 'Auth'], function() {
        Route::get('/dang-nhap.html', 'LoginController@login')->name('page.user.account');
        Route::post('/account/login', 'LoginController@postLogin')->name('account.login');
        Route::get('/dang-ky-tai-khoan.html', 'RegisterController@register')->name('user.register');
        Route::post('/account/register', 'RegisterController@postRegister')->name('post.account.register');
        Route::get('/dang-xuat.html', 'LoginController@logout')->name('page.user.logout');
        Route::get('/quen-mat-khau.html', 'ForgotPasswordController@forgotPassword')->name('page.user.forgot.password');
    });

    Route::group(['middleware' =>['users']], function() {
        Route::get('thong-tin-tai-khoan.html', 'AccountController@infoAccount')->name('info.account');
        Route::get('danh-sach-tour.html', 'AccountController@myTour')->name('my.tour');
        Route::post('/update/info/account/{id}', 'AccountController@updateInfoAccount')->name('update.info.account');
        Route::get('thay-doi-mat-khau.html', 'AccountController@changePassword')->name('change.password');
        Route::post('change/password', 'AccountController@postChangePassword')->name('post.change.password');
        Route::post('cancel/order/tour/{status}/{id}', 'AccountController@updateStatus')->name('post.cancel.order.tour');
    });

    Route::get('/', 'HomeController@index')->name('page.home');
    Route::get('/loi', 'TourController@loi')->name('loi.loi');
    Route::get('/tin-tuc.html', 'ArticleController@index')->name('articles.index');
    Route::get('/tin-tuc/{id}/{slug}.html', 'ArticleController@detail')->name('articles.detail');
    Route::get('/ve-chung-toi.html', 'HomeController@about')->name('about.us');
    Route::get('/lien-he.html', 'HomeController@contact')->name('contact.index');
    Route::get('/tour.html', 'TourController@index')->name('tour');
    Route::get('book-tour/{id}/{slug}.html', 'TourController@bookTour')->name('book.tour');
    Route::post('book/tour/{id}', 'TourController@postBookTour')->name('post.book.tour');
    Route::get('/tour/{id}/{slug}.html', 'TourController@detail')->name('tour.detail');
    Route::get('/khach-san.html', 'HotelController@index')->name('hotel');
    Route::get('/khach-san/{id}/{slug}.html', 'HotelController@detail')->name('hotel.detail');
    Route::post('/comment', 'CommentController@comment')->name('comment');
});

