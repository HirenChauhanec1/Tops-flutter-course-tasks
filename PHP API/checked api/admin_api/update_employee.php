<?php

    include('connect.php');

    $id = $_POST["id"];
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $gender = $_POST["gender"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $password = $_POST["password"];
    $identifier = $_POST["identifier"];

    if($id==""&&$name==""&&$surname==""&&$gender==""&&$email==""&&$phone==""&&$password==""&&$identifier=="")
    {
        echo '0';
    }
    else
    {
        $sql = "update users set name='$name',surname='$surname',gender='$gender',email='$email',phone='$phone',password='$password',identifier='$identifier' where id ='$id'";
        mysqli_query($con,$sql);
    }

?>
