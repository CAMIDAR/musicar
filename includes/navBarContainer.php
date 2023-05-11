<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo2.png">
		</span>


		<div class="group">

			<div class="navItem">
				<span role='link' tabindex='0' onclick='openPage("buscar.php")' class="navItemLink">
					Buscar
					<img src="assets/images/icons/search.png" class="icon" alt="Search">
				</span>
			</div>

		</div>

		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('navegar.php')" class="navItemLink">Navegar</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('tuMusica.php')" class="navItemLink">Tu Musica</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('configuracion.php')" class="navItemLink"><?php echo $userLoggedIn->getFirstAndLastName(); ?> (Tú)</span>
			</div>
		</div>

	</nav>
</div>