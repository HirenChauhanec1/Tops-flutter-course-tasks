<?php

//importing dbDetails file
include 'connect.php';

//this is our upload folder
$upload_path = 'images/';

//Getting the server ip
$server_ip = gethostbyname(gethostname());

//creating the upload url
$upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/API/" . $upload_path;


//getting product details from the request
$product_id = $_POST["product_id"];
$product_name = $_POST["product_name"];
$product_price = $_POST["product_price"];
$final_discounted_price = $_POST["final_discounted_price"];
$features = $_POST["features"];
$ratings = $_POST["ratings"];

//getting file info from the request
$fileinfo = pathinfo($_FILES["product_image"]["name"]);

//getting the file extension
$extension = $fileinfo["extension"];

$random = 'image_' . rand(1000,9999);

//file url to store in the database
$file_url = $upload_url . $random . '.' . $extension;

//file path to upload in the server
$file_path = $upload_path . $random . '.'. $extension;


//saving the file
move_uploaded_file($_FILES["product_image"]["tmp_name"],$file_path);


//checking product details
if($product_id==""&&$product_name==""&&$product_price==""&&$final_discounted_price==""&&$features==""&&$ratings=="")
{
    echo '0';
}
else
{
    $sql = "insert into products (product_id,product_name,product_price,product_image,final_discounted_price,features,ratings) values ('$product_id','$product_name','$product_price','$file_url','$final_discounted_price','$features','$ratings')";

    mysqli_query($con,$sql);
}


//closing the connection
mysqli_close($con);

?>