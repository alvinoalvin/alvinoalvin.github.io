<?php
    //HeadTag
    include_once 'headtag.php';

    require 'db.php';
?>
<div class="main">
    <div class="accountForm">
        <form method="POST" action="include/signup.php" >
            <div class="formHeader">Account Setup</div>
            <div class="inputBox">
                <h2>Account Info</h2><br>
                <label>First Name: </label>
                <input class="input" type="text" required autocomplete="off" name="fname" placeholder="First Name"><br>
                <label>Last Name: </label>
                <input class="input" type="text" required autocomplete="off" name="lname" placeholder="Last Name"><br>
                <label>Email: </label>
                <input class="input" type="email" required autocomplete="off" name="email" placeholder="Enter Email"><br>
                <label>Username: </label>
                <input class="input" type="text" required autocomplete="off" name="uname" placeholder="Create Username"><br>
                <label>Password: </label>
                <input class="input" type="password" required autocomplete="off" name="password" placeholder="Create Password"><br>
                <h2>Mailing Info</h2><br>
                <label>Street Number: </label>
                <input class="input" type="text" required autocomplete="off" name="houseNum" placeholder="Street Number"><br>
                <label>Street: </label>
                <input class="input" type="text" required autocomplete="off" name="Street" placeholder="Street"><br>
                <label>City: </label>
                <input class="input" type="text" required autocomplete="off" name="City" placeholder="City"><br>
                <label>Province: </label>
                <input class="input" type="text" required autocomplete="off" name="Province" placeholder="Province"><br>
                <label>Postal Code: </label>
                <input class="input" type="text" required autocomplete="off" name="PostalCode" placeholder="Postal Code"><br>
<?php?>     </div><!--end input box!-->
            <div class="accountButtonHolder">
                <button type="submit" name="submit">Submit</button>
                <button type="button"><a href="index.php">Home</a></button>
            </div>
        </form>
    </div>
</div>