<?php
    $severname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "nanshig";

    $conn = new mysqli($severname,$username,$password,$dbname);

    header("Content-type:text/html;charset=utf-8");

    if($conn->connect_error){
        die($conn->connect_error);
    }
?>