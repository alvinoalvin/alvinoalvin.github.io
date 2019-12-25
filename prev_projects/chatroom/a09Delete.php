<?php 
    // database
    $servername = "localhost"; //localhost
    $username = "alvinoalvin";//alvinoalvin  
    $password = "SkateBoard";//
    $database = "alvinchatroom";//pokedex
    $msgarr = array();
    $msgIn;
    
    $msgIn = $_POST['message'];
    $user = $_POST['Username'];
    echo $user.": ".$msgIn;
    
    $conn2= new mysqli($servername, $username, $password, $database);

     // Check connection
    if ($conn2->connect_error) {
        die("Connection failed: " . $conn2->connect_error);
    } 

    //call query
    if (!$conn2->multi_query("CALL Operation3()")) {
        echo "CALL3 failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }

    /* close connection */
    $conn2->close();
?>