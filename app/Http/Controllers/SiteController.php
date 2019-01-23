<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;

class SiteController extends BaseController {
    public function haloJuga()
    {
        return 'halo juga, bro.. ini pake SiteController<br> Dan ini : ' . view('halo_juga');
    }
}