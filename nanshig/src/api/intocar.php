<?php
    include 'conn.php';

    $num = (int)(($_REQUEST['num']) ? $_REQUEST['num'] : '');
    $id = (($_REQUEST['id']) ? $_REQUEST['id'] : '');



    $sql = "UPDATE cars set num='$num' WHERE id = '$id'";
    $res = $conn->query($sql);

    if($res){
        echo true;
    }else{
        echo false;
    }

    $res->close();
    $conn->close();
?>