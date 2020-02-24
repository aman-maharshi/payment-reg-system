<?php include 'session-check.php'; ?>
<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	$un = $_SESSION['username'];
	$sec = $_SESSION['section'];
	
	function checkWO($wo_number) {
		$result_wo = mysql_query("select * from ts_wo_registration where wo_num = '$wo_number'");
		$rows = mysql_num_rows($result_wo);
		return $rows;
	}
	
	if(isset($_POST['forecast_payment'])) {
		$wo_num = $_POST['wo_num'];
		$forecast_month = $_POST['forecast_month'];
		$forecast_amount = $_POST['forecast_amount'];
		$eic = $_POST['eic'];
		
		$rows = checkWO($wo_num);
		if ($rows == 1)  {
			if($forecast_month != "-- Select --" && $forecast_amount != '' && $eic != '') {
				// echo $wo_num.", ".$forecast_month.", ".$forecast_amount.", ".$eic;
				
				mysql_query("insert into ts_wo_payments_forecast (wo_num, forecast_month, forecast_amount, eic) 
				values ('$wo_num', '$forecast_month', '$forecast_amount', '$eic')");
				
				echo "<p class='success-one-forecast'>Payment Forecast Added Successfully</p>";
				header("refresh: 2; url=forecast-payment.php");
			}
		}
		else {
			echo "<p class='warning-one'>*Invalid WO Number</p>";
			header("refresh: 1.5; url=forecast-payment.php");
		}
	}
?>
<html>
	<head>
		<title>Forecast Payment</title>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/admin-options.css" />
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
		<section>
			<div class="add-payment">
			<a class="wo-list-link" href="wo-list-forecast.php">WO List</a>
				<p class="title-one">Expenditure Forecast</p>
				<form action="forecast-payment.php" method="post">
					<div class="form__row">
						<label>WO Number</label>
						<input type="number" name="wo_num" placeholder="Ex: 500012">
					</div>
					<div class="form__row">
						<label>Forecast Month</label>
						<select name="forecast_month" id="month">
							<option>-- Select --</option>
							<option>January</option>
							<option>February</option>
							<option>March</option>
							<option>April</option>
							<option>May</option>
							<option>June</option>
							<option>July</option>
							<option>August</option>
							<option>September</option>
							<option>October</option>
							<option>November</option>
							<option>December</option>
						</select>
					</div>
					<div class="form__row">
						<label>Forecast Amount</label>
						<input type="number" name="forecast_amount">
					</div>
					<div class="form__row">
						<label>Engineer Incharge</label>
						<input type="text" name="eic" value="<?php echo $un; ?>">
					</div>
					<div class="form__row">
						<label></label>
						<input type="submit" name="forecast_payment" class="btn forecast-btn">
					</div>
				</form>
			</div>
		<section>
		
		<script>
			var today = new Date();
			monthArr = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
			
			// showing only next 3 months in the forecast month dropdown
			if(today.getMonth() < 9) {
				monthArrFilter = monthArr.slice(today.getMonth() + 1);
				temp = '';
				nextThreeMonths = monthArrFilter.splice(0 ,3);
				for (var i = 0; i < nextThreeMonths.length; i++) {
					temp += "<option>"+nextThreeMonths[i]+"</option>";
				}
				//document.getElementById('month').innerHTML = temp;
			}
		</script>
	</body>
</html>

