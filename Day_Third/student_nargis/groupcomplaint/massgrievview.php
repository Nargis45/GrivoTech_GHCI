<?php session_start();
error_reporting(0);
include('../include/db.php');
/* Here, write code for fetching data of group grievance.

if(isset($_POST['ASC'])){
	$asc="SELECT * FROM complain where userId='".$_SESSION['id']."' ORDER by complaintNumber ASC ";
	$result=executeQuery($asc);
}
else if(isset($_POST['DESC'])){
	$desc="SELECT * FROM complain where userId='".$_SESSION['id']."' ORDER by complaintNumber DESC ";
	$result=executeQuery($desc);
}
else{
	$query="SELECT * FROM complain where userId='".$_SESSION['id']."' ORDER BY regDate DESC ";
	$result=executeQuery($query);
}
//include('include/db.php');
function executeQuery($query){
	include('include/db.php');
	$result=mysqli_query($db,$query);
	return $result;
}
if(strlen($_SESSION['login'])==0)
  { 
header('location:userlogin.php');
}

else{  */
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>View Group Grievance | GrivoTech</title>
	<!-- Bootstrap Core CSS -->
	<link href="../assests/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="../assests/css/stu_style.css">
	
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

</head>
<body>
  <section id="container" >
<?php  include('../include/header.php');  ?>

	<section id="breadcrumb">
		<div class="container" style="margin-top: 2%;">
			 <ol class="breadcrumb">
			 	<li><input type="button" value="Back" onclick="history.go(-1)"></li>
			 	<li><a href="../index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
			 	<li class="active">View Group Grievance</li>
			 </ol>
		</div>
	</section>

<!--navigation bar-->
	<section id="main-content">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="../index.php" class="list-group-item"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Dashboard</a>
						<a href="../newgrievance.php" class="list-group-item"><i class="fa fa-plus" aria-hidden="true"></i> Register New Grievance</a>
						<a href="../viewgrievance.php" class="list-group-item"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Filed Grievance</a>
						<a href="massgrievform.php" class="list-group-item"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Register Group Grievance</a>
						<a href="massgrievview.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Group Grievance</a>
						<a href="../stuprofile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> My Profile</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">View Group Grievance</h3>
						</div>
						<div class="panel-body" style="min-height: 400px;">
						
							 <section id="main-content">
          <section class="wrapper">
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                          <section id="unseen">
						  <form method="post">
						  <input type="submit" name="ASC" value="Oldest" style="float:right;margin-bottom:6px;">
						  <input type="submit" name="DESC" value="Newest" style="float:right;">
                            <table class="table table-bordered table-striped table-condensed table-responsive">
                              <thead>
                              <tr style="text-align: center">
                                  <th style="text-align: center">Grp Complaint Number</th>
                                  <th style="text-align: center">Reg Date</th>
                                  <th style="text-align: center">Status</th>
                                  <th style="text-align: center">View Details</th>
                                  <th style="text-align: center">Support</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td align="center"></td>
                                  <td align="center"></td>
                                  <td align="center"> <!-- This part will be same, just correct var will be used<?php 
                                    $status=$row['status'];
                                    if($status=="" or $status=="NULL")
                                    { ?>
                                      <button type="button" class="btn btn-theme04">Not Processed Yet</button>
                                  <?php } 
 if($status=="in process"){ ?>
<button type="button" class="btn btn-warning">In Process</button>
<?php }
if($status=="closed") {
?>
<button type="button" class="btn btn-success">Closed</button>
<?php } ?>  --> 					</td>
                                   <td align="center"> <!-- Again same, correct var should be use
                                   <a href="complaint-details.php?cid=<?php echo htmlentities($row['complaintNumber']);?>">  -->
<button type="button" class="btn btn-primary">View Details</button></a>
                                   </td>
                                   <td align="center"> <!-- On click, counter for this complaint number should be increased by 1. 
                                   <a href="complaint-details.php?cid=<?php echo htmlentities($row['complaintNumber']);?>">  -->
<button type="button" class="btn btn-primary">Support</button></a>
                                   </td>
                                </tr>
                            
                              </tbody>
                          </table>
						  </form>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		  	
		  	

		</section><! --/wrapper -->
      </section>					
						</div>
					</div>
				</div>
				
			</div>
		</div>
			<?php include('../include/footer.php');  ?>
	</section>
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets/js/jquery.scrollTo.min.js"></script>
    <script src="../assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="../assets/js/common-scripts.js"></script>
	<script>
		CKEDITOR.replace('editor1');
	</script>

	