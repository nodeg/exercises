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

      <style>
          td {
              text-align: left;
          }
      </style>
  </head>


  <body>

	<div class="navigation">
		<ul>
        <li> <a  href="./index.php">Servicetermin</a></li>
		  <li> <a  href="rent1.php">Mietwagen</a></li>
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
		<div class ="rent" style="text-align: center;">
            <?php
                $data_complete = $_SESSION["data_complete"];
                // TODO data_complete
                if(isset($_SESSION["abholen"]))
                {
                    $abholen = $_SESSION["abholen"];
                }
                else
                {
                    $abholen = "MISSING";
                    $data_complete = false;
                }
                if(isset($_SESSION["abgeben"]))
                {
                    $abgeben = $_SESSION["abgeben"];
                }
                else
                {
                    $abgeben = "MISSING";
                    $data_complete = false;
                }

                if(isset($_POST["cartype"]))
                {
                    $cartype = $_POST["cartype"];
                }
                else
                {
                    $cartype = "MISSING";
                    $data_complete = false;
                }

                echo "Ihre Anfrage mit den folgenden Daten wird bearbeitet:";
                echo "<table> \n";
                echo "<tr>\n";
                echo "  <td>Abholdatum: </td> \n";
                echo "  <td> $abholen</td> \n";
                echo "</tr>\n";
                echo "<tr>\n";
                echo "  <td>Abgabedatum: </td> \n";
                echo "  <td> $abgeben</td> \n";
                echo "</tr>\n";
                echo "<tr>\n";
                echo "  <td>Wagentyp: </td> \n";
                echo "  <td> $cartype</td> \n";
                echo "</tr>\n";
                echo "</table>\n";

                if($data_complete == false)

                {
                    echo "Leider konnte Ihre Anfrage aufgrund fehlender Angaben nicht bearbeitet werden.";
                }
            ?>
		</div>
	</div>

  </body>
</html>