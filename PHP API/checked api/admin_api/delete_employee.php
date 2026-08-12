<?php

    include('connect.php');

    $id = $_POST["id"];
  

    if($id=="")
    {
        echo '0';
    }
    else
    {
        $sql = "delete from users where id='$id'";
        mysqli_query($con,$sql);
    }

?>
