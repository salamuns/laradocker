<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    public $timestamps = false;
    public $primaryKey = 'pegawai_id';

    protected $table = "pegawai";
    protected $fillable = ['pegawai_nama','pegawai_jabatan','pegawai_umur','pegawai_alamat'];
    // protected $fillable = ['update_at','created_at'];
}
