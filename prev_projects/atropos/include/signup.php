<?php
echo $_POST['fname'];
if(isset($_POST['submit'])){
    
    include_once '../db.php';

    $first = mysqli_real_escape_string($conn, $_POST['fname']);
    $last = mysqli_real_escape_string($conn, $_POST['lname']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $uname = mysqli_real_escape_string($conn, $_POST['uname']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $houseNum = mysqli_real_escape_string($conn, $_POST['houseNum']);
    $street = mysqli_real_escape_string($conn, $_POST['Street']);
    $city = mysqli_real_escape_string($conn, $_POST['City']);
    $province = mysqli_real_escape_string($conn, $_POST['Province']);
    $postalCode = mysqli_real_escape_string($conn, $_POST['PostalCode']);
    //error handle
    //check for empty feilds
    if(empty($first) || empty($last) || empty($email) || empty($uname) || empty($password)){
        
        header("Location: ../signuppage.php?signup=empty");
        exit();

    }else{
        //check if inpt char are valid
        if(!preg_match("/^[a-zA-Z]*$/", $first) || !preg_match("/^[a-zA-Z]*$/", $last)){
            

            header("Location: ../signuppage.php?signup=invalidNameChar?first=$first?last=$last");
            exit();

        } else{
            //check if email is valid
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
               
                header("Location: ../signuppage.php?signup=email");
                exit();  

            } else {
                $sql = "SELECT * FROM USER WHERE username = '$uname'";
                $result = mysqli_query($conn, $sql);
                $resultCheck = mysqli_num_rows($result);

                if($resultCheck > 0){
                    header("Location: ../signuppage.php?signup=usertaken");
                    exit();  
                } else {
                    //hashing passwords
                    $hashpwd = password_hash($password, PASSWORD_DEFAULT);
                    //insert the uer to the database
                    $sql = "INSERT INTO USER(user_first, user_last, user_email, Username, PASSWORD) VALUES ('$first', '$last', '$email', '$uname', '$hashpwd');";
                    mysqli_query($conn, $sql);
                    $sql = "INSERT INTO ADDRESS(HouseNum, Street, City, Province) VALUES ($houseNum, '$street', '$city', '$province');";
                    mysqli_query($conn, $sql);
                    $sql = "INSERT INTO CUSTOMER(Username, HouseNum, Postal_CODE) VALUES ('$uname', $houseNum, '$postalCode');";
                    mysqli_query($conn, $sql);
                    header("Location: ../signuppage.php?signup=success");
                    exit();  
                }
            }
        }

    }

} else {
   header("Location: ../signuppage.php");
    exit();
}