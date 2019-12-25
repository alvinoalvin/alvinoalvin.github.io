<?php
session_start();

echo "logged out";
// remove all session variables
session_unset(); 

// destroy the session 
session_destroy(); 
?>
<br>
<a href="index.php">Back to Home</a>