<?php

require "connection.php";

header("Content-Type: application/json");

$response = array();

$viewQuery = "SELECT * FROM hiren_products";
$result = mysqli_query($conn, $viewQuery);

if ($result) {

    if (mysqli_num_rows($result) > 0) {

        http_response_code(200);

        while ($data = mysqli_fetch_assoc($result)) {
            $response['data'][] = $data;
        }

        $response['success'] = true;
        $response['message'] = "Data Found";

    } else {

        http_response_code(404);

        $response['data'] = [];
        $response['success'] = false;
        $response['message'] = "No Data Found";

    }

} else {

    http_response_code(500);

    $response['data'] = [];
    $response['success'] = false;
    $response['message'] = "Database Error";

}

echo json_encode($response);
mysqli_close($conn);

?>