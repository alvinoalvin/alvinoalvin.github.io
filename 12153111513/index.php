<!DOCTYPE html>
<head>
    <!--Using Less for Styling-->
    <link rel="stylesheet/less" type="text/css" href="a06less.php" />
    <script src="less.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
    <link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
    <title>12153111513</title>
</head>
<body>
    <?php
        require_once './vendor/autoload.php';
        
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        $template = $twig->load('index.html');
        
        $servername = "localhost"; //localhost
        $username = "alvinoalvin";//alvin   oalvin  
        $password = "SkateBoard";//
        $database = "studentcrime";//pokedex
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $database);
    
         // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 
 
        $fname = $_GET['FNAME'];
        $lname = $_GET['LNAME'];
        $pnum =  $_GET['pnum'];
        
        // *************************************************************************TABLE*************************************************************************
        if (!$conn->multi_query("CALL fetch_table()")) {
            echo "CALL failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn->store_result();
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $tableArr[] = $row;
            }
        }
        
        $conn->close();

        //*************************************************************************PAGE*************************************************************************
        $conn2 = new mysqli($servername, $username, $password, $database);
        if ($conn2->connect_error) {
            die("Connection failed: " . $conn2->connect_error);
        } 
        
        
        //call detailedInfo
        if (!$conn2->multi_query("CALL fetch_criminal('$fname','$lname')")) {
            echo "CALL failed 2: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn2->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $crim[] = $row;
            }
        }
        /* close connection */
        $conn2->close();
        
        $numpages = $crim[0]['numpages'];
        //*************************************************************************CRIMINALS*************************************************************************
        $conn3 = new mysqli($servername, $username, $password, $database);
    
         // Check connection
        if ($conn3->connect_error) {
            die("Connection failed: " . $conn3->connect_error);
        } 
        //CRIMINALS
        if (!$conn3->multi_query("CALL fecth_page('$fname','$lname',$pnum)")) {
            // echo "CALL failed 3: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn3->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $page[] = $row;
            }
        }
        $conn3->close();        

        echo $template->render(array('table' => $tableArr,
                                     'crim' => $crim,
                                     'page' => $page,
                                     'currFN' => $fname,
                                     'currLN' => $lname,
                                     'pagenum' => $numpages,
                                    ));
        /* close connection */
        $conn3->close();
    ?>
</body>