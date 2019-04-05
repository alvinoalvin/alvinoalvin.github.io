<?php
    session_start();
    require_once './vendor/autoload.php';
    
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('catalogue.html');
    $foot = $twig->load('footer.html');
    
    include_once 'db_include.php';
    $horsearr = array();
    
    $TYPE = $_GET['Type'];
    //call query
    if (!$conn->multi_query("CALL q1($TYPE)")) {
        echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }
    $result =$conn->store_result();
     //PRINT RESULT
    if (mysqli_num_rows($result) > 0) {
    //output data of each row
        while($row = mysqli_fetch_array($result)) {
          $horsearr[] = $row;
        }
    }
    
    echo $template->render(array(
                                'type' =>$TYPE,
                                'horsearr' => $horsearr
    ));
    /* close connection */
    $conn->close();
    echo $foot->render(array(//Header

    ));
?>