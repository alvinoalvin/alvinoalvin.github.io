<div class="header">
    <div class="logoBox">
        <div class="logo">
            <a href="index.php"><img src="img/logo.png"><span class="company">tropos</span></a>
        </div>
    </div>
    
    <!--Start: Login Mitch please take care of this-->
    <div class="login">
    <?php if(isset($_SESSION['u_id'])){
                echo '<h3> Hello ' . $_SESSION['u_first'] . "  " . $_SESSION['u_last'] . '</h3>';
            }
    ?>
    <?php
        if(isset($_SESSION['u_id'])){
            echo    '<div class="headerLogInBox">
                        <form action="include/logout.php" method="POST">
                        <div class="buttonHolder">
                        <button type="submit" name="submits">logOut</button>
                        </div>
                        </form>
                    </div>';
        } else {
            echo    '<div class="headerLogInBox">
                        <form autocomplete="off">
                            <div class="buttonHolder">
                                <button><a href="loginpage.php">SignIn</a></button>
                            </div>
                        </form>
                    </div>';
        }
    ?>
    <?php
    
        $user = $_SESSION['u_uid'];
        if(isset($_SESSION['u_uid'])){
            if($user = 'user'){
                echo '<h3 class="ms5"><a href="Milestone5.php">Milestone 5</h3>';
            }
        }
    ?>
    
    </div>
    
</div>