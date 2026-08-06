<?php

require 'connection.php';

header("Content-Type: application/json");

$id = $_GET['id'] ?? "";
$productName = $_POST['productName'] ?? "";
$productPrice = $_POST['productPrice'] ?? "";
$productDes = $_POST['productDes'] ?? "";


if (empty($id) || empty($productName) || empty($productPrice) || empty($productDes)) {

    http_response_code(400);

    $response = [
        "success" => false,
        "message" => "All fields are required."
    ];
} else {

    $checkQuery = "SELECT * FROM hiren_products WHERE id='$id'";
    $checkResult = mysqli_query($conn, $checkQuery);

    if (mysqli_num_rows($checkResult) > 0) {

        $updateQuery = "UPDATE hiren_products 
                        SET product_name='$productName',
                            product_price='$productPrice',
                            product_des='$productDes'
                        WHERE id='$id'";

        $result = mysqli_query($conn, $updateQuery);

        if ($result > 0) {

            http_response_code(200);

            $response = [
                "success" => true,
                "message" => "Product updated successfully."
            ];
        } else {

            http_response_code(500);

            $response = [
                "success" => false,
                "message" => "Product update failed."
            ];
        }
    } else {

        http_response_code(404);

        $response = [
            "success" => false,
            "message" => "Product not found."
        ];
    }
}


echo json_encode($response);
mysqli_close($conn);

?>
