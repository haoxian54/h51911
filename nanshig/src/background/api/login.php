<?php
    include 'conn.php';

    $name = isset($_REQUEST['username']) ? $_REQUEST['username'] : "";
    $psw = isset($_REQUEST['password']) ? $_REQUEST['password'] : "";

    $sql = "SELECT * FROM master WHERE name = '$name' AND psw = '$psw'";

    $res = $conn->query($sql);

    if($res->num_rows){
        echo true;
    }else{
        echo false;
    }

    $res->close();
    $conn->close();
?>