<?php

session_start();

if(isset($_POST['submit'])){

    include '../db.php';

    $user = mysqli_real_escape_string($conn, $_POST['uid']);
    $pass = mysqli_real_escape_string($conn, $_POST['password']);
    
    //error handle
    //check if empty
    if(empty($user) || empty($pass)){
        header("Location: ../index.php?login=empty");
        exit();
    } else {
        $sql = "SELECT * FROM USER WHERE Username = '$user' OR user_email = '$user'";
        $results = mysqli_query($conn, $sql);
        $resultcheck = mysqli_num_rows($results);
        if($resultcheck < 1){
            header("Location: ../index.php?login=error1?user=$user");
            exit();
        } else {
            if($row = mysqli_fetch_assoc($results)){
                //dehashing password
                $hashedPwdCheck = password_verify($pass, $row['PASSWORD']);
                if($hashedPwdCheck == false){
                    header("Location: ../index.php?login=error?user=$user");
                    exit();
                } elseif($hashedPwdCheck == true){
                    //login user
                    $_SESSION['u_id'] = $row['user_id'];
                    $_SESSION['u_first'] = $row['user_first'];
                    $_SESSION['u_last'] = $row['user_last'];
                    $_SESSION['u_email'] = $row['user_email'];
                    $_SESSION['u_uid'] = $row['Username']; // try now NOPE
                    header("Location: ../index.php?login=success?username=$user");
                    exit();
                }
            }
        }
    }
}