<?php
    header("location: ../index.php?logout=notreached");
if(isset($_POST['submits'])){
    session_start();
    session_unset();
    session_destroy();
    header("Location: ../index.php?logout=yes");
    exit();
} else {
    header("Location: ../index.php?logout=no");
    exit();
}