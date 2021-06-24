<?php
/**
* MIT License
*
* Copyright (c) 2021 Dominik Gedon
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/
	session_start();

    // save values accross sessions
    if (isset($_POST["x"])) {
        $x = floatval($_POST["x"]);
    }
    if (isset($_POST["y"])) {
        $y = floatval($_POST["y"]);
    }
    if (isset($_POST["solution"])) {
        $solution = floatval($_POST["solution"]);
    }
    // create an array and save it in session var
    // and locally
    if (!isset($_SESSION['saved_array'])) {
        $_SESSION['saved_array'] = array();
    }
    $saved_values = $_SESSION['saved_array'];

    // functions
    function sum($x, $y) {
        return $x + $y;
    }
    function sub($x, $y) {
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
    function save($value) {
        array_push($saved_values, $value);
        $_SESSION['saved_array'] = $saved_values;
    }

    // logic
    if (isset($_POST["add"])) {
        $solution = sum($x, $y);
        array_push($saved_values, $solution);
        $_SESSION['saved_array'] = $saved_values;
    } elseif (isset($_POST["sub"])) {
        $solution = sub($x, $y);
        array_push($saved_values, $solution);
        $_SESSION['saved_array'] = $saved_values;
    } elseif (isset($_POST["mul"])) {
        $solution = mul($x, $y);
        array_push($saved_values, $solution);
        $_SESSION['saved_array'] = $saved_values;
    } elseif (isset($_POST["div"])) {
        $solution = div($x, $y);
        array_push($saved_values, $solution);
        $_SESSION['saved_array'] = $saved_values;
    } elseif (isset($_POST["delete"])) {
        $x = "";
        $y = "";
        $solution = "";
    } elseif (isset($_POST["save"])) {
        $_SESSION["mr"] = $solution;
        $mr = $_SESSION["mr"];
    } elseif (isset($_POST["save_to_x"])) {
        $x = $_SESSION["mr"];
    } elseif (isset($_POST["delete_array"])) {
        $saved_values = array();
        $_SESSION['saved_array'] = $saved_values;
    }
    /**
    // debug
    echo "#############</br>";
    echo "<i>DEBUG</i></br>";
    echo "x: " . $x . "</br>";
    echo "mr: " . $_SESSION["mr"] . "</br>";
    print_r($saved_values);
    echo "</br>#############";
    **/
?>

<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="core.css">
        <title>Calculator</title>
    </head>
    <body>
        <h2>Calculator</h2>
        <form action="calculator.php" method="post">
            <label>Operand 1: </label>
            <input type="text" name="x" value="<?php echo $x; ?>">
            </br>
            <label>Operand 2: </label>
            <input type="text" name="y" value="<?php echo $y; ?>">
            </br>
            <label>Solution: </label>
            <input type="text" name="solution" value="<?php echo $solution; ?>">
            </br></br>
            <input type="submit" name="add" value="add">
            <input type="submit" name="sub" value="sub">
            <input type="submit" name="mul" value="mul">
            <input type="submit" name="div" value="div">
            </br>
            <input type="submit" name="delete" value="C">
            <input type="submit" name="save" value="M+">
            <input type="submit" name="save_to_x" value="MR">
            <input type="submit" name="delete_array" value="RC">
        </form>
        <h3>Last solutions</h3>
        <?php
            // show last solutions
            foreach ($saved_values as $values) {
                echo $values . "</br>";
            }
        ?>
  </body>
</html>