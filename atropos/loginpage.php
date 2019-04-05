<?php
    //HeadTag
    include_once 'headtag.php';

    require 'db.php';
?>

<div class="logInContainer">
    <div class="logInPageBox">
        <form action="include/login.php" method="POST" autocomplete="off">
            <div class="logHead">Log In</div>
            <div class="inputBox">
                Username/Email<br>
                <input class="input" type="text" required autocomplete="off" name="uid" placeholder="Email/Username"><br>
                Password<br>
                <input class="input" type="password" required autocomplete="off" name="password" placeholder="Password">
            </div>
            <div class="buttonHolder">
                <button type="submit" name="submit">Sign In</button>
                <button type="button"><a href="signuppage.php">Sign Up</a></button>
            </div>

        </form>
    </div>
</div>