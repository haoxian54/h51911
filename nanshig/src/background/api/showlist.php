<?php
    include 'conn.php';

    $ipage = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] - 1 : '';
    $pages = isset($_REQUEST['pages']) ? $_REQUEST['pages'] : '';
    $index = $ipage * $pages;

    $sql = "SELECT * FROM userlist LIMIT $index,$pages";

    // $sql = "SELECT * FROM admin";
    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    $conn->set_charset('utf8');
    
    $sql2 = "SELECT * FROM userlist";
    $res2 = $conn->query($sql2);
    $num = $res2->num_rows;
    $data =  array(
        'num' => $num,
        'list' => $arr
    );

    echo json_encode($data);

    $res->close();
    $conn->close();
?>