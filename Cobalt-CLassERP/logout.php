<!-------------------------------------------------------------------------------
|	Copyright (C) InConnect Technologies - All Rights Reserved					|
|	This file is a part of Cobalt Library Management Application				|
|	Unauthorized copying of this file, via any medium is strictly prohibited	|
|	Written by Shivam Mishra <scm.mymail@gmail.com>, June 2016					|
--------------------------------------------------------------------------------->
<?php
	session_start();
	if(isset($_SESSION["username"]))
	{
		unset($_SESSION["username"]);
	}
	session_destroy();
	header("Location: index.php");
?>