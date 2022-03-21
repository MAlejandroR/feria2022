<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FeriaController;
use App\Http\Controllers\EmpresaController;

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
/*
Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');
*/

Route::view('a',"a");

Route::get('/',[FeriaController::class, "index"])->name ("feria-main");
Route::resource("empresas", EmpresaController::class);

Route::post("ponencias", ("EmpresaController@ponencias"))->name("empresas.ponencias");

require __DIR__.'/auth.php';


