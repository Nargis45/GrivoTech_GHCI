<?php
include('../include/db.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$name=$_POST['name'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$college=$_POST['college'];
	$registration=$_POST['registration'];
	$status=1;
	$query=mysqli_query($db,"insert into student(name,email,password,college,registration,status) values('$name','$email','$password','$college','$registration','$status')");
	$msg="Registration successfull. Now You can login !";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" href="assests/images/grivo.png">
	<title>Registration | GrivoTech</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<link rel="stylesheet" href="assests/css/userregistration.css" type="text/css">

    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
        
	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
</head>
<body>
	<h3 align="center" style="color:#000; " >Grievance Redressal System</h3>
	<hr style="width:600px;"/>
	<article class="registration-page">

	<div class="container">
	
		<section class="form">
			  	
			<form class="user-registration-form" method="post">
				<fieldset>
					<legend>User | Registration | GrivoTech</legend><br>
					<p style="padding-left: 1%; color: green">
		        	<?php if($msg){
                     echo htmlentities($msg);
		        		}?>


		        </p>
					<label for="name-user">Full Name <i class="fa fa-user-circle" aria-hidden="true"></i><br><input type="text" name="name" id="fullname-user" placeholder="Enter your Full Name" value="<?php echo $username; ?>" required autofocus></label><br>
					
					<label for="email-registration-user">Email-Id <i class="fa fa-envelope" aria-hidden="true"></i><br><input type="email" name="email" id="email_id" placeholder="Enter your Email-Id" value="<?php echo $email; ?>" onBlur="userAvailability()" required></label>
					
					<span id="user-availability-status1" style="font-size:12px;"></span><br>
					
					<label for="password-registration-user">Password <i class="fa fa-key" aria-hidden="true"></i><br><input type="password" name="password" id="txtPassword" placeholder="Enter your Password here" required></label><br>
					
					<label for="college">College <i class="fa fa-mobile" aria-hidden="true"></i></label><br>
                    <select name="college" required="required" class="form-control" style="width:360px; height:40px;">
                    <option value="">Select College</option>
                    <?php $sql=mysqli_query($db,"select collegeName from academy ");
                     while ($rw=mysqli_fetch_array($sql)) {
                      ?>
                      <option value="<?php echo htmlentities($rw['collegeName']);?>"><?php echo htmlentities($rw['collegeName']);?></option>
                       <?php
                            }
                        ?>
					</select>
					<br><br>
					<label for="registration-id">College Id<i class="fa fa-key" aria-hidden="true"></i><br><input type="text" name="registration" id="txtregister" placeholder="Enter your College Id" required></label><br><br><br>
					
					<button type="submit" name="submit"><i class="fa fa-user"></i>&nbsp;Register</button>
					
					<p class="message">Already Registered? <a href="userlogin.php"> Login <i class="fa fa-sign-in" aria-hidden="true"></i></a></p>
				</fieldset>
			</form>
		</section>
		</div>
	</article>
	<!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    

</body>
</html>
