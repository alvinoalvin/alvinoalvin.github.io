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
    ?>
    <div class="wrapper"> 
            <!--Header template!-->
        <?php
            include_once 'header.php';
            include_once 'navbar.php';
        ?>
            
        <h2>Frequently Asked Questions</h2>
        <p>
            When will my product(s) arrive?</br>
             - We don't know.</br></br>
            Do you take American Express?</br>
             - We only accept payment in the form of gold coins. Sorry for the inconvience.</br></br>
            They don't have my size, where else can I check?</br>
             - Unfortunately those are the only sizes but we do have a store in Bandle City.
        </p>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
    
</body>
