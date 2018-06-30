<?php
	$host = "localhost";
	$username = "root";
	$password = "";
	$database = "komakun";

	// Create connection
	$connect = new mysqli($host, $username, $password, $database);
	
	$dbhandle = mysqli_connect($host, $username, $password, $database);
	
	mysqli_select_db($dbhandle,$database);
?>