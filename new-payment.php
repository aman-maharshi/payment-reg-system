<?php include 'session-check.php'; ?>
<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	$un = $_SESSION['username'];
	$sec = $_SESSION['section'];
	
	$currentDate = date("Y-m-d");
	
	function checkWO($wo_number) {
		$result_wo = mysql_query("select * from ts_wo_registration where wo_num = '$wo_number'");
		$rows = mysql_num_rows($result_wo);
		return $rows;
	}
	
	if(isset($_POST['add_payment'])) {
		$wo_num = $_POST['wo_num'];
		$bill_date = $_POST['bill_date'];
		$bill_type = $_POST['bill_type'];
		$bill_num = $_POST['bill_num'];
		$bill_amount = $_POST['bill_amount'];
		$eic = $_POST['eic'];
		
		// if bill type is advance, make bill number blank
		if($bill_type == "Advance") {
			$bill_num = '';
		}
		
		// fetch usi and bcn numbers for the wo number from ts_wo_registration table
		$result_wo_table = mysql_query("select * from ts_wo_registration where wo_num = '$wo_num'");
		$row_wo_table = mysql_fetch_array($result_wo_table);
		$usi = $row_wo_table['usi'];
		$bcn = $row_wo_table['bcn'];
		//echo "USI: ".$usi.", BCN: ".$bcn."<br>";
		
		// fetch bcn's obs from budget approved table
		$result_bcn_obs = mysql_query("select * from budget_approved where budget_code = '$bcn'");
		$row_bcn_obs = mysql_fetch_array($result_bcn_obs);
		$bcn_obs = $row_bcn_obs['sum_total'];
		//echo "BCN OBS: ".$bcn_obs."<br>";
		
		//fetch usi's obs from usi table
		$result_usi_obs = mysql_query("select * from usi where usi = $usi");
		$row_usi_obs = mysql_fetch_array($result_usi_obs);
		$usi_obs = $row_usi_obs['usi_cost'];
		//echo "USI OBS: ".$usi_obs."<br>";
		
		
		// fetch ts_reg_id for the entered wo number then fetch its section
		$result_ts = mysql_query("select * from ts_wo_registration where wo_num = '$wo_num'");
		$row_ts = mysql_fetch_array($result_ts);
		$ts_id =  $row_ts['ts_id'];
		$result_sec = mysql_query("select * from ts_registration where reg_id = '$ts_id'");
		$row_sec = mysql_fetch_array($result_sec);
		$section = $row_sec['section'];
		
		
		$rows = checkWO($wo_num);
		if ($rows == 1) {
			if($bill_type != "-- Select --" && $bill_amount != '' && $eic != '') {
				
				// I. BCN CHECK: check if the entry is already present for the bcn under the entered wo number
				$result_bcn_check = mysql_query("select * from ts_wo_payments where bcn = '$bcn'");
				if(mysql_num_rows($result_bcn_check)) {
					//echo "<p class='message-one'>Entry Updated for BCN</p>";
					$result_prev_row_bcn = mysql_query("select * from ts_wo_payments where bcn = '$bcn' order by id desc limit 1");
					$row_prev_bcn = mysql_fetch_array($result_prev_row_bcn);
					
					$prev_prog_total = $row_prev_bcn['bcn_prog_tot'];	
					$progressive_total = $prev_prog_total + $bill_amount;
					$pre_reg_bal = $bcn_obs - $prev_prog_total;
					$post_reg_bal = $pre_reg_bal - $bill_amount;
					
					// inserting form entries into the table
					mysql_query("insert into ts_wo_payments (wo_num, bill_date, bill_type, bill_number, bill_amount, eic, section, bcn, bcn_obs, bcn_pre_reg, bcn_post_reg) 
					values('$wo_num', '$bill_date', '$bill_type', '$bill_num', '$bill_amount', '$eic', '$section', '$bcn', '$bcn_obs', '$pre_reg_bal', '$post_reg_bal')");
						
					// calculating and inserting the progressive total for the bcn
					$result_sum_bcn = mysql_query("select sum(bill_amount) from ts_wo_payments where bcn = '$bcn'");
					$row_sum_bcn = mysql_fetch_array($result_sum_bcn);
					mysql_query("update ts_wo_payments set bcn_prog_tot = '$row_sum_bcn[0]' where bcn = '$bcn' and bcn_prog_tot = '0'");
					
				}
				else {
					//echo "<p class='message-one'>New BCN Entry Added</p>";
					$progressive_total = $bill_amount;
					$pre_reg_bal = $bcn_obs;
					$post_reg_bal = $pre_reg_bal - $bill_amount;
					
					// inserting form entries into the table
					mysql_query("insert into ts_wo_payments (wo_num, bill_date, bill_type, bill_number, bill_amount, eic, section, bcn, bcn_obs, bcn_pre_reg, bcn_prog_tot, bcn_post_reg) 
					values('$wo_num', '$bill_date', '$bill_type', '$bill_num', '$bill_amount', '$eic', '$section', '$bcn', '$bcn_obs', '$pre_reg_bal', '$progressive_total', '$post_reg_bal')");
				}
				
				// II. USI CHECK: check if the entry is already present for the usi under the entered wo number
				$result_usi_check = mysql_query("select * from ts_wo_payments where usi = '$usi'");
				if(mysql_num_rows($result_usi_check)) {
					//echo "<p class='message-two'>Entry Updated for USI</p>";
					
					$result_prev_prog_usi = mysql_query("select * from ts_wo_payments where usi = '$usi' order by id desc limit 1");
					$row_prev_prog_usi = mysql_fetch_array($result_prev_prog_usi);
				
					$usi_prev_prog_tot = $row_prev_prog_usi['usi_prog_tot'];
				
					$usi_progressive_total = $usi_prev_prog_tot + $bill_amount;
					$usi_pre_reg_bal = $usi_obs - $usi_prev_prog_tot;
					$usi_post_reg_bal = $usi_pre_reg_bal - $bill_amount;
					
					mysql_query("UPDATE ts_wo_payments SET usi = '$usi', usi_obs = '$usi_obs', usi_pre_reg = '$usi_pre_reg_bal', 
					usi_post_reg = '$usi_post_reg_bal' WHERE bcn = '$bcn' and usi = 0");
					
					// update progressive total for the usi
					$result_sum_amount = mysql_query("select sum(bill_amount) FROM ts_wo_payments where usi = '$usi'");
					$row_sum_amount = mysql_fetch_array($result_sum_amount);
					mysql_query("update ts_wo_payments set usi_prog_tot = '$row_sum_amount[0]' WHERE usi = '$usi' and usi_prog_tot = 0");
				
				}
				else {
					//echo "<p class='message-two'>New USI Entry Added</p>";
					
					$usi_pre_reg_bal = $usi_obs;
				    $usi_progressive_total = $bill_amount;
			 	    $usi_post_reg_bal = $usi_pre_reg_bal - $bill_amount;
				 
				    mysql_query("UPDATE ts_wo_payments SET usi = '$usi', usi_obs = '$usi_obs', usi_pre_reg = '$usi_pre_reg_bal', 
				    usi_prog_tot = '$usi_progressive_total', usi_post_reg = '$usi_post_reg_bal' WHERE bcn = '$bcn' and usi = 0");
				}
				
				
				echo "<p class='success-one'>Payment Added Successfully</p>";
				header("refresh: 2; url=new-payment.php");
			}
		}
		else {
			echo "<p class='warning-one'>*Invalid WO Number</p>";
			header("refresh: 1.25; url=new-payment.php");
		}
	}
?>

<html>
	<head>
		<title>New Payment</title>
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
			<a class="wo-list-link" href="wo-list.php">WO List</a>
				<p class="title-one">Add Payment</p>
				<form action="new-payment.php" method="post">
					<div class="form__row">
						<label>WO Number</label>
						<input type="number" name="wo_num" placeholder="Ex: 500012">
					</div>
					<div class="form__row">
						<label>Bill Date</label>
						<input type="date" name="bill_date" value="<?php echo $currentDate; ?>">
					</div>
					<div class="form__row">
						<label>Bill Type</label>
						<select name="bill_type">
							<option>-- Select --</option>
							<option>RA Bill</option>
							<option>Final Bill</option>
							<option>Advance</option>
						</select>
					</div>
					<div class="form__row">
						<label>Bill Number</label>
						<input type="number" name="bill_num">
					</div>
					<div class="form__row">
						<label>Bill Amount</label>
						<input type="number" name="bill_amount">
					</div>
					<div class="form__row">
						<label>Engineer Incharge</label>
						<input type="text" name="eic" value="<?php echo $un; ?>">
					</div>
					<div class="form__row">
						<label></label>
						<input type="submit" name="add_payment" class="btn" value="Add Payment">
					</div>
				</form>
			</div>
		<section>
	</body>
</html>