<?php
	require_once("config.php");
	session_start();
	if(isset($_SESSION['username']) && $_SESSION['username']=="admin")
	{
		$Link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
		$batch = $_GET['batch'];
		$subject = $_POST['Subject'];
		$teacher = $_POST['teacher'];
		$time = $_POST['lecturetime'];
		$topic = $_POST['topic'];
		$date = date('d-m-Y');
		$id = uniqid();
		
		$addLecture="INSERT INTO `lecture`(`lectureid`, `teacherid`, `date`, `time`, `batch`, `subject`, `topic`) 
		VALUES ('".$id."','".$teacher."','".$date."','".$time."','".$batch."','".$subject."','".$topic."')";
		$addlec = mysqli_query($Link, $addLecture);		
		if(!empty($_POST['present'])) {
			foreach($_POST['present'] as $studentid) {
				$markstudentP="INSERT INTO `attendance`(`attendance entry`, `lectureid`, `studentid`, `Attendance`, `Subject`) 
				VALUES ('".uniqid('EN')."','".$id."','".$studentid."','P','".$subject."')";
				$markP = mysqli_query($Link, $markstudentP);	
			}
		}
		if(!empty($_POST['absent'])) {
			foreach($_POST['absent'] as $studentid) {
				$markstudentA="INSERT INTO `attendance`(`attendance entry`, `lectureid`, `studentid`, `Attendance`, `Subject`) 
				VALUES ('".uniqid('EN')."','".$id."','".$studentid."','A','".$subject."')";
				$markA = mysqli_query($Link, $markstudentA);	
			}
		}
		header('location:index.php');
	}
	else
	{
		header('location:logout.php');
	}
?>