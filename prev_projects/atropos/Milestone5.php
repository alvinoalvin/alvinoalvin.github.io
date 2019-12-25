<!DOCTYPE html>

<?php
    include_once 'headtag.php';
?>

<body>
    <!-- Database connection!-->
    <?php
        //FOR TWIG
        require_once './vendor/autoload.php';
     
        $loader = new Twig_Loader_Filesystem('./templates');
        $twig = new Twig_Environment($loader);
        include_once 'db.php';
        $headerTemp = $twig->load('header.html');
        $contentTemp = $twig->load('Milestone5.html');
        $footerTemp = $twig->load('footer.html');
        
        //FOR DATABASE
        $q1 = "SELECT * FROM CUSTOMER";
        $q2 = "SELECT * FROM PRODUCTS WHERE Price = 0";
        $q3 = "SELECT PRODUCTS.Color, PRODUCTS.Size, PRODUCTS.Quantity, PRODUCTS.Price, JACKETS.Type FROM PRODUCTS INNER JOIN JACKETS ON PRODUCTS.ProdID = JACKETS.ProdID";
        $q4 = "SELECT * FROM SHOPPINGCART";
        $q5 = "SELECT MIN(PRICE) AS Min FROM PRODUCTS";
        $q6 = "SELECT MAX(PRICE) AS MAX FROM PRODUCTS";
        $q7 = "SELECT ProdID, Price FROM PRODUCTS WHERE PRICE = (SELECT MAX(Price) From PRODUCTS) GROUP BY Price";
        $q8 = "SELECT * FROM PRODUCTS";
        $q9 = "SELECT * FROM ADDRESS";
        
        // -----------------------------------------FOR TABLE-----------------------------------------
          //call Projection Query
        $conn1 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn1){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn1->multi_query($q1)) {
            echo "CALL1 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn1->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods1[] = $row;
            }
        }        
        // close connection
        $conn1->close();
        
        
        //call Selection Query
        $conn2 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn2){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn2->multi_query($q2)) {
            echo "CALL2 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn2->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods2[] = $row;
            }
        }        
        // close connection
        $conn2->close();
        
        //call Join Query
        $conn3 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn3){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn3->multi_query($q3)) {
            echo "CALL3 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn3->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods3[] = $row;
            }
        }        
        // close connection
        $conn3->close();
        
        //call Division
        $conn4 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn4){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn4->multi_query("$q4")) {
            echo "CALL4 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn4->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods4[] = $row;
            }
        }        
        // close connection
        $conn4->close();
        
        //call Aggregation
        $conn5 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn5){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn5->multi_query($q5)) {
            echo "CALL5 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn5->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods5[] = $row;
            }
        }        
        // close connection
        $conn5->close();
        
        //call Aggregation 2
        $conn6 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn6){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn6->multi_query($q6)) {
            echo "CALL5 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn6->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods6[] = $row;
            }
        }        
        // close connection
        $conn6->close();
        
        //call Nested Aggregation
        $conn7 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn7){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn7->multi_query($q7)) {
            echo "CALL7 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn7->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods7[] = $row;
            }
        }        
        // close connection
        $conn7->close();
        
        //call DISPLAY PRODUCTS
        $conn8 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn8){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn8->multi_query($q8)) {
            echo "CALL8 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn8->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods8[] = $row;
            }
        }        
        // close connection
        $conn8->close();
        
        //call DISPLAY ADDRESS
        $conn9 = mysqli_connect($servername, $username, $password, $dbname);

        if(!$conn9){
            die("Connection failed: " . mysqli_connect_error());
        }
        if (!$conn9->multi_query($q9)) {
            echo "CALL9 failed: (" . $mysqli->errno . ") " . $mysqli->error;
        }
        $result =$conn9->store_result();
         //PRINT RESULT
        if (mysqli_num_rows($result) > 0) {
        //output data of each row
            while($row = mysqli_fetch_array($result)) {
              $prods9[] = $row;
            }
        }        
        // close connection
        $conn9->close();
    ?>
    <div class="wrapper"> 
            <!--Header template!-->
        <?php
            include_once 'header.php';
            include_once 'navbar.php';
        ?>
            <!--content template-->
        <?php
            echo $contentTemp->render(array(
                "sql1" => 'SELECT "$table" FROM CUSTOMER',
                "sql2" => 'SELECT * FROM PRODUCTS WHERE Price = $table',
                "sql3" => 'SELECT PRODUCTS.Color, PRODUCTS.Size, PRODUCTS.Quantity, PRODUCTS.Price, $table.Type FROM PRODUCTS INNER JOIN $table ON PRODUCTS.ProdID = $table.ProdID',
                "sql4" => 'SELECT DISTINCT Username
                                FROM SHOPPINGCART S
                                WHERE NOT EXISTS
                                (SELECT ProdID From PRODUCTS P 
                                	WHERE NOT EXISTS
                                 	(SELECT ProdID From $table T WHERE P.ProdID = T.ProdID AND P.ProdID = S.ProdID))',
                "sql5" => $q5,
                "sql6" => $q6,
                "sql7" => $q7,
                "sql8" => 'DELETE FROM `PRODUCTS` WHERE PRODUCTS.ProdID = $id',
                "sql9" => 'UPDATE `ADDRESS` SET `HouseNum`=$newHnum,`Street`=$st,`City`=$city,`Province`=$prov WHERE HouseNum = $oldHnum',
                "q1" => $prods1,
                "q2" => $prods2,
                "q3" => $prods3,
                "q4" => $prods4,
                "q5" => $prods5,
                "q6" => $prods6,
                "q7" => $prods7,
                "q8" => $prods8,
                "q9" => $prods9,
                "subtitle" => "Milestone5"
            ));
        ?>
            <!--footer template-->
        <?php
            echo $footerTemp->render(array(
            ));
        ?>
        
    </div><!-- End of Wrapper!-->
</body>