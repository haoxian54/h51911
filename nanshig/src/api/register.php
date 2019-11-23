<?php
    include 'conn.php';

    $name = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $psw = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql2 = "SELECT * FROM userlist WHERE uname = '$name'";

    $res2 = $conn->query($sql2);

    if($res2->num_rows){
        echo 'repetition';
    }else{
        $sql = "INSERT INTO userlist(uname,psw) VALUES('$name','$psw')";

        $res = $conn->query($sql);

        if($res){
            echo true;
        }else{
            echo false;
        }
        $res->close();
    }

    $res2->close();
    $conn->close();
?>