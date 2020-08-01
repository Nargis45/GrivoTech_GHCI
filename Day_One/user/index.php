<?php 
session_start();
error_reporting(0);
include('../include/db.php');

if(strlen($_SESSION['login'])==0)
  { 
header('location:userlogin.php');
}
else{
?>
<!--to make coonection and include header in this page-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
    <meta name="author" content="Dashboard">
	<link href="assests/css/bootstrap.min.css" rel="stylesheet">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>Dashboard | GrivoTech</title>
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assests/css/stu_style.css">
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="css/stu_style.css">
	<link href="assets/css/style-responsive.css" rel="stylesheet">
</head>
<body>
<?php include_once('include/header.php'); ?>


	<section id="breadcrumb">
		<div class="container" style="margin-top: 2%;">
			 <ol class="breadcrumb">
		 	<li><span class="glyphicon glyphicon-home" aria-hidden="true"></span></li>
			 </ol>
		</div>
	</section>

<!--navigation bar-->
	<section id="main">
		<div class="container">
			<div class="row">
				
				
				<?php include('include/sidebar.php'); ?>
				
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">Dashboard Overview</h3>
						</div>
						<div class="panel-body" style="height:400px;">
							<div class="col-md-4">
								<div class="well dash-box" style="height:150px;">
									<h2><center><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <?php 
                   
$rt = mysqli_query($db,"SELECT * FROM complain where userId='".$_SESSION['id']."' and status is null");
$num1 = mysqli_num_rows($rt);
{?>
					  			<?php echo htmlentities($num1);?>
									</h2>
								 <h4><center>My Grievances</center></h4></center>
                  			</div>
					  			
                  		</div>
                      <?php }?>	
							<div class="col-md-4">
								<div class="well dash-box" style="height:150px;">
									<h2><center><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <?php 
  $status="in process";                   
$rt = mysqli_query($db,"SELECT * FROM complain where userId='".$_SESSION['id']."' and  status='$status'");
$num1 = mysqli_num_rows($rt);
{?>
					  			<?php echo htmlentities($num1);?></center></h2>
									<h4><center>In-Progress</center></h4>
								
                   

                  			</div>
					  			
                  		</div>
                      <?php }?>	
							
							<div class="col-md-4">
								<div class="well dash-box" style="height:150px;">
									<h2><center><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <?php 
  $status="closed";                   
$rt = mysqli_query($db,"SELECT * FROM complain where userId='".$_SESSION['id']."' and  status='$status'");
$num1 = mysqli_num_rows($rt);
{?>
					  			<?php echo htmlentities($num1);?></center></h2>
									<h4><center>Solved Grievances</center></h4>
                       
                  			</div>
					  			
                  		</div>
                      <?php }?>	
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>


	<?php include('../include/footer.php');  ?>
		<!-- Bootstrap score JavaScript -->
	<!-- Placed at the end of the document so that the pages loads faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>
</body>
</html>
	<?php } ?>