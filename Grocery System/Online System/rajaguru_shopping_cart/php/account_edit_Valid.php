<?php
session_start();
	if(isset($_POST['submit'])){
		
		$name = $_POST['name'];
		$phoneNo = $_POST['phoneNo'];
		$address = $_POST['address'];
		$email = $_POST['email'];
		$current_email=$_SESSION['luser'];
		
		function phpAlert($msg) {
					echo '<script type="text/javascript">
							window.alert("' . $msg . '")
							window.location.href="../my_account_edit.php";
							</script>';	
					}
		
		if( $name!="" && $phoneNo!="" && $address!="" && $email!=""){
										
			if(strlen($phoneNo)==10){
				
						// connection open
						#establishing the connection
						include_once("connection.php");
						
						
						#Updating the values
						$insert = "UPDATE `customer_details` SET `cus_name`='$name',`cus_phone_no`='$phoneNo',`cus_address`='$address',`cus_email`='$email' WHERE `cus_email`= '$current_email'";
						mysql_query($insert)or die("Query error..".mysql_error());
						if(mysql_affected_rows())
						{
							phpAlert("Successfully Updated...!");
						}
						else {
							phpAlert("Error..!");
							}
					
			}else{
				phpAlert("Phone number does not with valid leangth");
			}
			
			
		}
		else {
			phpAlert("Please fill all data fields");
			}
			
	}


?>