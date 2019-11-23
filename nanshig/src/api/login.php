<?php
    include 'conn.php';

    $uname = ($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $psw = ($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql = "SELECT * FROM userlist WHERE uname = '$uname' AND psw = '$psw'";

    $res = $conn->query($sql);

    if($res->num_rows){
        echo true;
    }else{
        echo false;
    }

    $res->close();
    $conn->close();
?>