<?php include 'session-check.php'; ?>
<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	$un = $_SESSION['username'];
	$sec = $_SESSION['section'];
?>

<html>
	<head>
		<title>Edit Payments</title>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/payment-styles.css" />
	</head>
	<body>
		<nav>
		   <a href="#" class="home-btn"></a>
		   <div>
				<a href="payments-options.php" style="margin-right: 15px;">Back</a>
				<a href="logout.php" style="margin-right: 15px;">Logout</a>
		   </div>
		</nav>
		<div class="search-payment">
			<div class="search-payment-form">
				<form action="update-entry.php" method="post">
					<input name="wo_num" type="number" placeholder="Enter WO Number">
					<button type="submit" class="btn" name="show-payments">Edit Payments</button>
				</form>
			</div>
		</div>
	</body>
</html>