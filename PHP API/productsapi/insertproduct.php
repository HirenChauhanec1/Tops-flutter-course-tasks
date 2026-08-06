<?php

require 'connection.php';

header("Content-Type: application/json");

$productName = $_POST['productName'] ?? "";
$productPrice = $_POST['productPrice'] ?? "";
$productDes = $_POST['productDes'] ?? "";

if (empty($productName) || empty($productPrice) || empty($productDes)) {

    http_response_code(400);

    $response = [
        "success" => false,
        "message" => "All fields are required."
    ];

} 
else {

    $insertQuery = "INSERT INTO hiren_products(product_name, product_price, product_des)
                    VALUES ('$productName', '$productPrice', '$productDes')";

    $result = mysqli_query($conn, $insertQuery);


    if ($result > 0) {

        http_response_code(201);

        $response = [
            "success" => true,
            "message" => "Product added successfully."
        ];

    } 
    else {

        http_response_code(500);

        $response = [
            "success" => false,
            "message" => "Database error."
        ];

    }

}

echo json_encode($response);
mysqli_close($conn);

?>