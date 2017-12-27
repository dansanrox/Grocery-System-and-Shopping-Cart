<?php
session_start();
	unset ($_SESSION['luser']);
	unset ($_SESSION["confirmed"]);
	session_destroy();
	header('Location:../index.php');
	
?>