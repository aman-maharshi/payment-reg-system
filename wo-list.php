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
				<a href="new-payment.php" style="margin-right: 15px;">Back</a>
				<a href="logout.php" style="margin-right: 15px;">Logout</a>
		   </div>
		</nav>
		<div class="wo-list">
			<?php
				$result_wo = mysql_query("select * from ts_wo_registration order by wo_num");
				
				$row_wo_count = mysql_num_rows($result_wo);
				
				echo "<table class='display-table'>
						<thead>
							<tr>
								<th>WO Number</th>
								<th>Work Description</th>
							</tr>
						</thead>
						<tbody>";
				
				while ($row_wo_count > 0) {
					$row_wo = mysql_fetch_array($result_wo);
					$wo_num = $row_wo['wo_num'];
					$ts_id = $row_wo['ts_id'];
					
					$result_ts = mysql_query("select * from ts_registration where reg_id = '$ts_id'");
					$row_ts = mysql_fetch_array($result_ts);
					$ts_desc = $row_ts['work_desc'];
					
					//echo $wo_num." ".$ts_desc."<br>";
					echo "<tr>
							<td>".$wo_num."</td>
							<td style='text-align: left;'>".$ts_desc."</td>
						  </tr>";
					$row_wo_count--;
				}
				echo "</tbody>
						</table>";
				
			?>
		</div>