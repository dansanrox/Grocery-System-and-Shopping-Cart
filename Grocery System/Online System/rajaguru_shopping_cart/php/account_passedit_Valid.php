	<?php 
	session_start();
	if(isset($_POST['login']))
	{

		$currentPass = $_POST['currentpassword'];	
		$newpass = $_POST['newpassword'];	
		$renewpass = $_POST['retype_password2'];
		$current_email=$_SESSION['luser'];

	function phpAlert($msg) {
						echo '<script type="text/javascript">
						window.alert("' . $msg . '")
						window.location.href="../my_account_edit.php";
						</script>';	
						}

	include ('connection.php');

	$sql = mysql_query("SELECT cus_password FROM customer_details WHERE cus_email='$current_email'") or die("Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
		$current_got_pass = $get['cus_password'];	
	}


	if( $currentPass!="" && $newpass!="" && $renewpass!="" ){

		if($currentPass==$current_got_pass){
		
			if($newpass==$renewpass){
			
			$insert = "UPDATE `customer_details` SET `cus_password`='$newpass' WHERE `cus_email`= '$current_email'";
			mysql_query($insert)or die("Query error..".mysql_error());
				if(mysql_affected_rows())
						{
							phpAlert("Successfully Updated...!");
						}
						else {
							phpAlert("Error..!");
							}
			
			
			}else{
			
				phpAlert("Retyped Password not Match");
			
			}
			


		}else{
		
			phpAlert("Current Password not Valid");
		
		}
		
		
	}else{
		
			phpAlert("Please fill all data fields");
	}
}

	?>