<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="nabvar">
				<span class="sr-only">Toggle Navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">GrivoTech</a>
		</div>
		<div id="nabvar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<?php
					// No need to query DB for name. Store name in session instead.
					// $query = mysqli_query($db, "select name from student where email='" . $_SESSION['login'] . "'");
					// while ($row = mysqli_fetch_array($query)) {
					// 	echo '<h5 class="centered" style="color:#fff;"><?php echo htmlentities($row[\'name\']); \?\></h5>';
					// }
					?>
					<h5 class="centered" style="color:#fff;"><?php session_start();
																echo htmlentities($_SESSION['name']); ?></h5>

				</li>
				<li style="float:right;"><a href="logout.php">Logout</a></li>&nbsp;&nbsp;&nbsp;&nbsp;
			</ul>
		</div><!-- /.nav-collapse -->
	</div>
</nav>