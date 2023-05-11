<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("America/Argentina/Buenos_Aires");

	$con = mysqli_connect("localhost", "root", "", "musicar");

	if(mysqli_connect_errno()) {
		echo "Error al conectar: " . mysqli_connect_errno();
	}
?>