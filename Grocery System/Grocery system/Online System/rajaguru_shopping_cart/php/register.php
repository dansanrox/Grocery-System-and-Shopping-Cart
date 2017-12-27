<?php
session_start();
	if(isset($_POST['submit'])){
		include_once("connection.php");
		
		$name = mysql_real_escape_string($_POST['name']);
		$phoneNo = mysql_real_escape_string($_POST['phoneNo']);
		$address = mysql_real_escape_string($_POST['address']);
		$email = mysql_real_escape_string($_POST['email']);
	    $pass1 = mysql_real_escape_string($_POST['password']);
		$pass2 = mysql_real_escape_string($_POST['repassword']);
		
		function phpAlert($msg) {
					echo '<script type="text/javascript">
							window.alert("' . $msg . '")
							window.location.href="../login.php";
							</script>';	
					}
		
		if( $name!="" && $phoneNo!="" && $address!="" && $email!="" && $pass1!="" && $pass2!=""){
			
			$check_email = "SELECT * FROM customer_details WHERE cus_email='$email'";
			
			$check=mysql_query($check_email);
				
				if(mysql_num_rows($check)>0) {
					phpAlert("Sorry this email has been already registered");
					}else{
			
			if(strlen($phoneNo)==10 &&  is_numeric($phoneNo) == true && $phoneNo > 0){
					
					if($pass1==$pass2)
					{
						// connection open
						#establishing the connection
						include_once("connection.php");
						
						
						#inserting the values
						$stmt = "INSERT INTO `customer_details` (`cus_name`,`cus_phone_no`,`cus_address`,`cus_email`,`cus_password`) 
						VALUES('$name','$phoneNo','$address','$email','$pass1')";
						
						
                       
						
						mysql_query($stmt)or die("Query error..".mysql_error());
						if(mysql_affected_rows())
						{
							$_SESSION['luser'] = $email;
							header ('Location:../index.php');
						}
						else {
							phpAlert("Registration Error..!");
							}
					}
					else {
						phpAlert("Password does not match");
						}
						
			}else{
				phpAlert("Invalid Phone number");
			}
			
			}
		}
		else {
			phpAlert("Please fill all data fields");
			}
			
	}


?>