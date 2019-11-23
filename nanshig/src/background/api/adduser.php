<?php
    include 'conn.php';

    $name = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $psw = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';
    $email = isset($_REQUEST['email']) ? $_REQUEST['email'] : '';

    $sql1 = "SELECT * FROM userlist WHERE name = '$name'";
    $res1 = $conn->query($sql1);
    if($res1->num_rows>0){
        echo false;
    }else{
        $sql = "INSERT INTO userlist(uname,psw,email) VALUES('$name','$psw','$email')";
    
        $res = $conn->query($sql);
    
        if($res){
            echo true;
        }else{
            echo false;
        }
    }
?>