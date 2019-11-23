<?php
    include 'conn.php';

    $id = (int)(isset($_REQUEST['id']) ? $_REQUEST['id'] :'');
    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] :'';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] :'';
    $email = isset($_REQUEST['email']) ? $_REQUEST['email'] :'';

    var_dump($id);

    $sql = "UPDATE userlist SET uname = '$name',psw = '$password',email = '$email' WHERE uid = '$id'";

    $res = $conn->query($sql);

    if($res){
        echo true;
    }else{
        echo false;
    }

    $res->close();
    $conn->close();
?>