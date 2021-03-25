<?php
	session_start();
	if (isset($_SESSION["logged_in"]) && $_SESSION["logged_in"] == "true") {
		//$logged_in = true;
		// when already logged in redirect to home
		header("Location: ./index.php");
		die();
	} else {
		$logged_in = false;
	}
?>

<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autohaus Nettmann</title>

	  <link rel="stylesheet" href="style.css">
	  <link rel="stylesheet" href="main.css">

	<style>

	</style>
  </head>


  <body>

	<div class="navigation">
		<ul>
		<li> <a  href="./index.php">Servicetermin</a></li>
		  <li> <a  href="#news">Mietwagen</a></li>
		  <li> <a  href="#contact">Kontakt</a></li>
		  <li> <a  href="#about">Über uns</a></li>


		  <li style="float:right"><a href="./login.php">Login</a></li>

		  <?php
		  if ($logged_in == true)
		  {
			echo '<li style="float:right"><a href="./logout.php">Logout</a></li>';
		  }
		  ?>
		</ul>
	</div>

	<div class="bg">
		<div class="login">
		<form action="login_post.php" method="post">
			<div class="container">
				<label for="uname" class="whitecolor"><b>Username</b></label>
				<input type="text" placeholder="Enter Username" name="username" required>

				<label for="psw" class="whitecolor"><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="password" required>

				<button type="submit" name="submit">Login</button>
			</div>
		</form>
		</div>
	</div>

  </body>
</html>