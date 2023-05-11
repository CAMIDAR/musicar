<?php
include("../../config.php");

if(!isset($_POST['username'])) {
	echo "ERROR: No se pudo establecer el nombre de usuario";
	exit();
}

if(!isset($_POST['oldPassword']) || !isset($_POST['newPassword1'])  || !isset($_POST['newPassword2'])) {
	echo "No se han establecido todas las contraseñas";
	exit();
}

if($_POST['oldPassword'] == "" || $_POST['newPassword1'] == ""  || $_POST['newPassword2'] == "") {
	echo "Por favor, rellene todos los campos";
	exit();
}

$username = $_POST['username'];
$oldPassword = $_POST['oldPassword'];
$newPassword1 = $_POST['newPassword1'];
$newPassword2 = $_POST['newPassword2'];

$oldMd5 = md5($oldPassword);

$passwordCheck = mysqli_query($con, "SELECT * FROM usuario WHERE username='$username' AND password='$oldMd5'");
if(mysqli_num_rows($passwordCheck) != 1) {
	echo "La contraseña es incorrecta";
	exit();
}

if($newPassword1 != $newPassword2) {
	echo "Tus nuevas contraseñas no coinciden";
	exit();
}

if(preg_match('/[^A-Za-z0-9]/', $newPassword1)) {
	echo "Su contraseña solo debe contener letras y/o números";
	exit();
}

if(strlen($newPassword1) > 30 || strlen($newPassword1) < 5) {
	echo "Su nombre de usuario debe tener entre 5 y 30 caracteres";
	exit();
}

$newMd5 = md5($newPassword1);

$query = mysqli_query($con, "UPDATE usuario SET password='$newMd5' WHERE username='$username'");
echo "Actualización correcta";

?>