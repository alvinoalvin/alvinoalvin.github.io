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
        include_once 'db.php';
    
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
        <!--Query Box!-->
        <div class="queryBar">
            <form action="query.php" method="post">
                    <select name="itemType">
                    <option value="shirts">Shirts</option>
                    <option value="pants">Pants</option>
                    <option value="jackets">Jackets</option>
                </select>
                <select name="size">
                    <option value="any">Any</option>
                    <option value="xs">XS</option>
                    <option value="s">S</option>
                    <option value="m">M</option>
                    <option value="l">L</option>
                    <option value="xl">XL</option>
                </select>
                <select name="color">
                    <option value="any">Any</option>
                    <option value="black">Black</option>
                    <option value="white">White</option>
                    <option value="red">Red</option>
                    <option value="green">Green</option>
                    <option value="blue">Blue</option>
                    <option value="yellow">Yellow</option>
                    <option value="orange">Orange</option>
                    <option value="grey">Grey</option>
                </select>
                <select name="price">
                    <option value="any">Any</option>
                    <option value="lessThan20">Less Than $20</option>
                    <option value="20to30">$20 - $30</option>
                    <option value="30to40">$30 - $40</option>
                    <option value="over40">$40+</option>
                </select>
                <select name="type">
                    <option value="any">Any</option>
                    <option value="hoody">Hoody</option>
                    <option value="downjacket">Down Jacket</option>
                    <option value="bomber">Bomber</option>
                    <option value="parka">Parka</option>
                    <option value="windbreaker">Wind Breaker</option>

                    <option value="joggers">Joggers</option>
                    <option value="jeans">Jeans</option>
                    <option value="dresspants">Dress Pants</option>
                    <option value="cargoshorts">Cargo Shorts</option>
                    <option value="boardshorts">Board Shorts</option>

                    <option value="dress shirt">Dress Shirt</option>
                    <option value="vneck">V-Neck</option>
                    <option value="dryfit">Dry-fit</option>
                    <option value="longsleeve">Longsleeve</option>
                    <option value="sweater">Sweater</option>
                    <option value="flannel">Flannel</option>
                </select>
                <select name="gender">
                    <option value="M">M</option>
                    <option value="F">F</option>
                </select>
                <button type="submit" name="submit">Query</button>
            </form>
        </div>
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
