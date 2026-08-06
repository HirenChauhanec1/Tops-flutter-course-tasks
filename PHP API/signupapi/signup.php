<?php

require 'connection.php';

header("Content-Type: application/json");

$name = $_POST['name'] ?? "";
$surname = $_POST['surname'] ?? "";
$email = $_POST['email'] ?? "";
$password = $_POST['password'] ?? "";

if (empty($name) || empty($surname) || empty($email) || empty($password))  {

    http_response_code(400);

    $response = [
        "success" => false,
        "message" => "All fields are required."
    ];

} 
else {

    $insertQuery = "INSERT INTO hiren_signup(name, surname, email,password)
                    VALUES ('$name', '$surname', '$email', '$password')";

    $result = mysqli_query($conn, $insertQuery);


    if ($result > 0) {

        http_response_code(201);

        $response = [
            "success" => true,
            "message" => "Sign up successfully."
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