<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('aboutUs.html');
    $foot = $twig->load('footer.html');
    

    
    echo $template->render(array(//Header
                                // intro
                                'mission' => "To provide reliable and complete customer satisfaction to our of our customers while keeping our horses healthy, stong and happy!",
                                'intros' => array(
                                    "Welcome to kingsranch.com, the capital's most trusted website for selling and buying horses. No matter when you need the horse or where you need the horse we will deliver to you without a problem. Are you not sure about what kind of horse to get? Well, don't worry we have the horse for you!",
                                    "Having been founded 200 years ago and being passed down from generation to generation of ranchers, King’s ranch promises to provide you with the best service as well as the best horses in the city. Being located just outside the Red Keep and having served the nobility for generations there's nowhere better to purchase your first horse!",
                                    "Throughout the past two centuries, we’ve started doing some research into horse breeding and have bred the best racehorses, jousting horses and even the best cuddling horses. We hold the title of King’s horses, the jousting pony award, the racing devil award, and have gotten first place for the best horse cuddles 20 years in a row!"
                                )
    ));
    echo $foot->render(array(//Header

    ));
?>