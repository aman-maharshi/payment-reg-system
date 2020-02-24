<?php include 'session-check.php'; ?>
<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	
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
				<a href="edit-payments.php" style="margin-right: 15px;">Back</a>
				<a href="logout.php" style="margin-right: 15px;">Logout</a>
		   </div>
		</nav>
			<!--	LOADING THE ENTRIES WHEN EDIT PAYMENT BUTTON IS PRESSED ON THE SEARCH PAGE -->
		
			<?php
				if(isset($_POST['show-payments'])) {
					$wo_num = $_POST['wo_num'];
					if($wo_num != "") {
						$result_pay = mysql_query("select * from ts_wo_payments where wo_num = '$wo_num'");
						$row_count = mysql_num_rows($result_pay);	
						$result_sum_amount = mysql_query("select sum(bill_amount) from ts_wo_payments where wo_num = '$wo_num'");
						$row_sum_amount = mysql_fetch_array($result_sum_amount);
						
						if($row_count > 0) {
							echo '<div class="show-payment-update">'; 
							echo "<p class='wo-num-edit'>WO Number: ".$wo_num."</p>";
							echo "<table class='display-table'>
									<thead>
										<tr>
											<th>Date</th>
											<th>Bill Type</th>
											<th>Bill Number</th>
											<th>Bill Amount</th>
											<th>Engineer Incharge</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>";
							while($row_count > 0) {
								$row_pay = mysql_fetch_array($result_pay);
								echo <<< _END
									<tr>
										<form action="update-entry.php" method="post">
											<input type="hidden" value="$row_pay[id]" name="id">
											<input type="hidden" value="$row_pay[wo_num]" name="wo_num">
											<td><input type="date" value="$row_pay[bill_date]" name="bill_date" class="edit-input"></td>
											<td><input type="text" value="$row_pay[bill_type]" name="bill_type" class="edit-input"></td>
											<td><input type="number" value="$row_pay[bill_number]" name="bill_number" class="edit-input edit-ba"></td>
											<td><input type="number" value="$row_pay[bill_amount]" name="bill_amount" class="edit-input"></td>
											<td><input type="text" value="$row_pay[eic]" name="eic" class="edit-input"></td>
											<td><button name="update" class="btn">Update</td>
										</form>
									</tr>
_END;
								$row_count--;
							}
								echo "<tr>
										<td></td>
										<td></td>
										<td><i>Total Amount: </i></td>
										<td>".$row_sum_amount['sum(bill_amount)']."</td>
										<td></td>
										<td></td>
									  </tr>";
							
							echo "</tbody>
									</table>";
							echo '</div>';
						}
						else {
							echo "<p class='warning-two'>*No payment entries found for WO number: ".$wo_num."</p>";
							//header("refresh: 3; url=edit-payments.php");
						}
					}
					else {
						header("location: edit-payments.php");
					}
				}
			?>
		
		<!-- RELOADING THE ENTRIES WHEN UPDATE BUTTON IS PRESSED -->
		<div>
			<?php
				if(isset($_POST['update'])) {
					$id = $_POST['id'];
					$date = $_POST['bill_date'];
					$number = $_POST['bill_number'];
					$type = $_POST['bill_type'];
					$amount = $_POST['bill_amount'];
					$eic = $_POST['eic'];
					$wo_num = $_POST['wo_num'];
					
					mysql_query("update ts_wo_payments set bill_date = '$date', bill_type = '$type', bill_number = '$number', bill_amount = '$amount', eic = '$eic' where id = '$id'");
					
					// TODO: IMPLEMENT USI AND BCN CALCULATIONS ON BILL AMOUNT UPDATION
					//	To Be Implemented
					
					if($wo_num != "") {
						$result_pay = mysql_query("select * from ts_wo_payments where wo_num = '$wo_num'");
						$row_count = mysql_num_rows($result_pay);	
						$result_sum_amount = mysql_query("select sum(bill_amount) from ts_wo_payments where wo_num = '$wo_num'");
						$row_sum_amount = mysql_fetch_array($result_sum_amount);
						
						if($row_count > 0) {
							echo '<div class="show-payment-update">'; 
							echo "<p class='wo-num-edit'>WO Number: ".$wo_num."</p>";
							echo "<table class='display-table'>
									<thead>
										<tr>
											<th>Date</th>
											<th>Bill Type</th>
											<th>Bill Number</th>
											<th>Bill Amount</th> 
											<th>Engineer Incharge</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>";
							while($row_count > 0) {
								$row_pay = mysql_fetch_array($result_pay);
								echo <<< _END
									<tr>
										<form action="update-entry.php" method="post">
											<input type="hidden" value="$row_pay[id]" name="id">
											<input type="hidden" value="$row_pay[wo_num]" name="wo_num">
											<td><input type="date" value="$row_pay[bill_date]" name="bill_date" class="edit-input"></td>
											<td><input type="text" value="$row_pay[bill_type]" name="bill_type" class="edit-input"></td>
											<td><input type="number" value="$row_pay[bill_number]" name="bill_number" class="edit-input edit-ba"></td>
											<td><input type="number" value="$row_pay[bill_amount]" name="bill_amount" class="edit-input"></td>
											<td><input type="text" value="$row_pay[eic]" name="eic" class="edit-input"></td>
											<td><button name="update" class="btn">Update</td>
										</form>
									</tr>
_END;
								$row_count--;
							}
								echo "<tr>
										<td></td>
										<td></td>
										<td><i>Total Amount: </i></td>
										<td>".$row_sum_amount['sum(bill_amount)']."</td>
										<td></td>
										<td></td>
									  </tr>";
									  
							echo "</tbody>
									</table>";
							echo '</div>';
						}
					}
					
				}
			?>
		</div>
	</body>
</html>