<?php
	session_start();
    session_destroy();
    // redirect to home
	header("Location: ./index.php");
	die();
?>