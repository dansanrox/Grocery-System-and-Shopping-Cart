<?php
session_start(); 
include ("php/connection.php");

 $phnNo =$_POST['phone'];
 
 function phpAlert($msg) {
					echo '<script type="text/javascript">
					window.alert("' . $msg . '")
					window.location.href="checkout.php";
					</script>';	
					}
					
if(isset($_SESSION['luser'])){

	$luser = $_SESSION['luser'];
	include ('php/connection.php');
	$sql = mysql_query("SELECT * FROM customer_details WHERE cus_email='$luser'") or die("User Error : ".mysql_error());
	while($get = mysql_fetch_array($sql)) {
	$name = $get['cus_name'];
	$cus_id=$get['cus_id'];
	}
}else{
	header('Location:login.php');
}
if(!isset($_POST['updateCart'])){
	header('Location:checkout.php');
}else if(isset($_SESSION["products"])){
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
					
	if(is_numeric($phnNo) == false || strlen($phnNo) !=10 ){
	
	  
					
	   phpAlert("Invalid Phone number");
	   }
	 
	  else if(  $phnNo<0){
					
	   phpAlert("Invalid Phone number");
	   }	 
$current_url = base64_encode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);					
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rajaguru Stores | Checkout</title>
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
        <li><a href="#" class="aActive">Order &amp; Delivery</a></li>
       
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
        <h4>2. Delivery Option</h4>
       <form method="post" action="php/invoiceValid.php" id="comment_form">
          <fieldset>
            <label class="delivery">Deliver on this spesific date:</label>
			<input type="date"  name="delivery_date"/><br>
            <label class="delivery">Deliver on this spesific time:</label>
            <select tabindex="4" name="delivery_sp_time">
              <option>6.00 AM - 9.00 AM</option>
              <option>9.00 AM - 4.00 PM</option>
              <option>4.00 PM - 9.00 PM</option>
            </select>
            <input type="checkbox" value="Anytime" name="delivery_any_time"/>
            Anytime <br /></br>
			
			 <label class="delivery">Any Other Message:</label>
			 <textarea cols="20" rows="3" name="message"></textarea>
          
          </fieldset>
		  <input type="hidden" value="<?php echo $cus_id;?>" name="cus_id" />
		  <input type="hidden" value="<?php echo $_POST['name'];?>" name="name" />
		  <input type="hidden" value="<?php echo $_POST['address'];?>" name="address" />
		  <input type="hidden" value="<?php echo $_POST['phone'];?>" name="phone_no" />
          <input type="submit" value="Place Order &amp; Checkout" id="checkout" name="checkout" class="button" />
          <input type="hidden" value="30" name="comment_post_ID" />
        </form>
      </div>
      <div class="summary grid_5 omega">
        <h4>Summary</h4>
        <div class="sumWarp">
          <ul>
            <li><a href="#" class="down">Shopping Cart <span><img src="images/done.png" alt="" /></span></a>
              <ul>
                <li class="info"><?php echo $_SESSION['noCartItems'];?> items in your cart</li>
                <li class="total">Rs:<?php echo $format_Total;?></li>
                <li class="clear"></li>
              </ul>
            </li>
            <li><a href="#" class="down">Customer Information<span><img src="images/done.png" alt="" /></span></a>
				 <ul>
                <li class="info"> <?php echo $_POST['name']; ?><br />
								  <?php echo $_POST['address']; ?><br />
								  <?php echo $_POST['phone']; ?><br />
				</li>
                <li class="edit"><a href="checkout.php">EDIT &raquo;</a></li>
                <li class="clear"></li>
              </ul>
			 </li>
           
            <li><a href="#" class="billActive">Delivery Option</a></li>
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