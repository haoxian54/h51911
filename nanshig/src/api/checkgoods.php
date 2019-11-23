<?php
    include 'conn.php';

    $uname = ($_REQUEST['uname']) ? $_REQUEST['uname'] : '';
    $gimg = ($_REQUEST['gimg']) ? $_REQUEST['gimg'] : '';
    $color = ($_REQUEST['color']) ? $_REQUEST['color'] : '';
    $size = ($_REQUEST['size']) ? $_REQUEST['size'] : '';
    $num = (int)(($_REQUEST['num']) ? $_REQUEST['num'] : '');
    $price = (int)(($_REQUEST['price']) ? $_REQUEST['price'] : '');
    $title = ($_REQUEST['title']) ? $_REQUEST['title'] : '';
    $sname = ($_REQUEST['sname']) ? $_REQUEST['sname'] : '';

    $sql = "SELECT * FROM cars WHERE uname = '$uname' AND gimg = '$gimg' AND color = '$color' AND size = '$size' AND title = '$title'";

    $res = $conn->query($sql);

    if($res->num_rows){
        $arr = $res->fetch_all(MYSQLI_ASSOC);

        $conn->set_charset('utf8');
        $data = array(
            'list' => $arr
        );
    
        echo json_encode($data,JSON_UNESCAPED_UNICODE);

    }else if($res->num_rows == 0){
        $sql2 = "INSERT INTO cars(uname,gimg,color,size,price,num,title,sname) VALUES('$uname','$gimg','$color','$size','$price','$num','$title','$sname')";
        $res2 = $conn->query($sql2);
        if($res2){
            echo 'success';
        }else{
            echo 'false';
        }
    }

    $res->close();
    $conn->close();
?>