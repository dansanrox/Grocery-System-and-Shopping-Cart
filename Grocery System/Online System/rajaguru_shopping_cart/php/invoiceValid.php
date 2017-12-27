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
		$other_message=$_POST['message'];
		$odered_dateTime=date("Y-m-d  h:i:sa");
		
		function phpAlert($msg) {
					echo '<script type="text/javascript">
					window.alert("' . $msg . '")
					window.location.href="../checkout_2.php";
					</script>';	
					}
		
		if( $delivery_date!=""){
			
			if($delivery_sp_time!="" || $delivery_any_time!="" )
			{
				// connection open
				#establishing the connection
				include("connection.php");
				
				
				#inserting the values
				$insert = "INSERT INTO `order_details` (`cus_id`,`order_cus_name`,`order_cus_address`,`order_cus_phone`,`order_dateTime`,`order_delivery_date`,`order_delivery_time`,`delivery_anytime`,`order_other_messages`) VALUES('$cus_id','$name','$address','$phoneNo','$odered_dateTime','$delivery_date','$delivery_sp_time','$delivery_any_time','$other_message')";	  
				mysql_query($insert)or die("Query error..".mysql_error());
				$lastID = $_SESSION["invoice_id"] = mysql_insert_id();
				mysql_query("INSERT INTO order_notify VALUES('$lastID')")or die("Query error..".mysql_error());
				if(mysql_affected_rows())
				{	
					$_SESSION["confirmed"]=$_SESSION["products"];
					foreach ($_SESSION["products"] as $cart_itm){
						$product_code=$cart_itm["code"];
						$qauntity=$cart_itm["qty"];
						mysql_query( "INSERT INTO `ordered_product`(`order_id`,`product_id`,`quantity`) VALUES('$lastID','$product_code','$qauntity')")or die("User Error : ".mysql_error());
						}
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