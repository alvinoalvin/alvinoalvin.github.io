<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('mainCat.html');
    $foot = $twig->load('footer.html');


    echo $template->render(array(//Header
                                'title' => "King's Ranch", 
                                'pagemenu' => "imgs/toggleslide.png",
                                'description' => "Our top of the line horses will keep you satisfied with your journey",
                                'menulist' => array(
                                    "About Us" => "aboutUs.php",
                                    "Catalogue" => "mainCat.php",//will use dropdowns
                                    "Gallery" => "gallery.php",
                                    "Contact Us" =>"Contact.php"
                                )
    ));
    echo $foot->render(array(//Header

    ));
?>