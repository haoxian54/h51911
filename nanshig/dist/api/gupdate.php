<?php
    include 'conn.php';

    $id = ($_REQUEST['id']) ? $_REQUEST['id'] : '';
    $num = ($_REQUEST['num']) ? $_REQUEST['num'] : '';

    $sql = "UPDATE cars SET num='$num' where id='$id'";

    $res = $conn->query($sql);

    if($res){
        echo true;
    }else{
        echo false;
    }
?>