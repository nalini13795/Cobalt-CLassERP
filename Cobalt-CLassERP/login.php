<?php
   session_start();
   require_once("config.php");
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	  if($conn){
		$myusername = $_POST['un'];
		$mypassword = $_POST['pw']; 
      
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
<html >
<head>
  <meta charset="UTF-8">
  <title>COBALT LOGIN </title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>COBALT LOGIN</h1><span></span>
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle">    
  </div>
  <div class="form">
    <h2>Login to your account</h2>
    <form action="#" method="POST">
      <input name="un" type="text" placeholder="Username"/>
      <input name="pw" type="password" placeholder="Password"/>
      <button>Login</button>
    </form>
  </div>
  

</body>
</html>
