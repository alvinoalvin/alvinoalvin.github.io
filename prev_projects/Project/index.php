<?php
    require_once './vendor/autoload.php';

    $loader = new Twig_Loader_Filesystem('./templates');
    $twig = new Twig_Environment($loader);
    include_once 'templates/header.php';
    $template = $twig->load('home.html');
    $foot = $twig->load('footer.html');
    
    include_once 'db_include.php';
    
    $user = $_POST['username'];
    $pass = $_POST['password'];
    
    if (!isset($_SESSION['user'])){
        $count = 0;
        
        //call query
        if (!$conn->multi_query("CALL getUser('$user','$pass')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
            echo $user . $pass;
        }
        $result =$conn->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
            $_SESSION['user'] = $user;
            $_SESSION['pass'] = $pass;
        }

    }
    echo $template->render(array(//Header

                                // intro
                                'intros' => array(
                                    "Welcome to kingsranch.com, the capital's most trusted website for selling and buying horses. No matter when you need the horse or where you need the horse we will deliver to you without a problem. Are you not sure about what kind of horse to get? Well, don't worry we have the horse for you!",
                                    "Having been founded 200 years ago and being passed down from generation to generation of ranchers, King’s ranch promises to provide you with the best service as well as the best horses in the city. Being located just outside the Red Keep and having served the nobility for generations there's nowhere better to purchase your first horse!",
                                    "Throughout the past two centuries, we’ve started doing some research into horse breeding and have bred the best racehorses, jousting horses and even the best cuddling horses. We hold the title of King’s horses, the jousting pony award, the racing devil award, and have gotten first place for the best horse cuddles 20 years in a row!"
                                ),
                                // contact
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
                                'mapIMG'=> 'imgs/map.JPG',
    ));
    echo $foot->render(array(//Header
    
    ));
?>