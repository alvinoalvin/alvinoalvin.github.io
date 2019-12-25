<?php
    require_once './vendor/autoload.php';
    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('signup.html');
    $foot = $twig->load('footer.html');

    echo $template->render(array(//Header
    ));
    echo $foot->render(array(//Header

    ));
?>