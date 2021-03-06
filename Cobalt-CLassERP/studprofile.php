<?php
//Starting Session
	require_once("config.php");
	session_start();
	if(isset($_SESSION['username']))
	{
?>

<!DOCTYPE html>
<html>
<title>Student Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="lib/w3.css">
<link rel="stylesheet" href="lib/custom.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
a{text-decoration:none}
li{font-size:20px}
.block-small{min-width: 220px;}
</style>
​<body>
<div class="w3-content" style="max-width:1400px">
<!-- Header -->
<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
	<h1><a href="index.php"><b>Cobalt</b> Class<b>ERP</b></a></h1>
</header>
<?php
if($_SESSION['username']!="admin")
{
	$id=$_SESSION["username"];
	if(isset($_GET['id']))
	{
		header('location:studprofile.php');
	}
	$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	$SelectStudentQuery="SELECT * FROM student where studentid=".
			"\"" . htmlspecialchars($_SESSION["username"], ENT_QUOTES) . "\"";
	$sql = mysqli_query($Link, $SelectStudentQuery);
	$stud_data = mysqli_fetch_assoc($sql);
}
else if($_SESSION['username']=="admin")
{
	if(isset($_GET['id']))
	{
		$id = $_GET['id'];
	}
	else
	{
		$id = 123;
	}	
	$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	$SelectStudentQuery="SELECT * FROM student where studentid=".
			"\"" . htmlspecialchars($id , ENT_QUOTES) . "\"";
	$sql = mysqli_query($Link, $SelectStudentQuery);
	$stud_data = mysqli_fetch_assoc($sql);
}

function getAttend($subject){
	$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if($_SESSION['username']=='admin')
	{
		if(isset($_GET['id']))
		{
			$id = $_GET['id'];
		}
		else
		{
			$id = 123;
		}	
	}
	else
	{
		$id=$_SESSION["username"];
	}
	$SubjectQ="SELECT * FROM attendance where subject='".$subject."' and studentid=".
			"\"" . htmlspecialchars($id , ENT_QUOTES) . "\"";
	$SubjectResult = mysqli_query($Link, $SubjectQ);
	$row = mysqli_fetch_array($SubjectResult,MYSQLI_ASSOC);
    $count = mysqli_num_rows($SubjectResult);
	
	$Attended="SELECT * FROM attendance where Attendance='P' and subject='".$subject."' and studentid=".
			"\"" . htmlspecialchars($id , ENT_QUOTES) . "\"";
	$AttendedResult = mysqli_query($Link, $Attended);
	$row2 = mysqli_fetch_array($AttendedResult,MYSQLI_ASSOC);
    $attendcount = mysqli_num_rows($AttendedResult);
	
	$percent = $attendcount/$count;
	$percent_friendly = number_format( $percent * 100, 2 ); 
	return $percent_friendly;
	}
?>
	<div class="w3-conatiner" style="width:75%;margin:auto;min-width:300px;">
	<div class="w3-padding-32 w3-card-2 w3-white w3-margin-top w3-animate-bottom w3-round">
		<div class="w3-row">
			<div class="w3-col w3-padding s3 w3-center w3-border-right" style="min-width:256px;">
				<img src="images/boy.png">
			</div>
			<div class="w3-rest w3-text-custom-gray w3-padding" style="min-width:256px;">
				<ul style="list-style-type:none;padding:0;">
					<li><h1 class="w3-text-blue"><?php echo $stud_data['name']?></h1></li>
					<li class="w3-hover-text-red"><b>ID: </b><?php echo $stud_data['studentid']?></li>
					<li class="w3-hover-text-red"><b>DOB: </b><?php echo $stud_data['dob']?></li>
					<li class="w3-hover-text-red"><b>Mobile No: </b><?php echo $stud_data['phone']?></li>
					<li class="w3-hover-text-red"><b>Parent Contact: </b><?php echo $stud_data['parentphone']?></li>
					<li class="w3-hover-text-red"><b>Address: </b><?php echo $stud_data['address']?></li>
				</ul>

			</div>
		</div> 
	</div>
	<div class="w3-padding w3-center w3-card-2 w3-white w3-margin-top w3-animate-bottom w3-round">
		<h3>Attendance</h3>
		<div class="w3-row">
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Mathematics
					<h1><b><?php echo getAttend("Math")?></b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Physics
					<h1><b><?php echo getAttend("Physics")?></b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Chemistry
					<h1><b><?php echo getAttend("Chem")?></b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Biology
					<h1><b><?php echo getAttend("Bio")?></b></h1>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="w3-display-bottomright">
	<div class="w3-col s4 w3-center block">
		<button class="w3-margin w3-btn w3-round w3-white w3-hover-black" onclick="location.href='logout.php'">
			<h1>Logout</h1>
		</button>
	</div>
</div>
</body>
</html>
<?php
}
else
{
	header("Location:login.php");
}
?>
