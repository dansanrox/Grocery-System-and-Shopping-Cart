<?php
session_start();
include("php/connection.php");
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
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hello Food| Foods</title>
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
        <h1><a href="index.php">Hello Food</a></h1>
        <h2>Famously Delicious</h2>
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login"><?php if(!isset($_SESSION['luser'])) {
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="#">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
		}
		?></h3>
       <p>total|Rs:<?php echo $format_Total; ?></p>
        <p><span class="vChart"><a href="view_cart.php">View Cart</a></span> </p>
      </div>
    </div>
    <div id="mainMenu" class="grid_16">
      <ul>
        <li><a href="index.php">Home</a></li>
		<li><a href="product_overview.php" class="aActive">Foods</a></li>
        <li><a href="view_cart.php">Order &amp; Delivery</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
     
    </div>
    <div class="prodNav grid_16">
      <div class="prodHeadline grid_12 alpha">
        <h3>Today's Special</h3>
      </div>
    </div>
    <div class="bodyContent grid_16">
       <div class="products grid_16 " >
        <div class="prodMenu">
		<?php 
		$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
    
		$results = mysql_query("SELECT * FROM products INNER JOIN daily_special ON products.product_code = daily_special.product_code ORDER BY daily_special.product_code ASC");
		if ($results) { 
		
		while($get = mysql_fetch_array($results)){
		$p_code=$get['product_code'];
		$p_name=$get['product_name'];
		$p_img_name=$get['product_img_name'];
		$p_sprice=$get['special_price'];
				echo	'<div class="menu grid_4" style="margin-left:5px">';
				echo	'<p style="font-size:13px;"><a href="product_details.php?product_code='.$p_code.'" class="grid_4 alpha"><img src="product_img/'.$p_img_name.'" alt="" width="220" height="120" /></a><br />';
				echo	'<a href="product_details.php?product_code='.$p_code.'">'.$p_name.'</a> | Rs:'.$p_sprice.'</p>';
				echo	'</div>' ;
						
			}
		}
		?>
		</div>
      </div>
      <div class="commentPages grid_16">
    
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
      <p>Copyright &copy; 2014, Dhanuka Abeywardhane, All Rights Reserved</p>
      
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</div>
</html>