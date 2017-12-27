<?php
session_start(); 
include ("php/connection.php");
if(isset($_SESSION['luser'])){

	$luser = $_SESSION['luser'];
	include ('php/connection.php');
	$sql = mysql_query("SELECT * FROM customer_details WHERE cus_email='$luser'") or die("User Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
	$name = $get['cus_name'];
	$address=$get['cus_address'];
	$phoneNo=$get['cus_phone_no'];
	$email = $get['cus_email'];
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
						
							
					}

				
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);					
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rajaguru Stores | <?php echo $name; ?> </title>
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
       
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login">
		<?php if(!isset($_SESSION['luser'])) {
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="#">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
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
        <h3>My Account</h3>
      </div>
    </div>
    <div class="checkout grid_16">
      <div class="billInfo grid_11 alpha">
        <h4>Customer Information</h4>
        <form method="post" action="#" id="comment_form">
          <fieldset>
            <label for="invoice">Name: </label>
			<p style="margin-top:5px;margin-bottom:0px"><?php echo $name; ?></P> <p style="position:absolute;left:600px;top:230px;"><a  href="my_account_edit.php">EDIT &raquo; </a></p>
            <br />
            <label for="cusID">E-Mail: </label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $email; ?></P>
            <br />
            <label for="name">Address:</label>
            <p style="margin-top:5px;margin-bottom:0px"><?php echo $address; ?></P>
            <br />
            <label for="address">Phone No:</label>
			<p style="margin-top:5px;margin-bottom:0px"><?php echo $phoneNo; ?></P>
            <br />
            
            <div class="clear"></div>
          </fieldset>
          <p><a href="product_overview.php"><input type="button" value="Continue Shopping" name="Continue Shopping" class="continueShop"></a></p>
          <input type="hidden" value="30" name="comment_post_ID" />
        </form>
      </div>
      <div class="summary grid_5 omega">
        
      </div>
	   <div class="summary grid_5 omega">
        <h4>Summary</h4>
        <div class="sumWarp">
          <ul>
            <li><a href="#" class="down">Recent Products</a>
              <ul>
                <li class="info">////////</li>
                <li class="total">Rs:<?php echo $format_Total;?></li>
                <li class="clear"></li>
              </ul>
            </li>
           
           
          
          </ul>
        </div>
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