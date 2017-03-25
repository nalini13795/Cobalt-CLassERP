<?php
//Starting Session
	require_once("config.php");
	session_start();
?>
session_start();

if(isset)
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
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
a{text-decoration:none}
.block{min-width: 320px;}
</style>
​<body>
<div class="w3-content" style="max-width:1400px">
<!-- Header -->
<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
	<h1><a href="index.html"><b>Cobalt</b> Class<b>ERP</b></a></h1>
</header>
<div class="w3-row w3-animate-bottom w3-center" style="width:75%;margin:auto;">
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-red w3-container w3-red w3-round w3-center w3-padding-32">
			<h1>Attendance</h1>
		</div>
	</div>
 	<div class="w3-col s4 w3-center block">
		<a onclick="document.getElementById('id01').style.display='block'">
			<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-blue w3-container w3-blue w3-round w3-center w3-padding-32">
				<h1>Student Profile</h1>
			</div>
		</a>
		<div id="id01" class=" w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn">&times;</span>
        <p></p>
      </div>
    </div>
  </div>
	</div>
	<div class="w3-col s4 w3-center block">
		<div class="w3-margin w3-card-2 w3-hover-white w3-hover-text-teal w3-container w3-teal w3-round w3-center w3-padding-32">
			<h1>Teacher Profile</h1>
		</div>
	</div>
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
			<h1>Notes</h1>
		</div>
	</div>
</div>
</body>
</html>
