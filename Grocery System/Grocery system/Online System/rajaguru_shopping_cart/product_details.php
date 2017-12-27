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



$product_code=$_GET['product_code'];
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
		
		////regular
		$max=mysql_query("SELECT SUM(qauntity)-10 AS Total_qty FROM stock  WHERE product_id='$product_code'");
		
		while($get = mysql_fetch_array($max)){
			$maxqty=$get['Total_qty'];
		}
		$results = mysql_query("SELECT * FROM products  WHERE products.product_id='$product_code'");
		if ($results) { 
		
		while($get = mysql_fetch_array($results)){
		$p_code=$get['product_id'];
		$p_name=$get['product_name'];
		$p_desc=$get['product_details'];
		$p_img_name=$get['product_image_name'];
		$p_rprice=$get['product_price'];
		
			}
		}
		/* Future Purpose
		///daily
		$results_2 = mysql_query("SELECT * FROM daily_special  WHERE product_code='$product_code'");
		if ($results_2) { 
		
		while($get = mysql_fetch_array($results_2)){
		$p_sprice=$get['special_price'];
		}
		}
		////weekly
		$results_3 = mysql_query("SELECT * FROM weekly_special  WHERE product_code='$product_code'");
		if ($results_2) { 
		
		while($get = mysql_fetch_array($results_3)){
		$p_sprice=$get['special_price'];
		}
		}
		////holday
		$results_4 = mysql_query("SELECT * FROM holiday_special  WHERE product_code='$product_code'");
		if ($results_2) { 
		
		while($get = mysql_fetch_array($results_4)){
		$p_sprice=$get['special_price'];
		}
		}*/
	if(isset($p_sprice)){
		$p_sprice_new=$p_sprice;
	}else{
		$p_sprice_new="";
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
<title>Hello Food | Product Details</title>
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
         <li><a href="product_overview.php" class="aActive">Products</a></li>
        <li><a href="view_cart.php">Order &amp; Delivery</a></li>
    
      </ul>
    </div>
    <div id="stickySearch" class="grid_16">
    </div>
 
    <div class="bodyContent grid_16">
      <div class="blogPage grid_11 alpha">
        <div class="post">
		<?php
          echo '<p><img src="product_img/'.$p_img_name.'" alt="" style="height:300px;width:640px;" /></p>';
          echo '<h2>'.$p_name.'</h2>';
          echo '<p>'.$p_desc.'</p>';
        ?>
		</div>
      </div>
      <div class="sideBarProd grid_5 omega">
        <div class="sideBarWarp">
          <h3><?php echo $p_name; ?></h3>
          <h4>Regular Price- Rs:<?php echo $p_rprice;?></br>Special Price- Rs:<?php echo $p_sprice_new ?></h4>
          <form action="php/cart_update.php" method="post">
            <p>
              <label for="qty">Select Qty: </label>
              <select tabindex="1" name="product_qty">
               <?php
			   
			   for($minqty=1;$minqty<=$maxqty;$minqty++){
				echo '<option>'.$minqty.'</option>';
				}
				?>
              </select>
            </p>
            <p>
				  <input type="hidden" value="<?php echo $p_code; ?>" name="product_code"/>
				  <input type="hidden" value="<?php echo $p_name; ?>" name="product_name"/>
				  <input type="hidden" value="<?php echo $p_img_name; ?>" name="product_img_name"/>
				  <input type="hidden" value="<?php echo $p_rprice; ?>" name="product_reg_price"/>
				  <input type="hidden" value="<?php echo $p_sprice_new; ?>" name="product_sp_price"/>
				  <input type="hidden" value="<?php echo $current_url; ?>" name="return_url"/>
				  <input type="submit" value="Add to Cart" tabindex="2" name="addCart" class="addCart button" />
              <input type="hidden" value="30" name="comment_post_ID" />
            </p>
          </form>
          <div class="clear"></div>
        </div>
        <div class="fiveStar">
          <h4>Available Stock</h4>
				<h3><?php echo $maxqty; ?></h3>
        </div>
      </div>
     
   
    </div>
  </div>
  <div class="clear"></div>
</div>
<div id="richContent">
  
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