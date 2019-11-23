<?php
    include 'conn.php';

    $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
    // $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';

    $sql = "DELETE FROM userlist WHERE uid = '$id'";
    $res = $conn->query($sql);
//  AND uname = '$name'
    if($res){
        echo 'ok';
    }else{
        echo 'false';
    }

    $res->close();
    $conn->close();
?>