<!DOCTYPE html>
<?php
    include_once 'headtag.php';
?>
</head>
<body>
    <!-- Database connection!-->
    <?php
        //FOR TWIG
        require_once './vendor/autoload.php';
     
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        include_once 'db.php';
        $headerTemp = $twig->load('header.html');
        $contentTemp = $twig->load('invoice.html');
        $footerTemp = $twig->load('footer.html');
        $user = $_SESSION["u_uid"];
        $address = array();
        $cart = array();
        
        $sum = $_SESSION["total"];
        
        // -----------------------------------------FOR TABLE-----------------------------------------
        //call procedure1
       if (!$conn->multi_query("INSERT INTO `INVOICE`(`Username`, `Total`) VALUES ('$user', '$sum')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
            $mess = "invoice has failed to generate";
        }
        else{
            $total = $sum;
        }
        
        // close connection
        $conn->close();
        
                //call procedure2
        $conn2 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn2){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn2->multi_query("CALL getAddress('$user')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn2->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $address[] = $row;
            }
        }       
        
        // close connection
        $conn2->close();

        //call procedure3
        $conn3 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn3){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn3->multi_query("CALL getCart('$user')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn3->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $cart[] = $row;
            }
        }
        // close connection

        $conn3->close();
        
    ?>
    <div class="wrapper"> 
            <!--Header template!-->
        <?php
            include_once 'header.php';
            include_once 'navbar.php';
        ?>
            <!--content template-->
        <?php
            echo $contentTemp->render(array(
                "total" => $total,
                "subtitle" => "INVOICE!",
                "address" => $address,
                "date" => gmdate("l jS \of F Y h:i:s A"),
                "contArr"=> $cart
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>
