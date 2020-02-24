<?php 
	require_once 'connection.php';
	$connection = mysql_connect($dbserver, $dbusername, $dbpass);
	if(!$connection) die("Unable to connect to MySQL: ".mysql_error());
	mysql_select_db($dbname, $connection) or die("Unable to select database: ".mysql_error());	
	
	if(isset($_POST['login'])) {
		require_once '../sanitize-input.php';
		$un = mysql_entities_fix_string($_POST['username']);
		$pass = mysql_entities_fix_string($_POST['password']);
		
		$sql="select * from users_login1 where emp_no='$un' and password='$pass'";
		$result = mysql_query($sql,$connection);
		$row_count = mysql_num_rows($result);
		$row = mysql_fetch_array($result);
		
		if($row_count == 1) {
			session_start();
			$_SESSION['username'] = $row['namee'];
			$_SESSION['section'] = $row['section'];
			$_SESSION['payment'] = true;
			header("location: payments-options.php");
		}
	} 
?>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" href="css/style.css" />
		
	</head>
	<body>
		<nav>
		   <a href="#" class="home-btn"></a>
		   <div>
				<a href="../login.php" style="margin-right: 15px;">Back</a>
		   </div>
		</nav>
	    <main>
			<div class="form-box">
				<form action="payments-login.php" method="post"> 
					<div class="form-row">
						<label for="username">Username: </label>
						<input name="username" id="un" placeholder="Enter Username..."> 
					</div>
					<div class="form-row">
						<label for="password">Password: </label>
						<input name="password" id="pass" type="password" placeholder="Enter password...">
					</div>
					<div class="form-row">
						<a href="../change-pass.php" class="reset-pass"></a>
					</div>
					<div class="form-row">
						<button name="login" class="btn" id="login">Login</button>
					</div>
					<div id="warning">*Invalid Fields</div>
				</form>
			</div>
	    </main>
	  
	  <script> 
		var loginBtn = document.getElementById('login');
		
		loginBtn.addEventListener('click', function(e) {
			var username = document.getElementById('un').value;
			var password = document.getElementById('pass').value
			
			if(username == "" || password == "") {
				e.preventDefault();
				document.getElementById('warning').style.display = 'block';
				
				setTimeout(function() {
					document.getElementById('warning').style.display = 'none';
				}, 3000);
			}
		});
	  </script>
	</body>
</html>