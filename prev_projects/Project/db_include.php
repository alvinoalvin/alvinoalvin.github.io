<?php
    $servername = "localhost"; //localhost
    $username = "alvinoalvin";//alvinoalvin  
    $password = "SkateBoard";//
    $dbname = "kingsranch";
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }
