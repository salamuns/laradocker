<!DOCTYPE html>
<html>
<head>
	<title>Bootstrap Part 14 : Membuat Carousel dengan Bootstrap</title>
	<link rel="stylesheet" type="text/css" href="asseb/css/bootstrap.css">
	<script type="text/javascript" src="asseb/js/jquery.js"></script>
	<script type="text/javascript" src="asseb/js/bootstrap.js"></script>	
</head>
<body>

   <div class="container">		
	<center><h1>Membuat Carousel dengan Bootstrap | www.malasngoding.com</h1></center>
	<br/>
	<div class="col-md-8 col-md-offset-2">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>		
			</ol>

			<!-- deklarasi carousel -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="asseb/img/malasngoding1.png" alt="www.malasngoding.com">
					<div class="carousel-caption">
						<h3>www.malasngoding.com</h3>
						<p>Tutorial belajar pemrograman web, mobile dan design.</p>
					</div>
				</div>
				<div class="item">
					<img src="asseb/img/malasngoding2.png" alt="www.malasngoding.com">
					<div class="carousel-caption">
						<h3>Tutorial Bootstrap</h3>
						<p>Belajar tutorial bootstrap dasar di www.malasngoding.com</p>
					</div>
				</div>
				<div class="item">
					<img src="asseb/img/malasngoding3.png" alt="www.malasngoding.com">
					<div class="carousel-caption">
						<h3>Tutorial Android</h3>
						<p>Tutorial membuat aplikasi android.</p>
					</div>
				</div>				
			</div>

			<!-- membuat panah next dan previous -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
   </div>
</body>
</html>