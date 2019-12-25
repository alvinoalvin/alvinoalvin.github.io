<!DOCTYPE html>
<?php
    include_once 'headtag.php';
?>
<body>
<?php

    require_once './vendor/autoload.php';
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    $headerTemp = $twig->load('header.html');
    $contentTemp = $twig->load('textTable.html');
    $footerTemp = $twig->load('footer.html');
    
    if(isset($_POST['submit1'])){
        include 'db.php';
        
        unset($_SESSION["updateResult"]);
    
        $itemType = mysqli_real_escape_string($conn, $_POST['itemType']);
        $itemSize = mysqli_real_escape_string($conn, $_POST['size']);
        $itemColor = mysqli_real_escape_string($conn, $_POST['color']);
        $itemPrice = mysqli_real_escape_string($conn, $_POST['price']);
        $itemGender = mysqli_real_escape_string($conn, $_POST['gender']);
        $type = mysqli_real_escape_string($conn, $_POST['type']);
        //sql variables
        $sizeFunc;
        $colorFunc;
        $priceFunc;
        $typeFunc;
        $genderFunc;
        $queried;
        $subtitle = "Queried";
        
        //size switch
        switch($itemSize){
            case 'any';
                $sizeFunc = "";
                break;
            case 'xs';
                $sizeFunc = " and p.size = 'XS'";
                break;
            case 's';
                $sizeFunc = " and p.size = 'S'";
                break;
            case 'm';
                $sizeFunc = " and p.size = 'M'";
                break;
            case 'l';
                $sizeFunc = " and p.size = 'L'";
                break;
            case 'xl';
                $sizeFunc = " and p.size = 'XL'";
                break;
        }
        //color switch
        switch($itemColor){
            case 'any';
                $colorFunc = "";
                break;
            default;
                $colorFunc = " and p.color like '% $itemColor %'";
        }
        //price switch
        switch($itemPrice){
            case 'any';
                $priceFunc = ' and p.price >= 0';
                break;
            case 'lessThan20';
                $priceFunc = " and p.price < 20";
                break;
            case '20to30':
                $priceFunc = " and p.price between 20 and 30";
                break;
            case '30to40';
                $priceFunc = " and p.price between 30 and 40";
                break;
            case "over40";
                $priceFunc = " and p.price > 40";
                break;
        }
    
        //type switch
        switch($type){
            case 'any';
                $typeFunc = '';
                break;
            default;
                $typeFunc = " and x.type like '%$type%' ";
        }
    
        //gender switch
        switch($itemGender){
            case 'any';
                $genderFunc = '';
                break;
            default;
                $genderFunc = " and p.gender = '$itemGender'";
        }
        $sql =  "SELECT x.type, p.*
        from PRODUCTS p, $itemType x
        where p.ProdID = x.ProdID" . $sizeFunc . 
        $colorFunc . $priceFunc . $typeFunc ;
    
        echo $sql;
    
        $results = mysqli_query($conn, $sql);
    
        if(mysqli_num_rows($results) > 0){
                while($row = mysqli_fetch_assoc($results)){    
                    $queried[] = $row;
                }
                $_SESSION['updateResult'] = $queried[];
        }else{
            $subtitle = "NO RESULTS";
            echo $sql;
            echo 'no results';
        }
    } else {
        header("Location: updatecont.php?query=fail");
        exit();
    }
    
    if(isset($_SESSION['updateResult'])){
        header("Location: updatecont.php?query=itemReturned")
    }
?>
    