<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!--Using Less for Styling-->
    <link rel="stylesheet/less" type="text/css" href="a09.less" />
    
    <script src="jquery-3.2.1.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.7.2/less.min.js"></script>
    <script type="text/javascript" src="a09.js"></script>
    <!--<link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">-->
    
    <title>Chatroom</title>
</head>

<body>
    <?php
        session_start();
        //Twig
        require_once './vendor/autoload.php';
    
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        $template = $twig->load('a09.html');
        
        //Database
        $servername = "localhost"; //localhost
        $username = "alvinoalvin";//alvinoalvin  
        $password = "SkateBoard";//
        $database = "alvinchatroom";//pokedex
        $msgarr = array();
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $database);
    
         // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 

        //call query
        if (!$conn->multi_query("CALL Operation1('0000-00-00 00:00:00')")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $msgarr[] = $row;
            }
        }
        $conn->close();
        $logged = "null";
        if(!isset($_SESSION['user'])){
            $_SESSION['user'] = $_POST['Username'];
        }
        else{
            echo "Welcome ".$_SESSION['user'];
            $logged = $_SESSION['user'];
        }
        echo $template->render(array('messages' => $msgarr,
        'logged' => $logged
        ));
    ?>
</body>