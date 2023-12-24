<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinuteRecipes - Making Recipe according to your ingredients</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"> 

    <style>
        body {
            font-family: Roboto;
        }
    </style>
</head>

<body>
    <nav class="navbar">
        <ul class="nav-list">
            <div class="logo"><img src="img/logo.jpeg" alt="logo"></div>
            <li> <a href="HomePage.html">
                    <h2> Home</h2>
                </a> </li>
            <li> <a href="#contact">
                    <h2>Contact Us</h2>
                </a> </li>
            <!-- <img src="img/magnify.png" alt="logoacc" class="logoacc"> -->
        </ul>
        <div class="rightNav">
            <!-- <a href="/"><img src="img/magnify.png" alt="logoacc" class="logoacc"></a>
            <input type="text" name="search" id="search">
            <button class="btn btn-sm">Search</button> -->
        </div>
    </nav>

    <section class="background firstSection">
        <div class="box-main">
            <form action="Login_forward.jsp" method="post" class="profile-container ">
                <div>
                    <div class="profile-header">
                        <img src="img/user.png" alt="Profile Picture" class="profile-picture">
                        <div class="profile-info">
                            
                            <h4>User Name : @Not_Void</h4>
                            <br>
                            <p>Email: anujyadav9723.com</p>
                        </div>
                    </div>

                    <!-- <div class="profile-updates">
                        <h2>Update Profile</h2>
                        <br>
                        <form action="/profile" method="post">
                            <label for="newUsername">New Username:</label>
                            <input type="text" id="newUsername" name="newUsername" class="inputr" placeholder="@username">
            
                            <label for="newEmail">New Email:</label>
                            <input type="email" id="newEmail" name="newEmail" class="inputr" placeholder="@Email">
            
                            <button type="submit">Save Changes</button>
                        </form>
                    </div> -->
                </div>


            </form>

            <section class="history">

                <form>
                    <div>
                        <font class="wishlist">
                        
                            <h1> Wishlist </h1>
                        
                        </font>
                    </div>
                </form>

            </section>



        </div>
    </section>
    <footer>
        <div class="foot">
            <center>
                <br>
                <p>&copy; 2023 Minute Recipe. All rights reserved - Team Malevolent </p>

        </div>
        </center>
    </footer>
</body>

</html>