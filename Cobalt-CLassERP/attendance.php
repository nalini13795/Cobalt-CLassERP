<?php
//Starting Session
	require_once("config.php");
	session_start();
	if(isset($_SESSION['username']) && $_SESSION['username']=="admin")
	{
	$batch=$_GET["batch"];
	$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
?>
	<!DOCTYPE html>
	<html>
	<title>Cobalt ClassERP</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="lib/custom.css">
	<link rel="stylesheet" href="lib/w3.css">
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="scripts/jquery.min.js"></script>
	<script type="text/javascript" src="search_user/custom.js"></script>
	<style>
	html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
	a{text-decoration:none}
	.block{min-width: 320px;}
	hr {
    opacity:0.5;
	border: 0;
    height: 1px;
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
} 
	</style>
	​<body>
	<div class="w3-content" style="max-width:1400px">
	<!-- Header -->
	<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
		<h1><a href="index.php"><b>Cobalt</b> Class<b>ERP</b></a></h1>
	</header>
	<div class="w3-row w3-animate-bottom w3-center" style="width:75%;margin:auto;">
		<div class="w3-margin-top w3-card-2 w3-container w3-blue w3-round w3-center w3-padding-16">
			<h1>Attendance for <?php echo 'SY'.$_GET['batch'];?></h1>
		</div>
	</div>
	<div class="w3-row w3-animate-bottom" style="width:75%;margin:auto;">
		<div class="w3-margin-top w3-margin-bottom w3-card-2 w3-container w3-white w3-round w3-padding-32">
			<h4>Mark Attendance for <b><?php echo date('d F Y') ?></b></h4>
			<hr>
				<form action="markattendance.php" method="POST">
					<div class="w3-row">
						<div class="w3-col m4 l3 w3-padding w3-border-right">
							<b>Select Subject</b>
							<select class="w3-select" name="Subject">
							<option value="" disabled selected>Choose your option</option>
							<option value="Physics">Physics</option>
							<option value="Maths">Maths</option>
							<option value="Chem">Chemistry</option>
							<option value="Bio">Biology</option>
							</select>
							<br><br>
							<b>Select Faculty</b>
							<select class="w3-select" name="teacher">
							<option value="" disabled selected>Choose your option</option>
							<option value="1">Chandler Bing</option>
							<option value="2">Dolor Sit</option>
							<option value="3">Lipsum Dolor</option>
							<option value="4">Biology</option>
							</select>
							<br><br>
							<b>Time of Commencement</b>
							<input class="w3-input" type="time" name="lecturetime">
							<br>
							<b>Topic Covered</b>
							<input class="w3-input" type="text" name="topic">
						</div>
						
						<div class="w3-col m8 l9">
						<table class="w3-table w3-stripped">
							<tr>
								<th>Student ID</th>
								<th>Student Name</th>
								<th>Report</th>
							</tr>
		
							<?php
								$SelectStudentQuery="SELECT * FROM student where batch=".
								"\"" . htmlspecialchars($batch, ENT_QUOTES) . "\"";
								$StudentListQuery = mysqli_query($Link, $SelectStudentQuery);
								while($stud_data = mysqli_fetch_assoc($StudentListQuery))
								{
									$studentid=$stud_data["studentid"];
									$studentname=$stud_data["name"];
									echo '<tr>
										<td>'. $studentid .'</td>
										<td>'. $studentname .'</td>
										<td><input class="w3-check" type="checkbox" name="present[]" value="'. $studentid .'">  Present</input>
									</tr>';
								}
							?>
						</table>
						</div>
					</div>
					<hr>
					<div class="w3-container w3-center">
						<button class="w3-btn w3-blue w3-hover-white w3-hover-text-blue w3-round"><h3>Submit</h3></button>
					<div>
			</form>
		</div>
	</div>
<?php 
	} 
?>