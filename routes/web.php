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

Route::get('/testDatabase', function(){
    App\User::create([
        'email'		=> uniqid() . '@example.com',
        'name'		=> 'Test User',
        'password'	=> 'secret'
    ]);

    return response()->json(App\User::all());
});

Route::get('/testCache', function(){
    Cache::put('someKey', 'Halooo test redis telah berhasil ', 10);

    return Cache::get('someKey');
});

Route::get('/insert', function(){
    $data = App\User::create([
        'email'		=> uniqid() . '@gmail.com',
        'name'		=> 'Nama User',
        'password'	=> bcrypt('password'),
    ]);

    return response()->json($data->get());
});

Route::get('/foo', function(){
    return 'Hello World : ' . '<a href="../asset/index2.html">Documentation</a>';
});

Route::get('/user', 'UserController@index');
Route::get('/halo-juga', 'SiteController@haloJuga');

Route::get('/salam', function () {
    return view('greeting', ['name' => 'Salamun']);
});

Route::get('/adminlte', function () {
    return view('adminlte');
});

Route::get('/admin', function () {
    return view('admin');
});

Route::resource('data-barang','DataBarangController');

Route::get('/start', function () {
    return view('startboot');
});

Route::get('/flatify', function () {
    return view('flatify');
});

Route::get('/dosen', 'DosenController@index');

Route::get('/pegawai/{nama}', 'PegawaiController@index');
Route::get('/formulir', 'PegawaiController@formulir');
Route::post('/formulir/proses', 'PegawaiController@proses');

Route::get('/blog', 'BlogController@home');
Route::get('/blog/tentang', 'BlogController@tentang');
Route::get('/blog/kontak', 'BlogController@kontak');

Route::get('/crud','CRUDController@index');
Route::get('/crud/tambah','CRUDController@tambah');
Route::post('/crud/store','CRUDController@store');
Route::get('/crud/edit/{id}','CRUDController@edit');
Route::post('/crud/update','CRUDController@update');
Route::get('/crud/hapus/{id}','CRUDController@hapus');
Route::get('/crud/cari','CRUDController@cari');

Route::get('/eloquent','EloquentController@index');
Route::get('/eloquent/tambah','EloquentController@tambah');
Route::post('/eloquent/store','EloquentController@store');
Route::get('/eloquent/edit/{id}','EloquentController@edit');
Route::put('/eloquent/update/{id}', 'EloquentController@update');
Route::get('/eloquent/hapus/{id}', 'EloquentController@delete');

Route::get('/input', 'MalasngodingController@input');
Route::post('/proses', 'MalasngodingController@proses');

Route::get('/guru', 'GuruController@index');
Route::get('/guru/hapus/{id}', 'GuruController@hapus');
Route::get('/guru/trash', 'GuruController@trash');
Route::get('/guru/kembalikan/{id}', 'GuruController@kembalikan');
Route::get('/guru/kembalikan_semua', 'GuruController@kembalikan_semua');
Route::get('/guru/hapus_permanen/{id}', 'GuruController@hapus_permanen');
Route::get('/guru/hapus_permanen_semua', 'GuruController@hapus_permanen_semua');

Route::get('/pengguna', 'PenggunaController@index');

Route::get('/article', 'WebController@index');

Route::get('/undian', 'UndianController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/boot1', function () { return view('boot1'); });
Route::get('/boot2', function () { return view('boot2'); });
Route::get('/boot3', function () { return view('boot3'); });
Route::get('/boot4', function () { return view('boot4'); });
Route::get('/boot5', function () { return view('boot5'); });
Route::get('/boot6', function () { return view('boot6'); });
Route::get('/boot7', function () { return view('boot7'); });
Route::get('/boot8', function () { return view('boot8'); });
Route::get('/boot8a', function () { return view('boot8a'); });
Route::get('/boot9', function () { return view('boot9'); });
Route::get('/boot10', function () { return view('boot10'); });
Route::get('/boot10a', function () { return view('boot10a'); });
Route::get('/boot11', function () { return view('boot11'); });
Route::get('/boot11a', function () { return view('boot11a'); });
Route::get('/boot11b', function () { return view('boot11b'); });
Route::get('/boot11c', function () { return view('boot11c'); });
Route::get('/boot12', function () { return view('boot12'); });
Route::get('/boot12a', function () { return view('boot12a'); });
Route::get('/boot12b', function () { return view('boot12b'); });
Route::get('/boot13', function () { return view('boot13'); });
Route::get('/boot13a', function () { return view('boot13a'); });
Route::get('/boot13b', function () { return view('boot13b'); });
Route::get('/boot14', function () { return view('boot14'); });
Route::get('/boot15', function () { return view('boot15'); });
Route::get('/boot16', function () { return view('boot16'); });
Route::get('/boot16a', function () { return view('boot16a'); });

