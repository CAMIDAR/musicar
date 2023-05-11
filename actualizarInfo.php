<?php
include("includes/includedFiles.php");
?>

<div class="userDetails">

	<div class="container borderBottom">
		<h2>EMAIL</h2>
		<input type="text" class="email" name="email" placeholder="Correo electrónico..." value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button" onclick="updateEmail('email')">GUARDAR</button>
	</div>

	<div class="container">
		<h2>CONTRASEÑA</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Contraseña actual">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="Nueva contraseña">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Confirma la contraseña">
		<span class="message"></span>
		<button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">GUARDAR</button>
	</div>

</div>