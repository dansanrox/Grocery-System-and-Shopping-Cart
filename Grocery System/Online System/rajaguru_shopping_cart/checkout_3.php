<?php
session_start(); 
if(!isset($_SESSION["confirmed"])){
	header('Location:checkout.php');
}else{ 
include ("php/connection.php");
if(isset($_SESSION['luser'])){
	$luser = $_SESSION['luser'];
	include ('php/connection.php');
	$sql = mysql_query("SELECT * FROM customer_details WHERE cus_email='$luser'") or die("User Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
	$name = $get['cus_name'];
	$address=$get['cus_address'];
	$phoneNo=$get['cus_phone_no'];
	}
}else{
	header('Location:login.php');
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
						$return_url = base64_decode($_GET['return_url']);
						header('Location:'.$return_url);	
					}
$invoice_id = $_SESSION["invoice_id"];	
			$result = mysql_query("SELECT * FROM order_details WHERE order_id='$invoice_id'") or die("User Error : ".mysql_error());
			while($get = mysql_fetch_array($result)) {
				$cus_id =$get['cus_id'];
				$name = $get['order_cus_name'];
				$address=$get['order_cus_address'];
				$phoneNo=$get['order_cus_phone'];
				$odered_dateTime=$get['order_dateTime'];
				$delivery_date = $get['order_delivery_date'];
				$delivery_sp_time = $get['order_delivery_time'];
				if(isset($get['delivery_anytime'])){
					$delivery_any_time=$get['delivery_anytime'];
				}else{
					$delivery_any_time="";
				};
				
				if(isset($get['order_other_messages'])){
					$other_message=$get['order_other_messages'];
				}else{
					$other_message="";
				};
			}
}				
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);					
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hello Food | Checkout</title>
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
        <h1><a href="index.php"></a></h1>
        <h2>Famously Delicious</h2>
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login">
		<?php if(!isset($_SESSION['luser'])) {
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="my_account.php">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
		}
		?>
		</h3>
        <p>total|Rs:<?php echo $format_Total; ?></p>
        <p><span class="vChart"><a href="view_cart.php">View Cart</a></span></p>
      </div>
    </div>
    <div id="mainMenu" class="grid_16">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="product_overview.php">Products</a></li>
        <li><a href="#">Order &amp; Delivery</a></li>
        
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
    </div>
    <div class="pageInfo grid_16">
      <div class="dapurBlog grid_11 alpha">
        <h3>Checkout</h3>
      </div>
    </div>
    <div class="checkout grid_16">
      <div class="billInfo grid_11 alpha">
        <h4>3. Bill Information</h4>
        <form method="post" action="#" id="comment_form">
          <fieldset>
            <label for="invoice">Order ID: </label>
			<p style="margin-top:5px;margin-bottom:0px"><?php echo $invoice_id; ?></P>
            <br />
            <label for="cusID">Customer ID: </label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $cus_id; ?></P>
            <br />
            <label for="name">Name:</label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $name; ?></P>
            <br />
            <label for="address">Address:</label>
			<p style="margin-top:5px;margin-bottom:0px"><?php echo $address; ?></P>
            <br />
            <label for="phoneNo">Phone No:</label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $phoneNo; ?></P>
            <br />
            <label for="orderedDate">Ordered Date & Time:</label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $odered_dateTime; ?></P>
            <br />
            <label for="deliveryDate">Delivery Date & Time:</label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $delivery_date."at".$delivery_sp_time." ".$delivery_any_time;?></P>
            <br />
			<label for="othermsg">Other Messages:</label>
			<p style="margin-top:5px;margin-bottom:0px"><?php echo $other_message;?></P>
            <br />
			<label for="bought">Bill</label></br></br></br>
			<table >
			<?php
					$total_new=0;
				foreach ($_SESSION["confirmed"] as $cart_itm){
					$subtotal_new = ($cart_itm["price"]*$cart_itm["qty"]); //calculate
					$total_new = ($total_new + $subtotal_new);
					$format_subTotal_new=number_format($subtotal_new,2);
					$format_Total_new=number_format($total_new,2);
					echo	'<tr><td>'.$cart_itm['code'].'</td></tr>';
					echo	'<tr height="30px"><td width="120px">'.$cart_itm['name'].'</td><td width="30px">x'.$cart_itm['qty'].'</td><td align="right">'.$format_subTotal_new.'</td></tr>';
				}
				echo '<tr><td colspan="2" align="center">Total</td><td align="right">'.$format_Total_new.'</td>';
			?>
	
			</table>
            <div class="clear"></div>
          </fieldset>
          <p><a href="product_overview.php"><input type="button" value="Continue Shopping" name="Continue Shopping" class="continueShop"></a></p>
          <input type="hidden" value="30" name="comment_post_ID" />
        </form>
      </div>
      <div class="summary grid_5 omega">
        
      </div>
    </div>
  </div>
  <div class="clear"></div>
</div>
<div id="richContent2">
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