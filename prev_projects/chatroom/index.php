<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!--Using Less for Styling-->
    <link rel="stylesheet/less" type="text/css" href="a09.less" />
    
    <script src="jquery-3.2.1.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.7.2/less.min.js"></script>
    <!--<script type="text/javascript" src="a09.js"></script>-->
    <!--<link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">-->
    
    <title>Chatroom</title>
</head>
<?php
    require_once './vendor/autoload.php';
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    $template = $twig->load('login.html');

    $servername = "localhost"; //localhost
    $username = "alvinoalvin";//alvinoalvin  
    $password = "SkateBoard";//
    $database = "PROJECT";//project
    
    $user = $_POST['username'];
    $pass = $_POST['password'];
    // Create connection
    if (isset($_POST['username'])){
        $conn = new mysqli($servername, $username, $password, $database);
    
         // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 
        //call query
        if (!$conn->multi_query("INSERT INTO `USER`(`Username`, `Password`) VALUES ('$user','$pass')")) {
            // echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
            $_POST['username']="";
            $_POST['password']="";        
            $user="";
            $pass="";
        }
        else{
            echo '<SCRIPT> alert("created new user");</SCRIPT>';
        $_POST['username']="";
        $_POST['password']="";
        $user="";
        $pass="";
        }
    }
    echo $template->render(array(//Header
    ));
    
?>