<?php
    
    include('connect.php');

    $sql = "select * from users";
    $request = mysqli_query($con,$sql);
    $response = array();

    while($row = mysqli_fetch_array($request))
    {
        $data["id"]= $row["id"];
        $data["name"]= $row["name"];
        $data["surname"]= $row["surname"];
        $data["gender"]= $row["gender"];
        $data["email"]= $row["email"];
        $data["phone"]= $row["phone"];
        $data["password"]= $row["password"];
        $data["identifier"]= $row["identifier"];

        array_push($response,$data);
    }

    echo json_encode($response);
    mysqli_close($con);

?>

