<!DOCTYPE html>
<html lang="de">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Primes</title>
      </head>
      <body>
      <h2>Prime numbers</h2>

<?php
      $number = 1;
      $rows = 10;
      $columns = 10;

      echo '<table border="1">';
      for ($r = 0; $r < $rows; $r++) {
            echo '<tr>';
      for ($c = 0; $c < $columns; $c++) {
            if (isPrime($number)) {
                  echo '<td bgcolor = "red">' . $number . '</td>';
            } else {
                  echo '<td>' . $number . '</td>';
            }
            $number++;
      }
      echo '</tr>';
      }
      echo '</table>';

function isPrime($number) {
      if ($number <= 1) {
            return false;
      }
      for ($i = 2; $i <= sqrt($number); $i++) {
            if (($number % $i) == 0) {
                  return false;
            }
      }
      return true;
}
?>
</body>
</html>
