<?php
    include 'conn.php';

    // $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $sql = "SELECT * FROM clothes LIMIT 0,4";
    $sql2 = "SELECT * FROM shoes LIMIT 0,4";

    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    $res2 = $conn->query($sql2);
    $arr2 = $res2->fetch_all(MYSQLI_ASSOC);

    $conn->set_charset('utf8');

    $data =  array(
        'list' => $arr,
        'list2' =>$arr2
    );

    echo json_encode($data);
    $res->close();
    $res2->close();
    $conn->close();
?>