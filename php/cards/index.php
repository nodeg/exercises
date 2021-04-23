<?php
	session_start();
  $_SESSION["logged_in"] = true;
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


// Read filenames from $directory and save in array
function drawArray(DirectoryIterator $directory)
{
    $result = array();
    foreach($directory as $object)
    {
        if ($object->isDir()&&!$object->isDot())
        {
            $result[$object->getFilename()] = drawArray(new DirectoryIterator($object->getPathname()));
        }
        else if($object->isFile())
        {
            $result[] = $object->getFilename();
        }
    }
    return $result;
}


// create and sort card deck
$array = drawArray(new DirectoryIterator('card-deck'));
sort($array);
$count = sizeof($array);

// print deck
echo "<h3>Card deck</h3>";
for ($i = 0; $i < $count; $i++)
{
  if ($i == 13 ||$i == 26 || $i == 39)
  {
    echo '</br>';
  }
  echo '<img src="' . 'card-deck/' . $array[$i] . '" width="50" height="80">';
}


// randomize card deck
$array_rand = $array;
shuffle($array_rand);
$_SESSION['server_rand'] = $array_rand;


// print randomized card deck
echo "<h3>Randomized card deck</h3>";
for ($i = 0; $i < $count; $i++)
{
  if ($i == 13 ||$i == 26 || $i == 39)
  {
    echo '</br>';
  }
  echo '<img src="' . 'card-deck/' . $array_rand[$i] . '" width="50" height="80">';
}
?>

</br></br>
<form method="post" action="play.php">
			<button type="submit">Play</button>
		</div>
		</form>

  </body>
</html>