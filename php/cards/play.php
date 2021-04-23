<?php
	session_start();
    if (isset($_SESSION["logged_in"]) && $_SESSION["logged_in"] == "true") {
		$logged_in = true;
	} else {
		$logged_in = false;
	}
    if (isset($_SESSION['server_rand']))
    {
        $server_deck = $_SESSION['server_rand'];
    } else {
        $server_deck = array(0);
    }
?>

<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The French leaf</title>
  </head>
  <body>
  <h1>The French leaf</h1>

<?php
if ($logged_in == "true") {

    // create user deck
    $user_deck_count = 2;
    $user_deck = array_rand($server_deck , $user_deck_count);

    // show user deck cards
    echo "<h2>Your cards</h2>";
    for ($i = 0; $i < $user_deck_count; $i++)
    {
    echo '<img src="' . 'card-deck/' . $server_deck[$user_deck[$i]] . '" width="70" height="120">';
    }
    echo '</br>';

    // remove user cards from server deck
    for ($i = 0; $i < $user_deck_count; $i++)
    {
        array_splice($server_deck,$user_deck[$i] + $i, 1);
    }


    // show remaining cards
    echo "<h2>Remaining cards</h2>";
    $server_deck_count = sizeof($server_deck);

    for ($i = 0; $i < $server_deck_count; $i++)
    {
        if ($i == 13 ||$i == 26 || $i == 39)
        {
            echo '</br>';
        }
        echo '<img src="' . 'card-deck/' . $server_deck[$i] . '" width="70" height="110">';
    }
} else {
    echo 'Please use the main page to play!';
}
?>

  </body>
</html>