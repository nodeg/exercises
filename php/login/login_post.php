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
                if (isset($_POST["username"])) {
                    $username = $_POST["username"];
                } else {
                    $username = NULL;
                }
                if (isset($_POST["password"])) {
                    $password = $_POST["password"];
                } else {
                    $password = NULL;
                }
                if ($username == NULL || $password == NULL) {
                    echo "Bitte geben sie einenen Nutzernamen und ein Passwort ein!";
                } else if ($username == "Nettmann" && $password == "secret") {
                    echo "Willkommen " . $username . "!";
                } else {
                    echo "Falscher Nutzername oder Passwort!";
                }
            } else {
                echo "Falscher Aufruf der Seite!";
            }
        ?>
    </body>
</html>
