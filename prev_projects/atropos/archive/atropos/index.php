<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet/less" type="text/css" href="style.less">
    <script src="less.js" type="text/javascript" defer></script>
    <script src="js/java.js" type="text/javascript" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Atropos Clothing</title>
</head>
<body>
    <!-- Database connection!-->
    <?php
        $servername = "localhost";
        $username = "TonyHawk";
        $password = "SkateBoard";
        $dbname = "atropos";
        $conn = mysqli_connect($servername, $username, $password, $dbname);
    
        if(!$conn){
            die("Connection failed: " . mysqli_connect_error());
        }
    
        require_once './vendor/autoload.php';
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
    
        $headerTemp = $twig->load('header.html');
        $footerTemp = $twig->load('footer.html');
        $photoTemp = $twig->load('photoslide.html');
    ?>
    <div class="wrapper"> 
    
            <!--Header template!-->
        <?php
            echo $headerTemp->render(array(
            ));
        ?>
        
            <!--content template-->
        <?php
            echo $photoTemp->render(array());
        ?>
        
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>
