<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span>


		<div class="group">

			<div class="navItem">
				<span role='link' tabindex='0' 
					onclick="openPage('search.php')" class="navItemLink">
					Search
					<img src="assets/images/icons/search.png" class="icon" alt="Search">
				</span>
			</div>

		</div>

		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">BROWSE
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink">MY LIBRARY
				</span>
			</div>
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('podcast.php')" class="navItemLink">PODCAST
				</span>
			</div>
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('audiobook.php')" class="navItemLink">AUDIOBOOKS
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php echo $userLoggedIn->getFirstAndLastName(); ?>
				</span>
			</div>
		</div>




	</nav>
</div>