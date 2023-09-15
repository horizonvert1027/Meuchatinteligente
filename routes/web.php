<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LandingController;
use Illuminate\Support\Facades\Redirect;

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
Route::get('/', [LandingController::class,'index'])->name("landing");

Route::get('{any}', function () {
    return Redirect::route('/');
})->name('index');