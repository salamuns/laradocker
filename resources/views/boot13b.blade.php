<!DOCTYPE html>
<html>
<head>
	<title>Bootstrap Part 13 : Membuat Form dengan Bootstrap</title>
	<link rel="stylesheet" type="text/css" href="asseb/css/bootstrap.css">
	<script type="text/javascript" src="asseb/js/jquery.js"></script>
	<script type="text/javascript" src="asseb/js/bootstrap.js"></script>
</head>
<body>

	<div class="container">		
		<h1>Membuat Form dengan Bootstrap | www.malasngoding.com</h1> 
		<form class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2" for="nama">Nama Anda:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="alamat">Alamat anda:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="alamat">
				</div>
			</div>		
			<button type="submit" class="btn btn-danger">Simpan</button>
		</form>		
	</div>

</body>
</html>