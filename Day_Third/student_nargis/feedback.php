<?php session_start();
error_reporting(0);
include('../include/db.php');
if (strlen($_SESSION['login']) == 0) {
	header('location:userlogin.php');
} else {
	if (isset($_POST['submit'])) {
		$uid = $_SESSION['id'];
		$grievance = $_POST['grievance'];
		$view = $_POST['view'];
		$complain = $_POST['complain'];
		
		$query = mysqli_query($db, "insert into feedback(userId,grievanceId,complain,feedback) values('$uid','$grievance','$complain','$view')");
		
		echo '<script> alert("Your feedback has been successfully submitted.")</script>';
	}
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
	<title>Feedback Form| GrivoTech</title>
	<!-- Bootstrap Core CSS -->
	<link href="assests/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="assests/css/stu_style.css">
	
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
     

</head>
<body>
  <section id="container" >
<?php  include('include/header.php');  ?>

	<section id="breadcrumb">
		<div class="container" style="margin-top: 2%;">
			 <ol class="breadcrumb">
			 	<li><input type="button" value="Back" onclick="history.go(-1)"></li>
			 	<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
			 	<li class="active">View Feedback</li>
			 </ol>
		</div>
	</section>

<!--navigation bar-->
	<section id="main-content">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="index.php" class="list-group-item "><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Dashboard</a>
						<a href="newgrievance.php" class="list-group-item"><i class="fa fa-plus" aria-hidden="true"></i> Register New Grievance</a>
						<a href="viewgrievance.php" class="list-group-item "><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Filed Grievance</a>
						<!--<a href="groupcomplaint/massgrievform.php" class="list-group-item"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Register Group Grievance</a>
						<a href="groupcomplaint/massgrievview.php" class="list-group-item"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Group Grievance</a>-->
						<a href="stuprofile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> My Profile</a>
						<a href="feedback.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> My Feedback</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">Feedback Form</h3>
						</div>
						<div class="panel-body" style="min-height: 400px;">
						
							 <section id="main-content">
          <section class="wrapper">
          	
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                          
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		  	<form action="feedback.php" method="post" enctype="multipart/form-data" class="agile_form">
		  		<div class="form-group">
                                <label class="col-md-4 control-label labelText">Grievance Type<span class="requerido"> *</span></label>
                                <div class="col-md-8">
                                    <input type="hidden" class="form-control" placeholder="" required="required" name="hiddengrievanceid" val="" id="hiddenGid">
                                    <select name="grievance" id="grievanceType" class="selectStyle col-md-12" required="" >
									<option value="" >Select Category</option>
									<?php $sql=mysqli_query($db,"select id,categoryName from category ");
                                    while ($rw=mysqli_fetch_array($sql)) {
                                     ?>
										<option value="<?php echo htmlentities($rw['id']);?>"><?php echo htmlentities($rw['categoryName']);?></option>
                                        <?php
                                            }
                                         ?>
                                    </select>
                                </div>
                            </div>
                            <br><br>
		  <h4>How satisfied were you with our Service?</h4>
			 <ul class="agile_info_select">
				 <li><input type="radio" name="view" value="verysatisfied" id="excellent" required> 
				 	  <label for="excellent">Very Satisfied</label>
				      <div class="check w3"></div>
				 </li>
				 <li><input type="radio" name="view" value="good" id="good"> 
					  <label for="good"> good</label>
				      <div class="check w3ls"></div>
				 </li>
				 <li><input type="radio" name="view" value="neutral" id="neutral">
					 <label for="neutral">neutral</label>
				     <div class="check wthree"></div>
				 </li>
				 <li><input type="radio" name="view" value="poor" id="poor"> 
					  <label for="poor">poor</label>
				      <div class="check w3_agileits"></div>
				 </li>
				  <li><input type="radio" name="view" value="verypoor" id="verypoor" required> 
				 	  <label for="verypoor">Very Poor</label>
				      <div class="check w3"></div>
				 </li>
			 </ul>	  
			 <div class="form-group">
										<label class="col-md-4 control-label labelText" for="grievance">Complaint Details<span class="requerido"> *</span></label>
										<div class="col-md-8">
											<?php if (isset($_POST['complain'])) {
												echo '<textarea class="txtarea col-md-12" id="complain-text" name="complain" required rows="6" value="' . $_POST['complain'] . '"></textarea>';
											} else {
												echo '<textarea class="txtarea col-md-12" id="complain-text" name="complain" required rows="6"></textarea>';
											}
											?>

										</div>
									</div>
									<br><br><br><br><br><br><br>
			
			<div class="form-group">
										<div class="col-md-offset-4 col-md-4 control-label">
											<button class="btn btn-primary btn-block" type="submit" name="submit">Submit</button>
										</div>
									</div>
		  	

		</section><! --/wrapper -->
      </section>					
						</div>
					</div>
				</div>
				
			</div>
		</div>
			<?php include('../include/footer.php');  ?>
	</section>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
	<script>
		CKEDITOR.replace('editor1');
	</script>

	</body></html>
	
	
	<?php } ?>