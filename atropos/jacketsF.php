<!DOCTYPE html>
<?php
    include_once 'headtag.php';
?>
<body>
    <!-- Database connection!-->
    <?php
        //FOR TWIG
        require_once './vendor/autoload.php';
    
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        
        include_once 'db.php';
        $headerTemp = $twig->load('header.html');
        $contentTemp = $twig->load('tableF.html');
        $footerTemp = $twig->load('footer.html');
        $jackets = array();
        
        // -----------------------------------------FOR TABLE-----------------------------------------
        //call procedure1
        if (!$conn->multi_query("CALL getJackets()")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $jackets[] = $row;
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
                "contArr" => $jackets,
                "subtitle" => "Jackets"
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>
