<?php

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

Route::prefix('backend')->group(function() {
    Route::get('/', 'UsersController@index')->middleware('guest')->name('index');
    Route::post('/', 'UsersController@login')->middleware('guest')->name('login');
    Route::get('/register_admin_baru', 'UsersController@register')->middleware('guest');
    Route::get('/logout', 'UsersController@logout')->middleware('auth')->name('logout');
});
