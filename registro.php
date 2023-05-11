<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name) {
		if(isset($_POST[$name])) {
			echo $_POST[$name];
		}
	}
?>

<html>
    <head>
        <title>Bienvenido a MusicAr!</title>

        <link rel="stylesheet" type="text/css" href="assets/css/registro.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="assets/js/register.js"></script>
    </head>
    <body>
        <?php

        if(isset($_POST['registerButton'])) {
            echo '<script>
                    $(document).ready(function() {
                        $("#loginForm").hide();
                        $("#registerForm").show();
                    });
                </script>';
        }
        else {
            echo '<script>
                    $(document).ready(function() {
                        $("#loginForm").show();
                        $("#registerForm").hide();
                    });
                </script>';
        }
    
        ?>
        <section>
            <div class="form-box">
                <div class="form-value">
                    <form id="loginForm" action="registro.php" method="POST">
                        <h2>Inicia sesión</h2>
                        <div class="inputbox">
                            <?php echo $account->getError(Constants::$loginFailed); ?>
                            <ion-icon name="mail-outline"></ion-icon>
                            <label for="loginUsername"></label>
						    <input id="loginUsername" placeholder="Nombre" name="loginUsername" type="text"  value="<?php getInputValue('loginUsername') ?>" required autocomplete="off">
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <p>
                                <label for="loginPassword"></label>
                                <input id="loginPassword" placeholder="Contraseña" name="loginPassword" type="password"  required>
                            </p>
                        </div>

                        <button type="submit" name="loginButton">INICIAR SESIÓN</button>

                        <div class="hasAccountText" >
                            <p class="register" id="hideLogin">¿Aún no tienes una cuenta? Regístrese aquí.</p> <span></span>
                        </div>

                    </form>
                </div>
            </div>
            <form id="registerForm" action="registro.php" method="POST">
					<h2>Crea tu cuenta es GRATIS!</h2>
					<p class="inputbox">
						<?php echo $account->getError(Constants::$usernameCharacters); ?>
						<?php echo $account->getError(Constants::$usernameTaken); ?>
						<label for="username"></label>
						<input id="username" name="username" type="text" placeholder="Nombre de usario" value="<?php getInputValue('username') ?>" required>
					</p>

					<p class="inputbox">
						<?php echo $account->getError(Constants::$firstNameCharacters); ?>
						<label for="firstName"></label>
						<input id="firstName" name="firstName" type="text" placeholder="Nombres" value="<?php getInputValue('firstName') ?>" required>
					</p>

					<p class="inputbox">
						<?php echo $account->getError(Constants::$lastNameCharacters); ?>
						<label for="lastName"></label>
						<input id="lastName" name="lastName" type="text" placeholder="Apellidos" value="<?php getInputValue('lastName') ?>" required>
					</p>

					<p class="inputbox">
						<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
						<?php echo $account->getError(Constants::$emailInvalid); ?>
						<?php echo $account->getError(Constants::$emailTaken); ?>
						<label for="email"></label>
						<input id="email" name="email" type="email" placeholder="Email" value="<?php getInputValue('email') ?>" required>
					</p>

					<p class="inputbox">
						<label for="email2"></label>
						<input id="email2" name="email2" type="email" placeholder="Confirma tu email" value="<?php getInputValue('email2') ?>" required>
					</p>

					<p class="inputbox"> 
						<?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
						<?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
						<?php echo $account->getError(Constants::$passwordCharacters); ?>
						<label for="password"></label>
						<input id="password" name="password" type="password" placeholder="Contraseña" required>
					</p>

					<p class="inputbox">
						<label for="password2"></label>
						<input id="password2" name="password2" type="password" placeholder="Confirma tu contraseña" required>
					</p>

					<button type="submit" name="registerButton">UNIRSE</button>

					<div class="hasAccountText">
						<span class="register" id="hideRegister">¿Ya tienes una cuenta? Inicia sesión aquí.</span>
					</div>
					
				</form>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>