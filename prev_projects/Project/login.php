<?php
    require_once './vendor/autoload.php';
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('login.html');
    $foot = $twig->load('footer.html');

    include_once 'db_include.php';
    
    $user = $_POST['username'];
    $pass = $_POST['password'];
    // Create connection
    if (isset($_POST['username'])){

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
    echo $foot->render(array(//Header

    ));
?>