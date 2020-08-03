<?php
session_start();
error_reporting(0);
include('../include/db.php');
//include_once('badwords3.php');
//<script="text/javascript" src="badwords3.php">
/*
Here, write code for submission of mass complain into data base.*/

if(strlen($_SESSION['login'])==0)
  { 
header('location:../userlogin.php');
}
else{
	if(isset($_POST['submit'])){
		$uid=$_SESSION['id'];
	$grievance=$_POST['grievance'];
	$complain=$_POST['groupComplaint'];
	$name=$_FILES["groupProof"]["name"];
        $tempname=$_FILES["groupProof"]["tmp_name"];
        $folder= "../assests/images/".$name;
		move_uploaded_file($tempname,$folder);
		
$query=mysqli_query($db,"insert into groupcomplaint(userId,groupGrievanceId,groupComplaint,groupProof) values('$uid','$grievance','$complain','$name')");
// code for show complaint number
$sql=mysqli_query($db,"select groupComplaintNumber from groupcomplaint  order by groupComplaintNumber desc limit 1");
while($row=mysqli_fetch_array($sql))
{
 $cmpn=$row['groupComplaintNumber'];
}
$complainno=$cmpn;
echo '<script> alert("Your complain has been successfully filled and your complaintno is  "+"'.$complainno.'")</script>';
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>Register Group Grievance | GrivoTech</title>
	<!-- Bootstrap Core CSS -->
	<link href="../assests/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="../assests/css/stu_style.css">
	    <link href="../assets/css/style-responsive.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-daterangepicker/daterangepicker.css" />
<style>
	    .bs-example{
	    	margin: 20px;
	    }
	</style>
<!--

No modal required here.


	function badWordFilter($data){
	    $originals = array("douche","punch","damn","fuck");
	    $replacements = array("fri","love","wow","****");
	    $data = str_ireplace($originals,$replacements,$data);
	    return $data;
	}
	</script>

-->
</head>
<body>
<?php include('../include/header.php'); ?>

	<section id="breadcrumb">
		<div class="container" style="margin-top: 2%;">
			 <ol class="breadcrumb">
			 	<li><input type="button" value="Back" onclick="history.go(-1)"></li>
			 	<li><a href="../index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
			 	<li class="active">Register Group Grievance</li>
			 </ol>
		</div>
	</section>

<!--navigation bar-->
	<section id="main">
		<div class="container">
			<div class="row">
                <div class="col-md-3">
					<div class="list-group">
						<a href="../index.php" class="list-group-item "><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Dashboard</a>
						<a href="../newgrievance.php" class="list-group-item"><i class="fa fa-plus" aria-hidden="true"></i> Register New Grievance</a>
						<a href="../viewgrievance.php" class="list-group-item"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Filed Grievance</a>
						<a href="massgrievform.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Register Group Grievance</a>
						<a href="massgrievview.php" class="list-group-item"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Group Grievance</a>
						<a href="../stuprofile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> My Profile</a>
					</div>	
				</div>
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">Register Group Grievance Form</h3>
						</div>
						<?php if($successmsg)
						{?>
					<div class="alert alert-success alert-dismissable">
                       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Well done!</b> <?php echo htmlentities($successmsg);?></div>
                      <?php }?>

   <?php if($errormsg)
                      {?>
                      <div class="alert alert-danger alert-dismissable">
 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Oh snap!</b> </b> <?php echo htmlentities($errormsg);?></div>
                      <?php }?>
						<form method="post" enctype="multipart/form-data">
					<div class="panel-body" style="min-height: 400px;">
						<br>
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
                        <div class="form-group">
                                <label class="col-md-4 control-label labelText" for="grievance">Complaint Details<span class="requerido"> *</span></label>
                                <div class="col-md-8">
                                	<textarea class="txtarea col-md-12" name="groupComplaint" required rows="6" value="<?php if(isset($_POST['groupcomplaint'])){echo $_POST['groupcomplaint'];} ?>"></textarea>
                                </div>
                            </div>
                        <br><br><br><br><br><br><br>
                        <div class="form-group">
                            <label class="col-md-4 control-label labelText" for="grievance">Add Supporting Document (If any)</label>
                            <div class="col-md-8 control-label">
                                <input type="file" name="proof" id="myFile">
                             </div>
                        </div>
                        <br><br>
		    			<div class="form-group">
                            <div class="col-md-4 col-md-offset-4 control-label">
                               	<button class="btn btn-success btn-block" type="submit" name="submit">Submit</button>
                            </div>
                        </div>
                        <br>
                        <div class="col-md-12">
                            <p><STRONG><u>Note:</u></STRONG><br>
                            	<strong style="color: red;">*</strong><em> are mandatory to be filled.</em><br>
                            	<em><b>Supported Document types:</b><i> ".jpeg, .jpg, .png, .pdf, .mp4, .flv, .mkv"</i>. Please Upload the file of this type only.</em><br>
                            	<em><b>Don't use Offensive language.</b> If you are found doing so, Strict actions will be taken against you.</em><br>
                            	<em><b>You are filing group grievance.</b> So, be careful and truefull while registering the grievance. Go through 'Know More' page to know more about group grievance.</em>
                            </p>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<?php include('../include/footer.php');  ?>
	 <!-- js placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets/js/jquery.scrollTo.min.js"></script>
    <script src="../assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="../assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="../assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="../assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="../assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="../assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="../assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="../assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
<?php } ?>