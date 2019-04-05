<?php
    $email = "alvinoalvin1234@gmail.com";
    $fname = $_POST['fullName'];
    $message = $_POST['subject'];
    
    mail($email,$fname,$message);
    echo $email . "<br>"; 
    echo $fname. "<br>";
    echo $message. "<br>";
?>