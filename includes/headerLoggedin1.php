<script type="text/javascript" src="../scripts/jquery-1.11.3.js"></script>
<script type="text/javascript" src="../scripts/notAvailable.js"></script>

<header id="header">
            <div id="container">
                <a href="../home" class="logo">
                    <img src="../images/yunga logo.gif" alt="Yunga" height="60" width="142">
                </a>
                <ul id="mainmenu">
                    
                    <li class="dashMenu" >
                        <a href="../dashboard" >
                            
                            DASH BOARD
                        </a>
                    </li>
					<li class="dashMenu" id="notAvailable" >
                        <a href="" >
                            
                            Yunga Circle
                        </a>
                    </li>
                    <li class="dashMenu" id="notAvailable">
                        <a href="addlocation.html">
                            <i class="fa fa-map-marker"></i>
                            Location Management
                        </a>
                    </li>
                    
					<li class="dashMenu" id="notAvailableRedirecting">
                        <a href="">
                            
                            Advertise
                        </a>
                    </li>

                    <li class="dashMenu" id="logoutMan">
						HELLO :
                        <?php 
							echo htmlentities($_SESSION['username']);
						?>
                        <a href="../includes/logout.php">
                            <i class="fa fa-sign-out"></i>
                            LOG OUT
                        </a>
                    </li>
                    
                </ul>

            </div>
        </header>


