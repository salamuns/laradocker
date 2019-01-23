<!DOCTYPE html>
<html>
<head>
	<title>Bootstrap Part 11 : Membuat Navigasi Tabs dan Pills Bootstrap</title>
	<link rel="stylesheet" type="text/css" href="asseb/css/bootstrap.css">
	<script type="text/javascript" src="asseb/js/jquery.js"></script>
	<script type="text/javascript" src="asseb/js/bootstrap.js"></script>
</head>
<body>		
	<div class="container">
		<h1>Membuat Navigasi Tabs dan Pills Bootstrap | www.malasngoding.com</h1> 
		<br/>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
			<li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
			<li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
		</ul>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<h3>HOME</h3>
				<p>www.malasngoding.com</p>
			</div>
			<div id="menu1" class="tab-pane fade">
				<h3>Menu 1</h3>
				<p>Tutorial pemrograman web, mobile dan design</p>
			</div>
			<div id="menu2" class="tab-pane fade">
				<h3>Menu 2</h3>
				<p>Membuat navigasi tabs dan pills bootstrap.</p>
			</div>
		</div>
	</div>
</body>
</html>