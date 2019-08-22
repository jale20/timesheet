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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/month', function () {
    $month = DB::table("dates")->get();

    $currentUserId = \Auth::user()->id;

    return view('month', compact('month'));
})->name("months");

Route::get('/grid/{month}', 'InsertController@index');
Route::post('/grid/{month}', 'InsertController@update');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');