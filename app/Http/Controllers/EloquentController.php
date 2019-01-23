<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Pegawai;

class EloquentController extends Controller
{

    public function index()
    {
        // $pegawai = Pegawai::all();
        $pegawai = Pegawai::paginate(10);
        return view('eloquent.index', ['pegawai' => $pegawai]);
    }

    public function tambah()
    {
        // memanggil view tambah
        return view('eloquent.tambah');
    }

    public function store(Request $request)
    {
        // validate using custom messages
        $messages = [
            'required' => ':attribute wajib diisi cuy!!!',
            'min' => ':attribute harus diisi minimal :min karakter ya cuy!!!',
            'max' => ':attribute harus diisi maksimal :max karakter ya cuy!!!',
            'numeric' => ':attribute harus diisi numerik ya cuy!!!',
        ];

        $this->validate($request,[
            'nama' => 'required|min:5|max:50',
            'jabatan' => 'required|min:5|max:20',
            'umur' => 'required|numeric',
            'alamat' => 'required'
        ]);
 
        Pegawai::create([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);
 
        return redirect('/eloquent');
    }

    public function edit($id)
    {
       $pegawai = Pegawai::find($id);
       return view('eloquent.edit', ['pegawai' => $pegawai]);
    }

    public function update($id, Request $request)
    {
        // validate using custom messages
        $messages = [
            'required' => ':attribute wajib diisi cuy!!!',
            'min' => ':attribute harus diisi minimal :min karakter ya cuy!!!',
            'max' => ':attribute harus diisi maksimal :max karakter ya cuy!!!',
            'numeric' => ':attribute harus diisi numerik ya cuy!!!',
        ];

        $this->validate($request,[
            'nama' => 'required|min:5|max:50',
            'jabatan' => 'required|min:5|max:20',
            'umur' => 'required|numeric',
            'alamat' => 'required'
        ],$messages);

        $pegawai = Pegawai::find($id);
        $pegawai->pegawai_nama = $request->nama;
        $pegawai->pegawai_jabatan = $request->jabatan;
        $pegawai->pegawai_umur = $request->umur;
        $pegawai->pegawai_alamat = $request->alamat;
        $pegawai->save();
        return redirect('/eloquent');
    }

    public function delete($id)
    {
        $pegawai = Pegawai::find($id);
        $pegawai->delete();
        // return redirect('/eloquent');
        return redirect()->back();
    }

}
