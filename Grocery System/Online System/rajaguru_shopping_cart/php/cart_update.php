<?php
session_start();
include_once("connection.php");

//empty cart by distroying current session
/*if(isset($_GET["emptycart"]) && $_GET["emptycart"]==1)
{
	$return_url = base64_decode($_GET["return_url"]); //return url
	session_destroy();
	header('Location:'.$return_url);
}
*/
//add item in shopping cart

if(!isset($_SESSION['luser'])){
		header('Location:../login.php');

}else if(isset($_POST['addCart'])){
	$product_code 		= filter_var($_POST["product_code"], FILTER_SANITIZE_STRING); //product code
	$product_qty 		= filter_var($_POST["product_qty"], FILTER_SANITIZE_NUMBER_INT); //product code
	$product_name 		=$_POST['product_name'];
	$product_img_name 	=$_POST['product_img_name'];
		if(isset($_POST['product_sp_price']) && $_POST['product_sp_price']!="" ){
			$price=$_POST['product_sp_price'];
		}else{
			$price=$_POST['product_reg_price'];
		}
	$return_url 	= base64_decode($_POST["return_url"]); //return url

	//MySqli query - get details of item from db using product code
	/*$results = mysql_query("SELECT * FROM products WHERE product_code='$product_code' LIMIT 1");
	while($get = mysql_fetch_array($results)) {
		$p_code=$get['product_code'];
		$p_name=$get['product_name'];
		$p_desc=$get['product_desc'];
		$p_img_name=$get['product_img_name'];
		$p_rprice=$get['reg_price'];
		$p_sprice=$get['special_price'];
	}
	*/
	//if ($results) { //we have the product info 
		
		//prepare array for the session variable
		$new_product = array(array('name'=>$product_name, 'code'=>$product_code, 'image'=>$product_img_name, 'qty'=>$product_qty, 'price'=>$price));
		
		if(isset($_SESSION["products"])) //if we have the session
		{
			$found = false; //set found item to false
			
			foreach ($_SESSION["products"] as $cart_itm) //loop through session array
			{
				if($cart_itm["code"] == $product_code){ //the item exist in array

					$product[] = array('name'=>$cart_itm["name"], 'code'=>$cart_itm["code"], 'image'=>$product_img_name, 'qty'=>$product_qty, 'price'=>$cart_itm["price"]);
					$found = true;
				}else{
					//item doesn't exist in the list, just retrive old info and prepare array for session var
					$product[] = array('name'=>$cart_itm["name"], 'code'=>$cart_itm["code"], 'image'=>$cart_itm["image"], 'qty'=>$cart_itm["qty"], 'price'=>$cart_itm["price"]);
				}
			}
			
			if($found == false) //we didn't find item in array
			{
				//add new user item in array
				$_SESSION["products"] = array_merge($product, $new_product);
			}else{
				//found user item in array list, and increased the quantity
				$_SESSION["products"] = $product;
			}
			
		}else{
			//create a new session var if does not exist
			$_SESSION["products"] = $new_product;
		}
		
	//}
	
	//redirect back to original page
	header('Location:'.$return_url);
}

///update cart
if(isset($_POST['updateCart'])){
	$return_url 	= base64_decode($_POST["return_url"]);
	if(isset($_SESSION["products"])){
		$product_code 		= filter_var($_POST["product_code"], FILTER_SANITIZE_STRING); //product code
		$product_qty 		= $_POST["product_qty"]; //product code
	
	
			if(isset($_POST['product_sp_price'])){
			$price=$_POST['product_sp_price'];
		}else{
			$price=$_POST['product_reg_price'];
			$product_qty=array($cart_itm["code"]=>$_POST[$cart_itm["code"]]);
			
		}
			foreach ($_SESSION["products"] as $cart_itm) //loop through session array
			{
				$product_code 		= filter_var($_POST["product_code"], FILTER_SANITIZE_STRING); //product code
				$product_qty[$cart_itm["code"]] = $_POST[$cart_itm["code"]];
				$product_new[] = array('name'=>$cart_itm["name"], 'code'=>$cart_itm["code"] , 'image'=>$cart_itm["image"], 'qty'=>$product_qty[$cart_itm["code"]]  , 'price'=>$cart_itm["price"]);
			}
			$_SESSION["products"] = $product_new;
			

	}else{
		header('Location:'.$return_url);
		}
		header('Location:'.$return_url);
		
}
///checkout
if(isset($_POST['Checkout'])){
	$_SESSION['noCartItems']=$_POST['noCart_item'];
	header('Location:../checkout.php');
}



//remove item from shopping cart
if(isset($_GET["removep"]) && isset($_GET["return_url"]) && isset($_SESSION["products"]))
{
	$product_code 	= $_GET["removep"]; //get the product code to remove
	$return_url 	= base64_decode($_GET["return_url"]); //get return url

	
	foreach ($_SESSION["products"] as $cart_itm) //loop through session array var
	{
		if($cart_itm["code"]!=$product_code){ //item does,t exist in the list
			$product[] = array('name'=>$cart_itm["name"], 'code'=>$cart_itm["code"], 'image'=>$cart_itm["image"],'qty'=>$cart_itm["qty"], 'price'=>$cart_itm["price"]);
		}
		
		//create a new product list for cart
		$_SESSION["products"] = $product;
	}
	
	//redirect back to original page
	header('Location:'.$return_url);
}
?>