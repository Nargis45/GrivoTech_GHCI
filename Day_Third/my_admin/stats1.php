<!-- Line Chart  of no of grievance registered per day -->

<?php
session_start();
error_reporting(0);
include('../include/db.php');

if (strlen($_SESSION['alogin']) == 0) {
	header('location:adminlogin.php');
} else {
?>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Statistics Overview | GrivoTech</title>
		<!-- Bootstrap core CSS -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/style.css">
		<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
	</head>

	<body>
		<?php include('include/header.php'); ?>



		<section id="breadcrumb">
			<div class="container" style="margin-top: 2%;">
				<ol class="breadcrumb">
					<li><input type="button" value="Back" onclick="history.go(-1)"></li>
					<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
					<li class="active">Overall Statistics Overview</li>
				</ol>
			</div>
		</section>

		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="list-group">
							<a href="index.php" class="list-group-item"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Dashboard</a>
							<a href="reviewGrievanceSection.php" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> In-Progress Grievance <span class="badge"></span></a>
							<a href="unsolvedGrievanceSection.php" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Un-Solved Grievance <span class="badge"></span></a>
							<a href="solvedGrievanceSection.php" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Solved Grievance <span class="badge"></span></a>
							<a href="pushF.php" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Pushed Grievance <span class="badge"></span></a>
<a href="petitions.php" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> View Petitions <span class="badge"></span></a>
							<a href="stats1.php" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Statistics</a>
							<a href="stats4.php" class="list-group-item"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Statistics</a>
							<a href="addUniv.php" class="list-group-item"><span class="glyphicon glyphicon-th" aria-hidden="true"></span> Add College</a>
							<a href="profile.php" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile</a>
						</div>

					</div>
					<div class="col-md-9">
						<!-- Website Overview -->
						<div class="panel panel-default">
							<div class="panel-heading main-color-bg">
								<h3 class="panel-title">Overall Statistics Overview</h3>
							</div>
							<div class="panel-body" style="min-height: 400px;">
								<div class="col-md-12">
									<div class="well dash-box-chart" style="min-height: 350px;">
										<div id="curve_chart" style="min-height: 400px"></div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>

	</html>

	<?php
	$query = "SELECT DATE(regDate) AS dt, COUNT(*) AS newComplaints FROM complain GROUP BY DATE(regDate) ORDER BY dt";
	$ret = mysqli_query($db, $query);
	$newComplaints = array();
	while ($r = $ret->fetch_assoc()) {
		array_push($newComplaints, array($r['dt'], (int)$r['newComplaints']));
	}
	$newComplaints = json_encode($newComplaints);
	$query = "SELECT * FROM category;";
	$categories = mysqli_query($db, $query);
	// echo $newComplaints;
	?>
	<script>
		const x = <?php echo $newComplaints; ?>
	</script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

	<script type="text/javascript">
		// New complaints per day
		google.charts.load('current', {
			packages: ['corechart', 'line']
		});
		google.charts.setOnLoadCallback(drawCurveTypes);

		function drawCurveTypes() {
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'X');
			data.addColumn('number', 'New grievances');

			data.addRows(<?php echo $newComplaints; ?>)

			var options = {
				hAxis: {
					title: 'Date'
				},
				vAxis: {
					title: 'New grievances'
				},
				series: {
					1: {
						curveType: 'function'
					}
				}
			};

			var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
			chart.draw(data, options);
		}
	</script>





	<?php include('../include/footer.php'); ?>

	<!-- Bootstrap core JavaScript -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	</body>

	</html>
<?php } ?>