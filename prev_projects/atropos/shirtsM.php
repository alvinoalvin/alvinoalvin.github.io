<!DOCTYPE html>
<?php
    include_once 'headtag.php';
?>
    <!-- Database connection!-->
<body>
    <?php
        include_once 'db.php';
        //FOR TWIG
        require_once './vendor/autoload.php';
     
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        
        $headerTemp = $twig->load('header.html');
        $contentTemp = $twig->load('tableM.html');
        $footerTemp = $twig->load('footer.html');

        $shirts = array();
        
        // -----------------------------------------FOR TABLE-----------------------------------------
    
        //call procedure1
        if (!$conn->multi_query("CALL getShirts()")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $shirts[] = $row;
            }
        }        
        // close connection
        $conn->close();
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
                "contArr" => $shirts,
                "subtitle" => "Shirts"
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>
