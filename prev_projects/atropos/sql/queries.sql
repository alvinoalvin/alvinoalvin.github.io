<!--query for the query bar.  relies on query2.php form handler page.
        SELECT x.type, p.*
        from PRODUCTS p, $itemType x
        where p.ProdID = x.ProdID" . $sizeFunc . 
        $colorFunc . $priceFunc . $typeFunc
        
<!-- query to check the database for a user, relies on login.php handler page
        SELECT * 
        FROM USER 
        WHERE Username = '$user' OR user_email = '$user'
        
<!--inserts the user into the database, relies on signup.php handler page
        INSERT INTO USER(user_first, user_last, user_email, Username, PASSWORD) VALUES ('$first', '$last', '$email', '$uname', '$hashpwd')
        
<!--inserts the user's mailing information into the database, relies on signup.php handler page
        INSERT INTO ADDRESS(HouseNum, Street, City, Province) VALUES ($houseNum, '$street', '$city', '$province')
        
<!--inserts the user's information into the customer relation of the database, relies on signup.php handler page
        INSERT INTO CUSTOMER(Username, HouseNum, Postal_CODE) VALUES ('$uname', $houseNum, '$postalCode')
        
        