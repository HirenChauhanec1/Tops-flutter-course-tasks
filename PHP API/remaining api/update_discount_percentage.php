<?php

include 'connect.php';

$discount_percentage = $_POST["discount_percentage"];

if($discount_percentage=="")
{
    echo '0';
}
else
{
    $sql = "update products set final_discounted_price = product_price - (product_price * $discount_percentage / 100)";

    mysqli_query($con,$sql);

    echo '1';
}

mysqli_close($con);

?>