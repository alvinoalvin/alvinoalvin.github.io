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
        
        $newHnum = $_GET['newHouse'];
        $oldHnum = $_GET['oldHnum'];
        $st = $_GET['street'];
        $city = $_GET['city'];
        $prov = $_GET['prov'];
        
        // -----------------------------------------FOR TABLE-----------------------------------------
        // call procedure 2
        if (!$conn->multi_query("UPDATE `ADDRESS` SET `HouseNum`=$newHnum,`Street`= '$st',`City`='$city',`Province`='$prov' WHERE HouseNum = $oldHnum")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
            $result = "Address has failed to be updated are you sure this old house number exists?";
        }
        else{
            $result = "Address has been updated.";
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
                "subtitle" => "Update"
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>
