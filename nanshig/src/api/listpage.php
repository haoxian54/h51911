<?php
    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $ipage = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] - 1 : '';
    $pages = isset($_REQUEST['pages']) ? $_REQUEST['pages'] : '';
    $rank = isset($_REQUEST['rank']) ? $_REQUEST['rank'] : '';
    $index = $ipage * $pages;

    if($rank == 'id'){
        if($name == 'clothes'){
            $sql = "SELECT * FROM clothes LIMIT $index,$pages";
            $sql2 = "SELECT * FROM clothes";
            $sql3 = "SELECT * FROM clothes LIMIT 0,4";
        }else if($name == 'shoes'){
            $sql = "SELECT * FROM shoes LIMIT $index,$pages";
            $sql2 = "SELECT * FROM shoes";
            $sql3 = "SELECT * FROM shoes ORDER BY price ASC LIMIT 0,4";
            $sql3 = "SELECT * FROM suit LIMIT 0,4";
        }else if($name == 'suit'){
            $sql = "SELECT * FROM suit LIMIT $index,$pages";
            $sql2 = "SELECT * FROM suit";
            $sql3 = "SELECT * FROM suit LIMIT 0,4";
        }
    }else if($rank == 'price'){
        if($name == 'clothes'){
            $sql = "SELECT * FROM clothes ORDER BY price ASC LIMIT $index,$pages";
            $sql2 = "SELECT * FROM clothes";
            $sql3 = "SELECT * FROM clothes LIMIT 0,4";
        }else if($name == 'shoes'){
            $sql = "SELECT * FROM shoes ORDER BY price ASC LIMIT $index,$pages";
            $sql2 = "SELECT * FROM shoes";
            $sql3 = "SELECT * FROM shoes LIMIT 0,4";
        }else if($name == 'suit'){
            $sql = "SELECT * FROM suit ORDER BY price ASC LIMIT $index,$pages";
            $sql2 = "SELECT * FROM suit";
            $sql3 = "SELECT * FROM suit LIMIT 0,4";
        }
    }


    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    $res2 = $conn->query($sql2);
    $num = $res2->num_rows;
   
    $res3 = $conn->query($sql3);
    $arr2 = $res3->fetch_all(MYSQLI_ASSOC);

    $conn->set_charset('utf8');

    $data =  array(
        'num' => $num,
        'list' => $arr,
        'list2' => $arr2
    );

    echo json_encode($data,JSON_UNESCAPED_UNICODE);
    $res2->close();
    $res->close();
    $conn->close();
?>