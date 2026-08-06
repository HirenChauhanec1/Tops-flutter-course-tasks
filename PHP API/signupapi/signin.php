<?php

require 'connection.php';

header("Content-Type: application/json");

$email = $_POST['email'] ?? "";
$password = $_POST['password'] ?? "";


if (empty($email) || empty($password)) {

    http_response_code(400);

    $response = [
        "success" => false,
        "message" => "Email and password are required."
    ];

}
else {

    $emailQuery = "SELECT * FROM hiren_signup WHERE email='$email'";
    $emailResult = mysqli_query($conn, $emailQuery);


    if ($emailResult) {

        if (mysqli_num_rows($emailResult) > 0) {

            $userData = mysqli_fetch_assoc($emailResult);

            if ($userData['password'] == $password) {

                http_response_code(200);

                $response = [
                    "success" => true,
                    "message" => "Login successfully.",
                    "user" => $userData
                ];

            } 
            else {

                http_response_code(401);

                $response = [
                    "success" => false,
                    "message" => "Wrong password."
                ];

            }

        } 
        else {

            http_response_code(404);

            $response = [
                "success" => false,
                "message" => "Email not found."
            ];

        }

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