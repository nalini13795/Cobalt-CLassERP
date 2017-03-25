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
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="lib/custom.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
a{text-decoration:none}
li{font-size:20px}
.block-small{min-width: 220px;}
input {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    width: 100%;

}
</style>
​<body>
<div class="w3-content" style="max-width:1400px">
<!-- Header -->
<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
	<h1><a href="index.html"><b>Cobalt</b> Class<b>ERP</b></a></h1>
</header>
<?php
if($_SESSION['username']!="admin")
{?>
	<form>
  		<input type="text" name="search" placeholder="Search..">
	</form>
	<br>
<?php
}
?>
<?php
if($_SESSION['username']!="admin")
{
	$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	$SelectBookQuery="SELECT * FROM student where studentid=".
			"\"" . htmlspecialchars($_SESSION["username"], ENT_QUOTES) . "\"";
	$sql = mysqli_query($Link, $SelectBookQuery);
	$stud_data = mysqli_fetch_assoc($sql);
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
					<li class="w3-hover-text-red"><b>DOB: </b<?php echo $stud_data['dob']?></li>
					<li class="w3-hover-text-red"><b>Mobile No: </b><?php echo $stud_data['phone']?></li>
					<li class="w3-hover-text-red"><b>Parent Contact: </b<?php echo $stud_data['parentphone']?></li>
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
					<h1><b>62%</b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Physics
					<h1><b>79%</b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Chemistry
					<h1><b>82%</b></h1>
				</div>
			</div>
			<div class="w3-col s3 w3-center block-small">
				<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-16">
					Biology
					<h1><b>44%</b></h1>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
}
?>
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
