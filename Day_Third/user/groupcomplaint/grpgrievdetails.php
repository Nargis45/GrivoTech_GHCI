<?php
session_start();
include('../include/db.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:adminlogin.php');
}
else{


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="img/logogrivotech.png">
	<title>Group Grievance Details | View Group Grievances</title>
	<!-- Bootstrap Core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--External CSS -->
	<link rel="stylesheet" href="assets/css/fac_style.css">
	
	<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+600+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

</head>
<body>
<?php include('include/header.php');?>
	<section id="breadcrumb">
		<div class="container" style="margin-top: 2%;">
			 <ol class="breadcrumb">
			 	<li><input type="button" value="Back" onclick="history.go(-1)"></li>
			 	<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
			 	<li>View Group Grievances</li>
			 	<li class="active">Group Grievance Details</li>
			 </ol>
		</div>
	</section>

	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="../dashboard.php" class="list-group-item"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard</a>
						<a href="../newgrievance.php" class="list-group-item"><i class="fa fa-plus" aria-hidden="true"></i> Register New Grievance</a>
						<a href="../viewgrievance.php" class="list-group-item"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> View Filed Grievance</a>
						<a href="massgrievform.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Register Group Grievance</a>
						<a href="massgrievview.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> View Group Grievances</a>
						<a href="../stuprofile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> My Profile</a>
					</div>
					
				</div>
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading main-color-bg">
							<h3 class="panel-title">Complain Details</h3>
						</div>
                         <div class="panel-body" style="min-height: 400px;">

							 <!-- Start 2nd Column -->

							  <div class="col-sm-9 col-md-12 mt-5">
<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
									
									<tbody>
<!-- 
<?php /* $st='closed';
$query=mysqli_query($db,"select complain.*,student.name as name,category.categoryName as catname from complain join student on student.student_id=complain.userId join category on category.id=complain.grievanceId where complain.complaintNumber='".$_GET['cid']."'");
while($row=mysqli_fetch_array($query))
{
*/
?>									
										--> <tr>
											<td><b>Group Complaint Number</b></td>
											<td>num</td>
											<td><b>Complainant Name</b></td>
											<td> 
											complainant name and profile </td>
										</tr>

                                               <tr>
											<td><b>Grievance Type </b></td>
											<td>Category from</td>
<td><b>File(if any) </b></td>
											
								<td colspan="5"> <!-- code for file starts here	<?php $cfile=$row['proof'];
if($cfile=="" || $cfile=="NULL")
{
  echo "File NA";
}
else{?>
<a href="../user/assests/images/<?php echo htmlentities($row['proof']);?>" target="_blank"/> View File</a>
<?php } ?> and end here--></td>
	
										</tr>

                                             <tr>
											<td><b>Complaint Details </b></td>
											
											<td colspan="5"> wriiten compt details</td>
											
										</tr>

											</tr>    

<tr>
<td><b>Final Status</b></td>
											<!-- complaint current status
											<td colspan="5"><?php if($row['status']=="")
											{ echo "Not Process Yet";
} else {
										 echo htmlentities($row['status']);
										 }?></td>										
										-->	
										</tr>
<!-- code for remarks 
<?php $retf=mysqli_query($db,"select pushcomplaint.reason as reason,pushcomplaint.status as sstatus,pushcomplaint.pushdate as rdate from pushcomplaint join complain on complain.complaintNumber=pushcomplaint.complaintnumber where pushcomplaint.complaintnumber='".$_GET['cid']."'");
while($rwf=mysqli_fetch_array($retf))
{
?>
-->
<tr>
 
<td><b>Reason (from faculty)</b></td> 
<td colspan="5"><!-- code for reason<?php echo  htmlentities($rwf['reason']); ?> --> <br><br><b>Remark Date :</b> <!-- <?php echo  htmlentities($rwf['rdate']); ?>--></td> 
</tr>

<tr>


<td><b>Status</b></td>

<td colspan="5"><!--<?php echo  htmlentities($rwf['sstatus']); ?>--></td> 
</tr>
<!--
<?php }?>
-->
<!-- 
<?php $rets=mysqli_query($db,"select pushsolution.reason as reason,pushsolution.pushdate as rdate from pushsolution join complain on complain.complaintNumber=pushsolution.complaintnumber where pushsolution.complaintnumber='".$_GET['cid']."'");
while($rws=mysqli_fetch_array($rets))
{
?> -->
<tr>
<td><b>Solution (to faculty)</b></td>
<td colspan="5"> <!-- <?php echo  htmlentities($rws['reason']); ?>--> <br><br><b>Remark Date :</b><!-- <?php echo  htmlentities($rws['rdate']); ?>--> </td> 
</tr> <!--
<?php }?>

-->

<!-- 
<?php $ret=mysqli_query($db,"select complaintremark.remark as remark,complaintremark.status as sstatus,complaintremark.remarkDate as rdate from complaintremark join complain on complain.complaintNumber=complaintremark.complaintNumber where complaintremark.complaintNumber='".$_GET['cid']."'");
while($rw=mysqli_fetch_array($ret))
{
?> -->
<tr>
<td><b>Remark</b></td>  
<td colspan="5"><!--<?php echo  htmlentities($rw['remark']); ?> --> <br><br><b>Remark Date :</b><!-- <?php echo  htmlentities($rw['rdate']); ?>--></td> 
</tr>

<tr>
<td><b>Status</b></td>
<td colspan="5"> <!-- <?php echo  htmlentities($rw['sstatus']); ?> --></td>
</tr> <!-- 
<?php }?>  -->

                                          <tr>
											<td><b>Action</b></td>
											<td colspan="6"> 
											<?php if($row['status']=="closed" ){?>
                                             <b style="color:red;">case solved</b>    
											<?php } else{ ?>
											 <a href="javascript:void(0);" onClick="popUpWindow('pushsolution.php?cid=<?php echo htmlentities($row['complaintNumber']);?>');" title="Update order">
                                             <center><button type="button" class="btn btn-primary">Reply To Faculty</button></center></a>
											 </td>      
										</tr>

                                            <?php  } ?>
											<?php  } ?>




</table>
							 </div><!-- End 2nd Column -->
													</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
<?php include('../../include/footer.php');?>


	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body></html>
<?php } ?>