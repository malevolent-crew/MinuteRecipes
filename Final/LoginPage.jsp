<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinuteRecipes - Login</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
        font-family: courier, serif;
        }
    </style>
</head>
<body>
    <nav class="navbar background">
        <ul class="nav-list">
        </ul>
        <div class="rightNav">
            <!--<input type=""text" name="search" id="search">
            <button class="btn btn-sm">Search</button>-->
        </div>
     </nav>

    <section class="background firstSection">
        <div class="box-main">
            <div class="firsthalf">
                <p class="text-small"></p>
                <br>
            <div class="buttons">
            
            



                <form action="Login_forward.jsp" method="post" class="homepageSignup">
                    <h3>Login Here</h3>

                    <label for="username">Email</label>
                    <br>
                    <input type="text" placeholder="Email" name="email" id="username">
                    <br>
                    <label for="password">Password</label><br>
                    <input type="password" placeholder="Password" name="password" id="password">
                    <br>
                    <button class="btn" value="loginProceed" type=Submit>Log In</button><br>


                </form>


                </div>
                <form action="Sign_up" method="post" class="homepageSignup">
                    <div class="social">


                    <button type=Submit class="btn" value="Signup">Create Account</button><br>
                    </div>
                </form>
				
				</div>

            </div>
    </section>
    </body>
</html>