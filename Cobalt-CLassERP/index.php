<?php
//Starting Session
	require_once("config.php");
	session_start();
	if(isset($_SESSION['username']))
	{
?>

<!DOCTYPE html>
<html>
<title>Cobalt ClassERP</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="lib/custom.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="search_user/custom.js"></script>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
a{text-decoration:none}
.block{min-width: 320px;}
</style>
​<body>
<div class="w3-content" style="max-width:1400px">
<!-- Header -->
<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
	<h1><a href="index.php"><b>Cobalt</b> Class<b>ERP</b></a></h1>
</header>


<div class="w3-row w3-animate-bottom w3-center" style="width:75%;margin:auto;">
<?php
if($_SESSION['username']!="admin")
{
?>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-red w3-container w3-red w3-round w3-center w3-padding-32">
			<h1>Schedule</h1>
		</div>
	</div>
 	<div class="w3-col s4 w3-center block">
		<a href="studprofile.php?id=<?php echo $_SESSION['username']?>">
			<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-32">
				<h1>Student Profile</h1>
			</div>
		</a>
	</div>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-teal w3-container w3-teal w3-round w3-center w3-padding-32">
			<h1>Notes</h1>
		</div>
	</div>
	
<?php
}
if($_SESSION['username']=="admin")
{
?>

	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-deep-orange w3-container w3-deep-orange w3-round w3-center w3-padding-32">
			<h1>Inventory</h1>
		</div>
	</div>
 	<div class="w3-col s4 w3-center block">
		<a href="batch.html"><div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-brown w3-container w3-brown w3-round w3-center w3-padding-32">
			<h1>Batches</h1>
		</div></a>
	</div>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-deep-purple w3-container w3-deep-purple w3-round w3-center w3-padding-32">
			<h1>Teacher Profile</h1>
		</div>
	</div>
	<div class="w3-col s4 w3-center block">
		<a onclick="document.getElementById('id01').style.display='block'">
			<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-32">
				<h1>Student Profile</h1>
			</div>
		</a>
		<div id="id01" class="w3-modal">
			<div class="w3-modal-content">
				<div class="w3-container">
					<div class="w3-content w3-padding">
						<span onclick="document.getElementById('id01').style.display='none'" 
						class="w3-button w3-display-topright">&times;</span>
						<h3 class="w3-padding w3-blue-grey">ENTER STUDENT ID/ NAME</h3>
						<!--USER SEARCH-->
						<form id="user_search">
							<input class="w3-input w3-border" id="search" autocomplete="off" type="text">
							<div class="w3-text-blue-grey">
									<ul id="results"></ul>
							</div><!--INPUT BOX-->
						<form>
					</div>
				</div>	
			</div>
		</div>
	</div>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-teal w3-container w3-teal w3-round w3-center w3-padding-32">
			<h1>Notes</h1>
		</div>
	</div>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-red w3-container w3-red w3-round w3-center w3-padding-32">
			<h1>Attendance</h1>
		</div>
	</div>
	
<?php
}
?>
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