<?php
session_start(); 
if(isset($_POST['checkout'])){
		
		$name = $_POST['name'];
		$phoneNo = $_POST['phone_no'];
		$address = $_POST['address'];
		$cus_id = $_POST['cus_id'];
		$delivery_date = $_POST['delivery_date'];
		$delivery_sp_time = $_POST['delivery_sp_time'];
		$delivery_any_time=$_POST['delivery_any_time'];
		$pay_method= $_POST['pay_method'];
		$other_message=$_POST['message'];
		$odered_dateTime=date("Y-m-d  h:i:sa");
		
		function phpAlert($msg) {
					echo '<script type="text/javascript">
					window.alert("' . $msg . '")
					window.location.href="../checkout_2.php";
					</script>';	
					}
		
		if( $delivery_date!="" && $pay_method!=""){
			
			if($delivery_sp_time!="" || $delivery_any_time!="" )
			{
				// connection open
				#establishing the connection
				include("connection.php");
				
				
				#inserting the values
				$insert = "INSERT INTO `invoice_details` (`cus_id`,`cus_name`,`cus_address`,`cus_phone_no`,`ordered_date`,`delivery_date`,`delivery_specific_time`,`delivery_anytime`,`pay_method`,`other_messages`) VALUES('$cus_id','$name','$address','$phoneNo','$odered_dateTime','$delivery_date','$delivery_sp_time','$delivery_any_time','$pay_method','$other_message')";
				mysql_query($insert)or die("Query error..".mysql_error());
				if(mysql_affected_rows())
				{
					$_SESSION["invoice_id"] = mysql_insert_id();
					$_SESSION["confirmed"]="confirmed";
					header ('Location:../checkout_3.php');
				}
				else {
					phpAlert("Error..!");
					}
			}
			else {
				phpAlert("Please give specific time");
				}
			}
		else {
			phpAlert("Please fill all data fields");
			}
			
	}



?>