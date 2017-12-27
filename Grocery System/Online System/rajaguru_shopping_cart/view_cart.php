<?php
session_start(); 
include ("php/connection.php");
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
<title>Hello Food | ShoppingCart</title>
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
        <h1><a href="index.php">Rajaguru Stores</a></h1>
        <h2>Famously Delicious</h2>
      </div>
      <div id="headright" class="grid_7 prefix_5 omega">
        <h3 class="login"><?php if(!isset($_SESSION['luser'])) {
		echo '<a href="login.php">Sign up</a> / <a href="login.php">Login</a>';
		}
		else{
		echo '<span class="hiUser">Hi,'. $name.'|</span> <span class="myAccount"><a href="my_account.php">My Account</a></span> <a href="php/logout.php">Logout</a>'; //echo user
		}
		?></h3>
		
        <p>total|Rs:<?php echo $format_Total; ?></p>
        <p><span class="vChart"><a href="view_cart.php">View Cart</a></span> <span class="cOut"><a href="checkout.php?return_url=<?php echo $current_url;?>">Checkout</a></span></p>
      </div>
    </div>
    <div id="mainMenu" class="grid_16">
      <ul>
        <li><a href="index.php">Home</a></li>
         <li><a href="product_overview.php">Products</a></li>
        <li><a href="view_cart.php" class="aActive">Order &amp; Delivery</a></li>
        
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
    </div>
    <div class="prodNav grid_16">
      <div class="prodHeadline grid_16">
        <h3>Your Shopping Cart</h3>
      </div>
    </div>
    <div class="bodyContent grid_16">
      <div class="shopCart grid_16 alpha">
        <div class="headCart grid_16 alpha">
          <div class="itemHead grid_9 alpha"> Item Description</div>
          <div class="priceHead grid_2"> Price</div>
          <div class="qtyHead grid_1"> Qty</div>
          <div class="subtotalHead grid_2"> Subtotal</div>
          <div class="remHead grid_2 omega"> Remove</div>
        </div>
        <form action="php/cart_update.php" method="post">
          <div class="bodyCart grid_16 alpha">
            <?php
						
			
				$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
				if(isset($_SESSION["products"])){
						$total = 0;
						$noCart_items=0;
						foreach ($_SESSION["products"] as $cart_itm){
							$max=mysql_query("SELECT SUM(qauntity) AS Total_qty FROM stock  WHERE product_id='".$cart_itm["code"]."'");
							while($get = mysql_fetch_array($max)){
							$maxqty=$get['Total_qty'];
									}
							echo '<div class="warpCart">';
							echo '<div class="item grid_9 alpha">';
							echo '<p><img src="product_img/'.$cart_itm["image"].'" alt="" style="height:50px;width:50px;" />'.$cart_itm["name"].'<br />';
							echo '</div>';
							echo '<div class="price grid_2">';
							echo '<p>Rs:'.$cart_itm["price"].'</p>';
							echo '</div>';
							echo '<div class="qty grid_1">';
							echo '<select tabindex="1" name="'.$cart_itm["code"].'">';
							echo '<option selected="selected">'.$cart_itm["qty"].'</option>';
							for($minqty=1;$minqty<=$maxqty;$minqty++){
							echo '<option>'.$minqty.'</option>';
							}
							echo '</select>';
							echo '</div>';
								$subtotal = ($cart_itm["price"]*$cart_itm["qty"]); //calculate
								$total = ($total + $subtotal);
								$format_subTotal=number_format($subtotal,2);
								$format_Total=number_format($total,2);
								
						    echo '<div class="subtotal grid_2">';
							echo '<p>Rs:'.$format_subTotal.'</p>';
							echo '</div>';
							echo '<div class="remove grid_2 omega">';
							echo '<a href="php/cart_update.php?removep='.$cart_itm["code"].'&return_url='.$current_url.'">&times;</a>';
							echo '</div>';
							echo	'<input type="hidden" value="'.$cart_itm["code"].'" name="product_code"/>';
							echo	'<input type="hidden" value="'.$cart_itm["name"].'" name="product_name"/>';
							echo	'<input type="hidden" value="'.$cart_itm["image"].'" name="product_img_name"/>';
							echo	'<input type="hidden" value="'.$cart_itm["price"].'" name="product_reg_price"/>';
							echo	'<input type="hidden" value="'.$cart_itm["price"].'" name="product_sp_price"/>';
							
							echo '</div>';
							$noCart_items++;
							
							
			}
			  }else{
					echo 'Your Cart is empty';
				}
					
			?>
          </div>
          <div class="footCart grid_16 alpha">
            <div class="grandTotal grid_3 prefix_11 alpha" style="margin-right:0px;"> Grand Total</div>
            <div class="totalPrice grid_2 omega" style="margin-left:0px;">Rs:<?php echo $format_Total;?></div>
          </div>
          <div class="buttonCart grid_16 alpha">
			<input type="hidden" value="<?php echo $noCart_items; ?>" name="noCart_item"/>
			<input type="hidden" value="<?php echo $current_url; ?>" name="return_url"/>
            <input type="submit" value="Checkout" name="Checkout" class="checkoutCart" />
            <input type="submit" value="Update Cart" name="updateCart" class="updateCart" />
			</form>
            <div class="clear"></div>
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