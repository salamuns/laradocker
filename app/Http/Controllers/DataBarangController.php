<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DataBarangController extends Controller
{
    public function index()
    {
    	return view('data-barang.index');
    }

    public function create()
    {
    	return view('data-barang.index');
    }

}
