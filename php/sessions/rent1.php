<?php
	session_start();
	if (isset($_SESSION["logged_in"]) && $_SESSION["logged_in"] == "true") {
		$logged_in = true;
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
	  <link rel="stylesheet" href="rent.css">
  </head>


  <body>

	<div class="navigation">
		<ul>
		  <li> <a  href="./index.php">Servicetermin</a></li>
		  <li> <a  href="./rent1.php">Mietwagen</a></li>
		  <li> <a  href="#contact">Kontakt</a></li>
		  <li> <a  href="#about">Über uns</a></li>


		  <?php
		  if ($logged_in == true)
		  {
			  echo "<li><a href='./zutrittsversuche.php'>Zutrittskontrolle</a></li>\n";
		  }
		  ?>

		  <li style="float:right"><a href="./login.php">Login</a></li>

		  <?php
		  if ($logged_in == true)
		  {
			echo '<li style="float:right"><a href="./logout.php">Logout</a></li>';
		  }
		  ?>
		</ul>
	</div>

	<div class="bg_rent">
		<form method="post" action="rent2.php">
		<div class ="rent" style="text-align: center;">
			<div style="height: 30vh;">
				<label>
					Wählen Sie das gewünschte Abholdatum:
				</label> <br><br><br><br>
				<input type="datetime-local" name="abholen">
			</div>
			<div style="height: 30vh">
				<label>
					Wählen Sie das gewünschte Rückgabedatum:
				</label> <br><br><br><br>
				<input type="datetime-local" name="abgeben">
			</div>
			<button type="submit">Eingaben absenden</button>
		</div>
		</form>
	</div>

  </body>
</html>