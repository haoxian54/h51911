<?php
    include 'conn.php';

    $ipage = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] - 1 : '';
    $pages = isset($_REQUEST['pages']) ? $_REQUEST['pages'] : '';

    $sql = "SELECT * FROM userlist LIMIT $ipage,$pages";
    $res = $conn->query($sql);

    
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    $conn->set_charset('utf8');

    echo json_encode($arr);

    $res->close();
    $conn->close();
?>