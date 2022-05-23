<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\GuruController;
use App\Http\Controllers\Admin\MataPelajaranController;
use App\Http\Controllers\Admin\RoomController;
use App\Http\Controllers\Admin\SiswaController;
use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;

// Login
Route::redirect('/', 'auth', 301);
Route::get('auth',[AuthController::class, 'login'])->name('auth.login');
Route::prefix('auth')->name('auth.')->group(function(){
        Route::post('login',[AuthController::class, 'do_login'])->name('do_login');
});

// Operator / Admin
Route::redirect('admin', 'admin/dashboard', 301);
Route::prefix('admin')->name('admin.')->group(function() {
    Route::redirect('/', 'dashboard', 301);
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('logout', [AuthController::class, 'do_logout'])->name('logout');
    Route::resource('room', RoomController::class);
    Route::resource('pelajaran', MataPelajaranController::class);
    Route::resource('admin', AdminController::class);
    Route::resource('guru', GuruController::class);
    Route::resource('siswa', SiswaController::class);
});

// Guru
Route::prefix('guru')->name('guru.')->group(function() {
    Route::redirect('/', 'dashboard', 301);
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('logout', [AuthController::class, 'do_logout'])->name('logout');
});

// Siswa
Route::prefix('siswa')->name('siswa.')->group(function() {
    Route::redirect('/', 'dashboard', 301);
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('logout', [AuthController::class, 'do_logout'])->name('logout');
});