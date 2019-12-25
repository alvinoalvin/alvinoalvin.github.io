<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('shopCart.html');
    $foot = $twig->load('footer.html');

    
    include_once 'db_include.php';
    
    $cart = array();
    $user = $_SESSION['user'];
 
    //call query
    if (!$conn->multi_query("CALL getCart('$user')")) {
        echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
    }
    $result =$conn->store_result();
     //PRINT RESULT
    if (mysqli_num_rows($result) > 0) {
    //output data of each row
        while($row = mysqli_fetch_array($result)) {
          $cart[] = $row;
        }
    }
    $sum=0; 
    foreach($cart as &$row){
        $sum += $row[7];
    }
    $sum = "Total: $".$sum;
    if(!isset($_SESSION['user'])){
        $sum = "Please log in to access shopping cart";
    }
    echo $template->render(array(//Header
        'cart' => $cart,
        'total' => $sum
    ));
    echo $foot->render(array(//Header

    ));
    $conn->close();
?>