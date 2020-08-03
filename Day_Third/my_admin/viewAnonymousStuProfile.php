<?php
session_start();
// if(isset($_SESSION['is_adminlogin']))
//{
//     $adminEmail=$_SESSION['aEmail']
// }else{
//      echo "<script>header('location:adminlogin.php')</script>"
//}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard | GrivoTech</title>
	<!-- Bootstrap core CSS -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="assets/css/style.css">
	<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
</head>
<body>
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
				<ul class="nav navbar-nav">
					<li><a href="index.php">Dashboard</a></li>
					<li><a href="profile.php">Profile</a></li>
					<li><a href="newmem.php">Add Members</a></li>
					<li><a href="report.php">Report</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">

        <li style="margin-top:7px;"><?php
						if(isset($_SESSION['success'])): ?>
						<div class="error success">

						<?php
						echo $_SESSION['success'];
						unset($_SESSION['success']);
						?>

						</div>
						<?php endif ?>

						<?php if(isset($_SESSION['username'])) :?>
						<font color="white">Welcome <?php echo $_SESSION['username'] ?></font>

						<?php endif ?></li>
					<li style="float:right;"><a href="logout.php">Logout</a></li>&nbsp;&nbsp;&nbsp;&nbsp;
				</ul>
			</div><!-- /.nav-collapse -->
		</div>
	</nav>

	<header id="header">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<h2><span class="glyphicon glyphicon-cog" aria-hidden="true"> Student Details</span></h2>
				</div>
				<div class="col-md-2">
					<div class="dropdown create">
						<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Navigate<span class="caret"></span></button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a type="button" data-toggle="modal" data-target="#addPage">Add User</a></li>
							<li><a href="#">Add College</a></li>
							<li><a href="#">Request Report</a></li>
							<li><a href="newmem.php">Add Admin</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>

	<section id="breadcrumb">
		<div class="container">
			<ol class="breadcrumb">
				<li class="active">Student Details</li>
			</ol>
		</div>
	</section>

	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="index.php" class="list-group-item "><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard</a>
						<a href="adminGrievanceSection.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Un-Solved Grievance <span class="badge">12</span></a>
						<a href="users.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Under-Review Grievance <span class="badge">203</span></a>
						<a href="posts.php" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Solved Grievance <span class="badge">33</span></a>
						<a href="mem.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Member <span class="badge">297</span></a>
						<a href="profile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile</a>
					</div>
					<div class="well">
						<h4>Registered Grievance</h4>
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="100" ariaa-valuemin="0" aria-valuemax="100" style="width: 100%;">1000
							</div>
						</div>
						<h4>Solved Grievance</h4>
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="40" ariaa-valuemin="0" aria-valuemax="100" style="width: 40%;">400
							</div>
						</div>
						<h4>Un-Solved Grievance</h4>
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="30" ariaa-valuemin="0" aria-valuemax="100" style="width: 60%;">600
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">

					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title text-center">Student Details</h3>
						</div>
						<div class="panel-body">

                <?php
                 include('include/db.php')
                ?>
              <?php
                 if(isset($_REQUEST['view'])){
              //    $sql = "SELECT * FROM student WHERE student_id={$_REQUEST['id']}";
               	$sql = "SELECT  student.name,student.college,student.city,student.email, student.mobile,anonymouscomplain.proof,anonymouscomplain.grievance
                           FROM  student INNER JOIN anonymouscomplain
                           ON  student.student_id=anonymouscomplain.id
                           WHERE student_id={$_REQUEST['id']}";

                  $result = $db->query($sql) or die($db->error);
               $row = $result->fetch_assoc(); ?>
                   <table  class="table table-bordered">
                    <tbody>
       <tr>
         <td>Student Name</td>
         <td> <?php if(isset($row["name"])){
           echo $row["name"]; } ?>
           </td>
       </tr>
       <tr>
     <td>College Name</td>
         <td> <?php if(isset($row["college"])){
           echo $row["college"]; } ?>
           </td>
       </tr>
         <tr>
           <td>City</td>
           <td> <?php if(isset($row["city"])){
             echo $row["city"]; } ?>
             </td>
          <tr>
             <td>Email Id</td>
             <td> <?php if(isset($row["email"])){
               echo $row["email"]; } ?>
               </td>
           </tr>
           <tr>
           <td>Phone Number</td>
           <td> <?php if(isset($row["mobile"])){
             echo $row["mobile"]; } ?>
           </td>
         <tr>
           <td>Supporting  File</td>
           <td> <?php if(isset($row["proof"])){
            echo $row["proof"]; } ?>
           </td>
         </tr>


     </tbody>
  </table>
  <div class="text-center">
    <form action="ViewGrievanceAnonymousUser.php" class="mb-3 d-print-none d-inline">
         <input class="btn btn-secondary" type="submit" value="Close">
    </form>
   </div>
  <?php } ?>
 </div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<?php include('../include/footer.php'); ?>

	<!-- Bootstrap core JavaScript -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script>
		CKEDITOR.replace('editor1');
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
