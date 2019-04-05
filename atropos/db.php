<?php
    $servername = "localhost"; //localhost
    $username = "alvinoalvin";//alvinoalvin  
    $password = "SkateBoard";//
    $dbname = "atropos";
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }