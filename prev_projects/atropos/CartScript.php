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
        
        //templates
        include_once 'db.php';
        $headerTemp = $twig->load('header.html');
        $contentTemp = $twig->load('wishListScript.html');
        $footerTemp = $twig->load('footer.html');

        $id = $_GET["ID"];
        $Type = $_GET["Name"];
        $length =array() ;
        $result = "$Type has been added to cart.";
        $username = "send";
        $username = $_SESSION['u_uid'];
        // -----------------------------------------FOR TABLE-----------------------------------------
        // // // call procedure 2
        if (!$conn->multi_query("INSERT INTO `SHOPPINGCART`(`Username`, `ProdID`) VALUES ('$username', '$id')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
             $result = "$Type has failed to be added to cart.";
        }
        else{
            $result = "$Type has been added to cart.";
        }
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
                "message" => $result,
                "subtitle" => "In cart!"
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
    </div><!-- End of Wrapper!-->
</body>
