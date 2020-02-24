<?php include 'session-check.php'; ?>
<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	$result_bills_sum = mysql_query("select sum(bill_amount) from ts_wo_payments");
	$row_bills_sum = mysql_fetch_array($result_bills_sum);
	$total_bills_paid = $row_bills_sum['sum(bill_amount)'];
	


?>

<html>
	<head>
		<title>All Expenditure</title>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/summary.css" />
		<link rel="stylesheet" href="css/payment-styles.css" />
		<style>
			@media print {
				.display-table td {
					padding: 5px;
					text-align: center;
				}
				.display-table th {
					padding: 10px;
				}
				.bt {
					width: 70px;
				}
			}
		</style>
	</head>
	<body>
		<div style="padding: 25px;">
			<table class="display-table" style="max-width: 1100px;">
				<thead>
					<tr>
						<th style="padding: 15px; min-width: 45px;">S No.</th>
						<th>WO Number</th>
						<th>Work Description</th>
						<th class="bt">Bill Type</th>
						<th>Bill Number</th>
						<th>Bill Amount</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$result = mysql_query("select * from ts_wo_payments order by wo_num");
						$rows = mysql_num_rows($result);
						$total = $rows;
						
						while($rows > 0) {
							$tuple = mysql_fetch_array($result);
							// fetching work description wo_num -> ts_reg_id -> work_desc
							$wo = $tuple['wo_num'];
							$result_ts_id = mysql_query("select ts_id from ts_wo_registration where wo_num = '$wo'");
							$row_ts_id = mysql_fetch_array($result_ts_id);
							$ts_id = $row_ts_id['ts_id'];
							$result_desc = mysql_query("select work_desc from ts_registration where reg_id = '$ts_id'");
							$row_desc = mysql_fetch_array($result_desc);
							$work_desc = $row_desc['work_desc'];
							
							// S. No calculation
							$id = $total - $rows + 1;
							
							echo <<< _END
								<tr>
									<td>$id</td>
									<td>$tuple[wo_num]</td>
									<td style='text-align: left;'>$work_desc</td>
									<td>$tuple[bill_type]</td>
									<td>$tuple[bill_number]</td>
									<td style='text-align: right;'>$tuple[bill_amount]</td>
								</tr>
								
_END;
							$rows--;
						}
						// calculate total amount
						$result_sum = mysql_query("select sum(bill_amount) from ts_wo_payments");
						$row_sum = mysql_fetch_array($result_sum);
						$total_amount = $row_sum['sum(bill_amount)'];
						
						echo <<< _END
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td style="color: #151556; font-weight: bold;">Total</td>
								<td style="color: #151556; font-weight: bold; text-align: right;">$total_amount</td>
							<tr>
_END;
					?>
				</tbody>
			</table>
		</div>