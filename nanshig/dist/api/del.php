<?php
    include 'conn.php';

    $id = ($_REQUEST['id']) ? $_REQUEST['id'] : '';

    $sql = "DELETE FROM cars WHERE id='$id'";

    $res = $conn->query($sql);

    if($res){
        echo 'success';
    }else{
        echo 'false';
    }
?>