<?php
session_start(); 
if(isset($_SESSION['luser'])){

	$luser = $_SESSION['luser'];
	include ('php/connection.php');
	$sql = mysql_query("SELECT * FROM customer_details WHERE cus_email='$luser'") or die("User Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
	$name = $get['cus_name'];
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

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rajaguru Stores</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="all" href="styles/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="styles/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="styles/text.css" />
<link rel="stylesheet" type="text/css" media="all" href="style.css" />
<link rel="stylesheet" type="text/css" media="all" href="themes/brown/style.css" />
<script type="text/javascript" src="scripts/jquery-1.4.2.js"></script>
<script type="text/javascript" src="scripts/jquery.tools.min.js"></script>
<script type="text/javascript" src="scripts/dapur.js"></script>
</head>
<body>
<div id="warp">
  <div id="main" class="container_16">
    <div id="header" class="grid_16">
      <div id="logo" class="grid_4 alpha">
        <h1><a href="index.html">Rajaguru Stores</a></h1>
        <h2>Enjoy Eat</h2>
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login">
		
		<?php if(!isset($_SESSION['luser'])) {
		/*****************echo customer Name*******************/
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="my_account.php">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
		}
		?>
		</h3>
         <p>total|Rs:<?php echo $format_Total; ?></p>
        <p><span class="vChart"><a href="view_cart.php">View Cart</a></span> </p>
      </div>
    </div>
    <div id="mainMenu" class="grid_16">
      <ul>
        <li><a href="index.php" class="aActive">Home</a></li>
		<li><a href="product_overview.php">Products</a></li>
        <li><a href="view_cart.php">Order &amp; Delivery</a></li>
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
     
    </div>
    <div class="products grid_16">
      <div class="productsWarp">
        <ul>
          <li><a href="product_details.php?product_code=hf011"><img src="images/banner_01.jpg" alt="" width="938" height="398" /></a></li>
          <li><a href="product_details.php?product_code=hf009"><img src="images/banner_02.jpg" alt="" width="938" height="398" /></a></li>
          <li><a href="product_details.php?product_code=hf003"><img src="images/banner_03.jpg" alt="" width="938" height="398" /></a></li>
          <li><a href="product_details.php?product_code=hf013"><img src="images/banner_04.jpg" alt="" width="938" height="398" /></a></li>
          <li><a href="product_details.php?product_code=hf008"><img src="images/banner_05.jpg" height="398" /></a></li>
        </ul>
      </div>
    </div>
    <div class="productThumb grid_10 prefix_3 suffix_3" >
      <ul>
        <li class="grid_2 alpha"><a href="#"><img src="images/banner_01.jpg" alt="" width="100" height="60" /></a></li>
        <li class="grid_2"><a href="#"><img src="images/banner_02.jpg" alt="" width="100" height="60" /></a></li>
        <li class="grid_2"><a href="#"><img src="images/banner_03.jpg" alt="" width="100" height="60" /></a></li>
        <li class="grid_2"><a href="#"><img src="images/banner_04.jpg" alt="" width="100" height="60" /></a></li>
        <li class="grid_2 omega"><a href="#"><img src="images/banner_05.jpg" alt="" width="100" height="60" /></a></li>
      </ul>
    </div>
  </div>
  <div class="clear"></div>
</div>
<div id="fresh">
  
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