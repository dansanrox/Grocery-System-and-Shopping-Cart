<?php 
session_start();
if(isset($_POST['login']))
{

$user = $_POST['email'];	
$pass = $_POST['password'];	

function phpAlert($msg) {
					echo '<script type="text/javascript">
					window.alert("' . $msg . '")
					window.location.href="../login.php";
					</script>';	
					}

include ('connection.php');

$sql = mysql_query("SELECT cus_email, cus_password FROM customer_details WHERE cus_email='$user' AND cus_password='$pass'") or die("Error : ".mysql_error());

if (mysql_num_rows($sql)>0) {
	
	//echo "true";
	mysql_close();
	$_SESSION['luser']=$user;
	header('Location:../index.php');
	}

else {
	phpAlert( "Invalid Login! ");
	
	}
}



?>