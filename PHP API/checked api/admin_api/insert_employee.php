<?php
    
    include('connect.php');

    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $gender = $_POST["gender"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $password = $_POST["password"];
    $identifier = $_POST["identifier"] ?? "Admin";

    if($name==""&&$surname==""&&$gender==""&&$email==""&&$phone==""&&$password=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into users (name,surname,gender,email,phone,password,identifier) values ('$name','$surname','$gender','$email','$phone','$password','$identifier')";
        mysqli_query($con,$sql);
    }

?>
