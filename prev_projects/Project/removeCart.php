<?php
    session_start();
    include_once 'db_include.php';
    
    $user = $_SESSION['user'];
    $item = $_POST['type'];
    echo $user.": ". $item."  ";

    // DELETE FROM SHOPPINGCART WHERE username = 'asdf' and HID = (SELECT ID FROM HORSE WHERE TYPE='SHOW') LIMIT 1;
    //call query
    if (!$conn->multi_query("DELETE FROM SHOPPINGCART WHERE Username = '$user' and HID = (SELECT ID FROM HORSE WHERE TYPE='$item') LIMIT 1")) {
        echo "CALL toCart failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }

    $conn->close();
    
?>