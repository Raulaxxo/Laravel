<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Ruta para healthcheck (devuelve JSON con status OK)
Route::get('/health', function () {
    return response()->json(['status' => 'OK'], 200);
});