<?php include 'session-check.php'; ?>
<html>
	<head>
		<title>Payment Options</title>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/payment-styles.css" />
	</head>
	<body>
		<nav>
		   <a href="#" class="home-btn"></a>
		   <div>
				<a href="#" style="margin-right: 15px;"></a>
				<a href="logout.php" style="margin-right: 15px;">Logout</a>
		   </div>
		</nav>
		<p class="display_un">
			<?php
				$un = $_SESSION['username'];
				$sec = $_SESSION['section'];
				echo "Welcome, ".$un." (".$sec.")"; 
			?>
		</p>
	    <main>
			<ul class="options-list">
				<li><a href="new-payment.php">Add Payment</a></li>
				<li><a href="forecast-payment.php">Add Expenditure Forecast</a></li>
				<li><a href="view-payments.php">View Records</a></li>
				<li><a href="edit-payments.php">Edit Records</a></li>
				<!-- <li><a href="#">Summary</a></li> -->
			</ul>
	    </main>
	</body>
</html>

