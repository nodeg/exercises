<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="core.css">
        <title>Autohaus Nettmann - Autovermietung</title>
    </head>
    <body>
        <?php
            if (isset($_POST["submit"])) {
                if (isset($_POST["age"])) {
                    if (isset($_POST["auto"])) {
                        $car = $_POST["auto"];
                    } else {
                        $car = "NOVALUE";
                    }
                    if (isset($_POST["date"])) {
                        $date = $_POST["date"];
                    } else {
                        $date = "NOVALUE";
                    }
                    if (isset($_POST["payment"])) {
                        $payment = $_POST["payment"];
                    } else {
                        $payment = "NOVALUE";
                    }
        ?>
                    <h1>Vielen Dank fuer Ihre Bestellung</h1>
                    <p>Sie haben sich fuer den Wagen <?php echo $car; ?> entschieden.</br>
                    Sie benoetigen den Wagen am: <?php echo $date; ?></br>
                    Sie moechten mit <?php echo $payment; ?> bezahlen.</p>
        <?php
                } else {
                    echo "Um einen Mietwagen auszuleihen, muss der Fahrer mindestens 25 Jahre alt sein!";
                }
            } else {
                echo "Falscher Aufruf der Seite!";
            }
        ?>
    </body>
</html>
