<!DOCTYPE html>
<head>
    <!--Using Less for Styling-->
    <link rel="stylesheet/less" type="text/css" href="templates/home.less" />
    <script src="less.min.js" type="text/javascript" defer></script>

    <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/toggle.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/shopCart.js"></script>

    <link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
    <link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>King's Ranch</title>
    <?php
        session_start(); 
    ?>
</head>
<body>

    <header>
        <!--Start: cont1-->
        <div class="cont1">
            <img src="imgs/horseHead.gif" id="tbAnimated">
            <div class="col1">
                <h2>
                    <?php
                        if(isset($_SESSION['user'])){
                            echo  "Hello ". $_SESSION['user'];
                            echo '<br><a href="logout.php"><button>logout</button></a>';
                        }
                    ?>
                </h2>
            </div>
            <!--Start: col2-->
            <div class="title">
                <h1><a href="index.php">King's Ranch</a></h1>
            </div>
            <!--End: col2-->
            <!--Start:col3-->
            <div class="col3"> 
                <div class="notification"><br><button class="dismiss">dismiss</button></div>
                <img src="imgs/toggleslide.png"></img>
            </div>
            <!--End: col3-->
        </div>
        <!--End: cont1-->
        <!-- Start: Menu -->
        <div class="menu">
                <div class = "menuitem" id = "nav1"><a href="aboutUs.php">About Us</a></div>
                <div class = "menuitem" id = "nav2">
                        <div class="nav2.1"><a href="mainCat.php">Buy a Horse</a></div>
                        <div class="catDrop">
                            <div class="dropNav"><a href="catalogue.php?Type=%27SHOW%27">Show Horse</a></div>
                            <div class="dropNav"><a href="catalogue.php?Type=%27WAR%27">War Horse</a></div>
                            <div class="dropNav"><a href="catalogue.php?Type=%27WORK%27">Work Horse</a></div>
                            <div class="dropNav"><a href="catalogue.php?Type=%27CARRIAGE%27">Carriage Horse</a></div>
                        </div>
                </div>
                <div class = "menuitem" id = "nav3"><a href="gallery.php">Gallery</a></div>
                <div class = "menuitem" id = "nav4"><a href="Contact.php">Contact Us</a></div>
                <div class = "menuitem" id = "nav5"><a href="shopCart.php">Shopping Cart</a></div>
                <div class = "menuitem" id = "nav6"><a href="login.php">Login</a></div>
        </div>
        <!-- End: Menu -->
    </header>