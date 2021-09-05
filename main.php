<!DOCTYPE HTML>
<?php
$url = explode('/', $_SERVER['REQUEST_URI']);
$url = $url[1];

?>

<html>
	<head>
		<title>The Video Archive</title>
		<link rel="stylesheet" type="text/css" href="/css/main.css">
	</head>

	<body>
		<header>
			<div class="container">
				<div class="top">
					<h1><a href="/" width=950px>The Video Archives</a></h1>
				</div>
		</header>
		
		<ul id="nav">
			<?php if($url == ''){ ?>
				<li class="nav1" style="background-color: #666"><a href="/">Home</a></li>
			<?php }else{ ?>
				<li class="nav1" style="background-color: #878A97"><a href="/">Home</a></li>
			<?php } ?>

			<!--arrows for drop down menu are found here https://fsymbols.com/signs/arrow/ -->
			<?php if($url == 'goldeneye'){ ?>
				<li class="nav2" style="background-color: #666;"><a>GoldenEye 🠻</a>
					<ul>
						<li><a href="/goldeneye/">Regular Times</a></li>
						<li><a href="/goldeneye/ltk-dltk">LTK Times</a></li>
					</ul>
				</li>
			<?php }else{ ?>
				<li class="nav2" style="background-color: #878A97;"><a>GoldenEye 🠻</a>
					<ul>
						<li><a href="/goldeneye/">Regular Times</a></li>
						<li><a href="/goldeneye/ltk-dltk">LTK Times</a></li>
					</ul>
				</li>
			<?php } ?>

			<?php if($url == 'perfect-dark'){ ?>
				<li class="nav3" style="background-color: #666;"><a>Perfect Dark 🠻</a>
					<ul>
						<li><a href="/perfect-dark/">Regular Times</a></li>
						<li><a href="/perfect-dark/ltk-dltk">LTK Times</a></li>
					</ul>
				</li>
			<?php }else{ ?>
				<li class="nav3" style="background-color: #878A97;"><a>Perfect Dark 🠻</a>
					<ul>
						<li><a href="/perfect-dark/">Regular Times</a></li>
						<li><a href="/perfect-dark/ltk-dltk">LTK Times</a></li>
					</ul>
				</li>
			<?php } ?>

			<?php if($url == 'dead-videos' || $url == 'dead-videos-ltk' || $url == 'dead-videos-goldeneye' || $url == 'dead-videos-perfect-dark'){ ?>
				<li class="nav5" style="background-color: #666;"><a href="/dead-videos">Dead Videos</a></li>
			<?php }else{ ?>
				<li class="nav5"><a href="/dead-videos">Dead Videos</a></li>
			<?php } ?>
		</ul>
	</body>
</html>