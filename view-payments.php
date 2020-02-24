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
		<title>View Payments</title>
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
				<form action="view-payments.php" method="post">
					<input name="wo_num" type="number" placeholder="Enter WO Number">
					<button type="submit" class="btn" name="show-payments">Show Payments</button>
				</form>
			</div>
			<div class="view-all-links">
				<a href="all-expenditure.php" target="_blank">All Expenditure Details</a>
				<a href="all-forecast.php" target="_blank">All Forecast Details</a>
			</div>
		</div>
		<div class="show-payment">
			<?php
				if(isset($_POST['show-payments'])) {
					$wo_num = $_POST['wo_num'];
					if($wo_num != "") {
						$result_pay = mysql_query("select * from ts_wo_payments where wo_num = '$wo_num'");
						$row_count = mysql_num_rows($result_pay);	
						
						$result_sum_amount = mysql_query("select sum(bill_amount) from ts_wo_payments where wo_num = '$wo_num'");
						$row_sum_amount = mysql_fetch_array($result_sum_amount);
						
						$result_wo_value = mysql_query("select * from ts_wo_registration where wo_num = '$wo_num'");
						$row_wo_value = mysql_fetch_array($result_wo_value);
						
						// fetch ts_reg_id for the entered wo number then fetch its work desc
						$result_ts = mysql_query("select * from ts_wo_registration where wo_num = '$wo_num'");
						$row_ts = mysql_fetch_array($result_ts);
						$ts_id =  $row_ts['ts_id'];
						$result_work = mysql_query("select * from ts_registration where reg_id = '$ts_id'");
						$row_work = mysql_fetch_array($result_work);
						$work_desc = $row_work['work_desc'];
						
						// ---------------------------------------
						// 		TABLE 1 - PAYMENT SUMMARY
						// ---------------------------------------
						if($row_count > 0) {
						echo "<table class='display-table' style='max-width: 1100px;'>
									<thead>
										<tr>
											<th>WO Number</th>
											<th>Work Description</th>
											<th>WO Value</th>
											<th>Total Payment Done Till Date</th>
											<th>Balance</th>
										</tr>
									</thead>
									<tbody>";
							echo "<tr>
									<td>".$wo_num."</td>
									<td>".$work_desc."</td>
									<td>".round($row_wo_value['wo_value']/100000, 2)." Lacs</td>
									<td>".round($row_sum_amount['sum(bill_amount)']/100000, 2)." Lacs</td>
									<td>".round(($row_wo_value['wo_value'] - $row_sum_amount['sum(bill_amount)'])/100000, 2)." Lacs</td>
								  </tr>";
									  
							echo "</tbody>
									</table>";
						}
						
						
						// --------------------------------------
						// 		TABLE 2 - PAYMENT DETAILS
						// --------------------------------------
						echo "<p class='payment-details-title'>Payment Details</p>";
						
						if($row_count > 0) {			
							echo "<table class='display-table'>
									<thead>
										<tr>
											<th>Date</th>
											<th>Bill Type</th>
											<th>Bill Number</th>
											<th>Bill Amount</th>
											<th>Engineer Incharge</th>
										</tr>
									</thead>
									<tbody>";
									  
							while($row_count > 0) {
								$row_pay = mysql_fetch_array($result_pay);
								echo "<tr>
										<td>".$row_pay['bill_date']."</td>
										<td>".$row_pay['bill_type']."</td>
										<td>".$row_pay['bill_number']."</td>
										<td>".$row_pay['bill_amount']."</td>
										<td>".$row_pay['eic']."</td>
									  </tr>";
								$row_count--;
							}
								echo "<tr>
										<td></td>
										<td></td>
										<td><i>Total Amount: </i></td>
										<td>".$row_sum_amount['sum(bill_amount)']."</td>
										<td></td>
									  </tr>";
							echo "</tbody>
									</table>";
									
							//echo "<p class='view-new-payment-line'><a href='new-payment.php' class='view-new-payment'>Add New Payment</a><p>";
						}
						else {
							echo "<p class='warning-two'>*No payment entries found for WO number: ".$wo_num."</p>";
						}
						
						
						// -----------------------------------------------------
						// 				TABLE 3 - FORECAST DETAILS
						// ------------------------------------------------------
						echo "<p class='payment-details-title'>Forecast Details</p>";
						$result_forecast = mysql_query("select * from ts_wo_payments_forecast where wo_num = '$wo_num'");
						$num_rows_forecast = mysql_num_rows($result_forecast);
						
						if($num_rows_forecast > 0) {
							
							echo "<table class='display-table'>
									<thead>
										<tr>
											<th>Forecast Month</th>
											<th>Forecast Amount</th>
										</tr>
									</thead>
									<tbody>";
							
							while($num_rows_forecast > 0) {
								$row_forecast = mysql_fetch_array($result_forecast);
								$month = $row_forecast['forecast_month'];
								$amount = $row_forecast['forecast_amount'];
								
								/* TODO: call a function that goes through the ts_wo_payments_forecast table 
									if the forecast month is current month and a previous month then do not echo the month and amount row
								*/
								
								echo "<tr>
										<td>".$month."</td>
										<td>".$amount."</td>
									  </tr>";
								$num_rows_forecast--;
							}
							
							echo "</tbody>
									</table>
									<footer style='margin-bottom: 10px; margin-top: 20px;'>
										<div>&copy; 2020 KGS 5&6 IT Group</div>
									</footer>
									";
									
							
						}
						else {
							echo "<p class='warning-two'>*No expenditure forecast details found</p>";
						}
						
					}
				}
			?>
		</div>
	</body>
</html>