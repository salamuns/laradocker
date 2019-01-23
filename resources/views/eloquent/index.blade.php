<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet"> -->
        <link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
        <title>Tutorial Laravel #21 : CRUD Eloquent Laravel - www.malasngoding.com</title>
    </head>
    <body>
        <div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    CRUD Data Pegawai - <a href="https://www.malasngoding.com/category/laravel" target="_blank">www.malasngoding.com</a>

                    <style type="text/css">
                        .pagination li{
                            float: left;
                            list-style-type: none;
                            margin:5px;
                        }
                    </style>

                </div>
                <div class="card-body">
                    <p>Cari Data Pegawai :</p>
                    <form action="/eloquent/cari" method="GET">
                        <input type="text" name="cari" placeholder="Cari Pegawai .." value="{{ old('cari') }}">
                        <input type="submit" value="CARI">
                    </form>
                        
                    <br/>

                    <a href="/eloquent/tambah" class="btn btn-primary">Input Pegawai Baru</a>
                    <br/>
                    <br/>
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Jabatan</th>
                                <th>Umur</th>
                                <th>Alamat</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($pegawai as $p)
                            <tr>
                                <td>{{ $p->pegawai_id }}</td>
                                <td>{{ $p->pegawai_nama }}</td>
                                <td>{{ $p->pegawai_jabatan }}</td>
                                <td>{{ $p->pegawai_umur }}</td>
                                <td>{{ $p->pegawai_alamat }}</td>
                                <td>
                                    <a href="/eloquent/edit/{{ $p->pegawai_id }}" class="btn btn-warning">Edit</a>
                                    <!-- <a href="/eloquent/hapus/{{ $p->pegawai_id }}" class="btn btn-danger">Hapus</a> -->
                                    <a href="/eloquent/hapus/{{ $p->pegawai_id }}" class="btn btn-danger" onclick="return confirm('Yakin menghapus data ini?');">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    Halaman : {{ $pegawai->currentPage() }} <br/>
                    Jumlah Data : {{ $pegawai->total() }} <br/>
                    Data Per Halaman : {{ $pegawai->perPage() }} <br/>


                    {{ $pegawai->links() }}

                </div>
            </div>
        </div>
    </body>
</html>