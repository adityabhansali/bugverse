<?php
    $servername="localhost";
    $username="root";
    $password="root";
    $dbname="bugverse";

    $conn=new mysqli($servername,$username,$password,$dbname);

    if($conn->connect_error)
    {
        $string="Error in Connecting to the database";
        return $string;
    }
?>