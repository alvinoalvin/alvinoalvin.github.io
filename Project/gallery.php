<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('gallery.html');
    $foot = $twig->load('footer.html');

    
    include_once 'db_include.php';
    $pics = array();

    //call query
    if (!$conn->multi_query("Call q2()")) {
        echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }
    $result =$conn->store_result();
     //PRINT RESULT
    if (mysqli_num_rows($result) > 0) {
    //output data of each row
        while($row = mysqli_fetch_array($result)) {
          $pics[] = $row;
        }
    }

    echo $template->render(array(//Header
        'pics' => $pics
    ));
    echo $foot->render(array(//Header

    ));
?>