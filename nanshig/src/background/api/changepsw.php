<?php
    include 'conn.php';

    $name = isset($_REQUEST['username']) ? $_REQUEST['username'] : "";
    $psw = isset($_REQUEST['password']) ? $_REQUEST['password'] : "";

    $sql = "SELECT * FROM userlist WHERE uname = '$name'";
    $res = $conn->query($sql);

    if($res->num_rows>0){
        $sql1 = "UPDATE userlist SET psw='$psw' where uname='$name'";
        $res1 = $conn->query($sql1);
        if($res1){
            echo true;
        }else{
            echo false;
        }
    }else{
        echo false;
    }

    // UPDATE userinf SET name='CL' where name='chenglin'
?>