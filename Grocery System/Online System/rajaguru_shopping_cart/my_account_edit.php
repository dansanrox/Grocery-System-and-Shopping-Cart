<?php
session_start(); 
if(!isset($_SESSION['luser'])){

	header('Location:index.php');
}else{
$luser = $_SESSION['luser'];
	include ('php/connection.php');
	$sql = mysql_query("SELECT * FROM customer_details WHERE cus_email='$luser'") or die("User Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
	$name = $get['cus_name'];
	$address=$get['cus_address'];
	$phoneNo=$get['cus_phone_no'];
	$email = $get['cus_email'];

}
}
if(isset($_SESSION["products"])){
						$total = 0;
						foreach ($_SESSION["products"] as $cart_itm){
								$subtotal = ($cart_itm["price"]*$cart_itm["qty"]); //calculate
								$total = ($total + $subtotal);
								$format_subTotal=number_format($subtotal,2);
								$format_Total=number_format($total,2);
						}
						
					}else{
						$total = 0;
						$format_Total=number_format($total,2);
						
							
					}
					
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rajaguru Stores | EDIT</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="all" href="styles/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="styles/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="styles/text.css" />
<link rel="stylesheet" type="text/css" media="all" href="style.css" />
<link rel="stylesheet" type="text/css" media="all" href="themes/brown/style.css" />
</head>
<body>
<div id="warp">
  <div id="main" class="container_16">
    <div id="header" class="grid_16">
      <div id="logo" class="grid_4 alpha">
        <h1><a href="index.html">Hello Food</a></h1>
        <h2>Order eat & enjoy</h2>
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login">
		<?php if(!isset($_SESSION['luser'])) {
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="my_account.php">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
		} ?> 
		</h3>
        <p>total|Rs:00.00</p>
        <p><span class="vChart"><a href="view_cart.php">View Cart</a></span> <span class="cOut"><a href="checkout.php?return_url=<?php echo $current_url;?>">Checkout</a></span></p>
      </div>
    </div>
    <div id="mainMenu" class="grid_16">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="product_overview.php">Foods</a></li>
        <li><a href="view_cart.php">Order &amp; Delivery</a></li>
       
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
    
    
    </div>
    <div class="checkout grid_16">
      <div class="newAccount grid_8 alpha">
        <h4>Change Details</h4>
		<!---REGISTER FORM----->
        <form method="post" action="php/account_edit_Valid.php" name="register">
          <fieldset>
             <label for="Name">Name: </label>
            <input type="text" tabindex="1" size="22" value="<?php echo $name; ?>" id="name" name="name" class="text" />
            <br />
            <label for="PhoneNo">Phone no: </label>
            <input type="text" tabindex="2" size="10" maxlength="10" value="<?php echo $phoneNo; ?>" id="phoneNo" name="phoneNo" class="text" />
            <br />
			<label for="Address">Address: </label>
            <input type="text" tabindex="2" size="22" value="<?php echo $address; ?>" id="address" name="address" class="text" />
            <br />
            <label for="email">Email:</label>
            <input type="email" tabindex="3" size="22" value="<?php echo $email; ?>" id="email" name="email" class="text" />
            <br />
            <div class="clear"></div>
          </fieldset>
          <p>
            <input type="submit" value="Create New Account" tabindex="6" name="submit" class="newAccountButton" />
          </p>
          <input type="hidden" value="30" />
        </form>
      </div>
      <div class="loginPage grid_8 omega">
        <h4>Change Password</h4>
		<!---Login FORM----->
        <form method="post" action="php/account_passedit_Valid.php" name="login">
          <fieldset>
            <label for="email2">Current Password:</label>
            <input type="password" tabindex="1" size="22" value="" id="currentpassword" name="currentpassword" class="text" />
            <br />
            <label for="password2">New Password:</label>
            <input type="password" tabindex="2" size="22" value="" id="newpassword" name="newpassword" class="text" />
            <br />
			<label for="password2">Again New Password:</label>
            <input type="password" tabindex="2" size="22" value="" id="retype_password2" name="retype_password2" class="text" />
            <br />
            <div class="clear"></div>
          </fieldset>
          <p>
            <input type="submit" value="Login" tabindex="3" name="login" class="userLogin" />
          </p>
          <input type="hidden" value="30" />
        </form>
      </div>
    </div>
  </div>
  <div class="clear"></div>
</div>

<div id="footer">
  <div class="container_16">
    <div class="copyright grid_16" style="text-align:center;">
      <p>Copyright &copy; 2014, Rajaguru Stores, All Rights Reserved</p>
     
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</div>

</html>