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
										
						<?php $query=mysqli_query($db,"SELECT univName as catname from university where email='".$_SESSION['alogin']."'");
 while($row=mysqli_fetch_array($query)) 
 {                                                
 ?> 
          <h5 class="centered" style="color:#fff;"><?php echo htmlentities($row['catname']);?></h5>
             <?php } ?>
						
						
						</li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</div><!-- /.nav-collapse -->
		</div>
	</nav>
