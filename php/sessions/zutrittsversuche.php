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
	<style>
		body, html
		{
		  height: 100%;
		  margin: 0;
		}

		.navigation
		{
			height: 10%;

			font-size: x-large;
			background-color: #333;
		}
		.bg
		{
		  /* The image used */
		  background-image: url("./main.jpg");

		  /* Full height */
		  height: 90%;

		  /* Center and scale the image nicely */
		  background-position: center;
		  background-repeat: no-repeat;
		  background-size: cover;
		}

		ul {
		  list-style-type: none;
		  margin: 0;
		  padding: 0;
		  overflow: hidden;
		  background-color: #333;

		  			  margin: 0;
			  position: relative;
			  top: 50%;
			  -ms-transform: translateY(-50%);
			  transform: translateY(-50%);
		}

		li {
		  float: left;
		}

		li a {
		  display: block;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}

		/* Change the link color to #111 (black) on hover */
		li a:hover {
		  background-color: #111;
		}

	</style>
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

	<div class="bg"></div>

    <?php
        if ($logged_in == true) {
            ?>

        <h1> Zutrittsversuche</h1>

         <table class="border">
            <tr class="grey">
            <th class="bold">ID</th>
            <th class="bold">Uhrzeit</th>
            <th class="bold">Chip</th>
            <th class="bold">Chip Besitzer</th>
            <th class="bold">Tuer</th>
            <th class="bold">Ergebnis</th>
            </tr>
            <tr>
            <td>99</td>
            <td>202x-02-13 17:51:12</td>
            <td class="right">3</td>
            <td>Schmidt</td>
            <td>Eingang Lager</td>
            <td class="red">Zutritt abgelehnt</td>
            </tr>
            <tr>
            <td>100</td>
            <td>202x-02-13 17:52:25</td>
            <td class="right">3</td>
            <td>Schmidt</td>
            <td>Eingang Lager</td>
            <td class="red">Zutritt abgelehnt</td>
            </tr>
            <tr>
            <td>101</td>
            <td>202x-02-14 07:11:20</td>
            <td class="right">1</td>
            <td>Nettmann</td>
            <td>Eingang Buero</td>
            <td class="green">Zutritt gestattet</td>
            </tr>
        </table>
        <p>Es ist zu beachten, dass sich das RFID System noch in der Testphase befindet!</p>
        <hr>
        <table>
            <tr>
                <th class="bold">Kontakt</th>
                <th class="bold">Bankdaten</th>
            </tr>
            <tr>
            <td>
                <ul>
                    <li>Ottostrasse 22, 90762 Fuerth</li>
                    <li>Tel: 0911/112233</li>
                    <li>info@autohasu-nettmann.de</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>IBAN: DE66 123 456 000 765 321</li>
                    <li>BIC: BYLADEM 10001</li>
                    <li>BankL: Sparkasse Fuerth</li>
                </ul>
            </td>
            </tr>
        </table>
        <?php
         } else {
             echo "Bitte loggen Sie sich zuerst ein!";
         }
    ?>

  </body>
</html>