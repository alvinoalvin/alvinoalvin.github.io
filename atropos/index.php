<!DOCTYPE html>
<?php
    include_once 'headtag.php';
?>
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
            include_once 'header.php';
            include_once 'navbar.php';
        ?>
        <!--Query Box!-->
        <div class="queryBar">
            <form action="query2.php" method="post">
                <label>Item Type: </label>
                <select name="itemType">
                    <option value="SHIRTS">Shirts</option>
                    <option value="PANTS">Pants</option>
                    <option value="JACKETS">Jackets</option>
                </select>
                <label>Size: </label>
                <select name="size">
                    <option value="any">Any</option>
                    <option value="xs">XS</option>
                    <option value="s">S</option>
                    <option value="m">M</option>
                    <option value="l">L</option>
                    <option value="xl">XL</option>
                </select>
                <label>Color: </label>
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
                <label>Price: </label>
                <select name="price">
                    <option value="any">Any</option>
                    <option value="lessThan20">Less Than $20</option>
                    <option value="20to30">$20 - $30</option>
                    <option value="30to40">$30 - $40</option>
                    <option value="over40">$40+</option>
                </select>
                <label>Style: </label>
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
                <label>Gender: </label>
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
