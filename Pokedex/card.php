<!DOCTYPE html>
<head>
    <!--Using Less for Styling-->
    <link rel="stylesheet/less" type="text/css" href="less.php" />
    <script src="less.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="pokescript.js"></script>
    <link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
    <link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
    <title>The cards</title>
</head>
<body>
    <?php
        require_once './vendor/autoload.php';
        
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        $template = $twig->load('a06.card.html');
        
        $servername = "localhost"; //localhost
        $username = "alvinoalvin";//alvinoalvin  
        $password = "SkateBoard";//
        $database = "pokebase";//pokedex
        $pokearr = array();
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $database);
    
         // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 
        $PID = $_GET['ID'];
        //call query
        if (!$conn->multi_query("CALL part2($PID)")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $pokearr[] = $row;
            }
        }
        
        echo $template->render(array('logo' => 'imgs/logo.png', 
                                    'offical' => 'imgs/official.svg.png',
                                    'poke_title' => 'Pokemon Name',
                                     'sub'=> 'Another Pokemon',
                                     'description' =>"This is the coolest pokemon until you click another link",
                                     'menulist' => array("Main Menu"=>'index.php',
                                                         'Lets Google' => "http://www.google.com/search?as_q=".$pokearr[0][1],
                                                         'Pokemon Official' =>'https://www.pokemon.com/us/'),
                                     'pokearr' => $pokearr,
                                     'copyright'=> '@copyright MONKEYS ALL OF THEM',
                                     'copydate'=> '12/616/2017'
                                    ));
        /* close connection */
        $conn->close();
    ?>
</body>