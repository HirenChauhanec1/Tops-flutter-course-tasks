<?php


//importing dbDetails file
include 'connect.php';


//getting product id from the request
$product_id = $_POST["product_id"];


//checking product id
if($product_id=="")
{
    echo '0';
}
else
{
    $sql = "delete from products where product_id='$product_id'";

    mysqli_query($con,$sql);
}


//closing the connection
mysqli_close($con);


?>