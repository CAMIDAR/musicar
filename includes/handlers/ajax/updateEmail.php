<?php
include("../../config.php");

if(!isset($_POST['username'])) {
	echo "ERROR: No se pudo establecer el nombre de usuario";
	exit();
}

if(isset($_POST['email']) && $_POST['email'] != "") {

	$username = $_POST['username'];
	$email = $_POST['email'];

	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo "El email no es válido";
		exit();
	}

	$emailCheck = mysqli_query($con, "SELECT email FROM usuario WHERE email='$email' AND username != '$username'");
	if(mysqli_num_rows($emailCheck) > 0) {
		echo "El email ya está en uso";
		exit();
	}

	$updateQuery = mysqli_query($con, "UPDATE usuario SET email = '$email' WHERE username='$username'");
	echo "Actualización correcta";

}
else {
	echo "Debe proporcionar un email";
}

?>