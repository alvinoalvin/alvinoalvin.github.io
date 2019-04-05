<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('Contact.html');
    $foot = $twig->load('footer.html');
   
// mail('alvinoalvin123@gmail.com', 'My Subject', "asdfasdf");

    echo $template->render(array(//Header
                                'week' => array(
                                    'Monday: ' => "9am - 4pm",
                                    'Tuesday: ' => "9am - 4pm",
                                    'Wendsday: ' => "9am - 4pm",
                                    'Thursday: ' => "9am - 4pm",
                                    'Friday: ' => "9am - 4pm",
                                    'Saturday: ' => "9am - 4pm",
                                    'Sunday: ' => "9am - 4pm",
                                ),
                                'phonenum' => "454 848 4546",
                                'email' => 'kingsRanch@gmail.com',
                                'address' => "4561 Kings ave, Kings Landing, Seven Kingdoms" ,
                                'week' => array(
                                    'Monday: ' => "9am - 4pm",
                                    'Tuesday: ' => "9am - 4pm",
                                    'Wendsday: ' => "9am - 4pm",
                                    'Thursday: ' => "9am - 4pm",
                                    'Friday: ' => "9am - 4pm",
                                    'Saturday: ' => "9am - 4pm",
                                    'Sunday: ' => "9am - 4pm",
                                ),
    ));
    echo $foot->render(array(//Header

    ));
?>