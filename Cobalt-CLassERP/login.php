<?php
   session_start();
   require_once("config.php");
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	  if($conn){
		$myusername = $_POST['un'];
		$mypassword = hash('sha256', $_POST['pw']); 
      
		$sql = "SELECT username FROM login WHERE username = '$myusername' and password = '$mypassword'";
		$result = mysqli_query($conn,$sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
		$count = mysqli_num_rows($result);
      
		// If result matched $myusername and $mypassword, table row must be 1 row
		
		if($count == 1) {
         $_SESSION['username'] = $myusername;
         header("location: index.php");
		}
	  }
		else {
			$error = "Your Login Name or Password is invalid";
		}
   }
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ClassERP LOGIN </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="lib/w3.css">
	<link rel="stylesheet" href="lib/custom.css">
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
a{text-decoration:none}
li{font-size:20px}
.block-small{min-width: 220px;}
</style>
<body>
<div class="w3-content" style="max-width:40%">
<!-- Header -->
<header class="w3-margin-bottom w3-animate-opacity w3-container w3-text-white w3-center">
	<h1><a href="index.html"><b>Cobalt</b> Class<b>ERP</b></a></h1>
</header>
<div class="w3-conatiner w3-diplay-middle" style="width:75%;margin:auto;min-width:300px;">
	<div class="w3-padding-32 w3-card-2 w3-white w3-margin-top w3-animate-bottom w3-round">
	<div class="w3-margin w3-center">
			<form action="#" method="POST">
					<h3><label class="w3-text-blue">Username</label></h3>
					<input name="un" class="w3-input w3-border" type="text"><br>
					 
					<h3><label class="w3-text-blue">Password</label></h3>
					<input name="pw" class="w3-input w3-border" type="password"><br>
			
					<button class="w3-btn w3-blue w3-round"><h3>Login</h3></button>
			</form>
	</div>
	</div>
</div>
</body>
</html>
