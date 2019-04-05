<?php

    require_once './vendor/autoload.php';
    
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);

    $template = $twig->load('a06.card.html');
    $type = $_GET['Type'];//doesnt work idky
    
    $template = $twig->load('a06.less');
    
    $bg = "darkred";
    
    if ($type == 'GRASS') {
        $bg = "green";
    }
    else if ($type == 'FIRE') {
        $bg = "red";
    }
    echo $template->render(array(
                                // Header
                                'headerBg' => $bg,
                                'headerFont'=> "font/Northwood\ High.ttf",//"font/Pokemon\ Solid.ttf"
                                'headerFontColor' => "lightgray",
                                'headerFontSize' => "60px",
                                'headMenuHover' => "#FF6666",
                                'headMenu'=>"white",
                                // Basically everything else
                                'bodybg' => '#4621eb',
                                'bodybgimg' => "imgs/wallpaper.jpg",
                                'themeFont'=> "font/Northwood\ High.ttf",//font/Northwood\ High.ttf
                                'themeFontSize' => "20px",
                                'tableCardColor' =>"#FF6666"
    ));

?>