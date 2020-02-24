<?php
	$un = $_SESSION['username'];
	$payment_login = $_SESSION['payment'];
	if ($un && $payment_login) { // do nothing
		$loggedin = true;
	}
	else { // if session is not set redirect user back to login
		header("location: payments-login.php");
	}
?>