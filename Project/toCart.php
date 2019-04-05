<?php
    session_start();
    include_once 'db_include.php';
    $user = $_SESSION['user'];
    $item = $_POST['type'];
    echo $user.": ". $item."  ";
    // Create connection

    
    //call query
    if (!$conn->multi_query("INSERT INTO SHOPPINGCART (`Username`, `HID`) VALUES ('$user', (SELECT ID FROM HORSE WHERE TYPE='$item'))")) {
        echo "CALL toCart failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }
    $conn->close();
?>