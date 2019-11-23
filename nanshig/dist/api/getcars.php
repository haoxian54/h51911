<?php
    include 'conn.php';

    $uname = ($_REQUEST['uname']) ? $_REQUEST['uname'] : '';

    $sql = "SELECT * FROM cars WHERE uname = '$uname'";

    $res = $conn->query($sql);

    if($res->num_rows){
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        $conn->set_charset('utf8');
        $data = array(
            'list' => $arr
        );
        echo json_encode($data,JSON_UNESCAPED_UNICODE);
    }else{
        echo 'false';
    }
?>