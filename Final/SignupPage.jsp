<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinuteRecipes - Signup</title>
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

            
                <form action="Signup_Forward.jsp" method="post" class="homepageSignup">
                    <h3>Create Account</h3>
            
                    <label for="username">Username</label>
                    <br>
                    <input type="text" placeholder="Username" name="username" id="username">
                    <br>
                    <label for="username">Email</label>
                    <br>
                    <input type="text" placeholder="Email" name="email" id="email">
                    <br>
                    <label for="password">Password</label><br>
                    <input type="password" placeholder="Password" name="password" id="password">
                    <br>
                    <button class="btn" value="loginProceed">Sign up</button><br>
                    
                    </form>


                </div>
                <form action="LoginPage.jsp" method="post" class="homepageSignup">
                    
                    <div class="social">
                        Already have an account?
                    <button type=Submit class="btn" value="login">Sign in</button><br>
                    
                    </div>
                </form>
                </div>

            </div> 
</section>
    </body>
</html>