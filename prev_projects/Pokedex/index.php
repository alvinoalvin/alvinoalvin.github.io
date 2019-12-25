<!DOCTYPE html>
    <head>
        <!--Using Less for Styling-->
        <link rel="stylesheet/less" type="text/css" href="less.php" />
        <script type="text/javascript" src="pokescript.js"></script>
        <script src="less.min.js"></script>
        <!--favicon-->
        <link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
        <link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
        <title>The dex</title>
    </head>
    <body>
        <?php
            require_once './vendor/autoload.php';
        
            $loader = new Twig_Loader_Filesystem('./templates');
            $twig = new Twig_Environment($loader);
            $template = $twig->load('a06.dex.html');
            
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
            
            //call query
            if (!$conn->multi_query("CALL part1()")) {
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
                                         'sub'=> 'Kanto Pokedex',
                                         'menulist' => array("MonkaS 1"=>'card.php?ID=59',
                                                             'MonkaS 2' => 'card.php?ID=149',
                                                             'MonkaS 3' =>'card.php?ID=125',
                                                             'MonkaS 4' => 'card.php?ID=56',
                                                             'MonkaS 5' => 'card.php?ID=57'),
                                         'pokearr' => $pokearr,
                                         'copyright'=> '@copyright.asdfasdf',
                                         'copydate'=> '12/54/2017'
                                        ));
            /* close connection */
            $conn->close();
        ?>
    </body>