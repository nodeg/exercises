<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="core.css">
        <title>Calculate</title>
    </head>
    <body>
        <h2>Solution</h2>
        <?php

            // functions
            function sum($x, $y) {
                return $x + $y;
            }
            function diff($x, $y) {
                return $x - $y;
                }
            function mul($x, $y) {
                return $x * $y;
            }
            function div($x, $y) {
                if ($y > 0) {
                    return $x / $y;
                }
                return 'NaN';
            }

            if (isset($_POST["calculate"])) {
                if (isset($_POST["x"])) {
                    $x = floatval($_POST["x"]);
                } else {
                    echo "Only one number provided. Setting x = 1";
                    $x = 1;
                }
                if (isset($_POST["y"])) {
                    $y = floatval($_POST["y"]);
                } else {
                    echo "Only one number provided. Setting y = 1";
                    $y = 1;
                }

                echo "Sum: ". sum($x, $y) . "</br>";
                echo "Diff: ". diff($x, $y) . "</br>";
                echo "Mul: ". mul($x, $y) . "</br>";
                echo "Div: ". div($x, $y) . "</br>";

            } else {
                echo "Go back and use the form!";
            }
        ?>

  </body>
</html>