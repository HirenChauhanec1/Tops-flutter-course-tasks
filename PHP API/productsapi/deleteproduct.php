<?php

require 'connection.php';

header("Content-Type: application/json");

$id = $_GET['id'] ?? "";

if (empty($id)) {

    http_response_code(400);

    $response = [
        "success" => false,
        "message" => "Product id is required."
    ];
} else {

    $checkQuery = "SELECT * FROM hiren_products WHERE id='$id'";
    $checkResult = mysqli_query($conn, $checkQuery);


    if (mysqli_num_rows($checkResult) > 0) {

        $deleteQuery = "DELETE FROM hiren_products WHERE id='$id'";
        $result = mysqli_query($conn, $deleteQuery);

        if ($result > 0) {

            http_response_code(200);

            $response = [
                "success" => true,
                "message" => "Product deleted successfully."
            ];
        } else {

            http_response_code(500);

            $response = [
                "success" => false,
                "message" => "Product deletion failed."
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