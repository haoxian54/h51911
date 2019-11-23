<?php
    $severname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "nanshig";

    $conn = new mysqli($severname,$username,$password,$dbname);

    if($conn->connect_error){
        die($conn->connect_error);
    }
?>