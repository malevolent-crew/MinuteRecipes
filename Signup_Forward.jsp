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
    <nav class="navbar">
        <ul class="nav-list">
        <div class="logo"><img src="img/logo.jpeg" alt="logo"></div>
           <li> <a href="#home"><h2> Home</h2></a> </li>
           <li> <a href="#contact"><h2>Contact Us</h2></a> </li>
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

            <%! String message; %>

            <%
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/minute_recipe", "root", "toor");

                    String name = request.getParameter("username");
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");

                    PreparedStatement ps = connection.prepareStatement("select email from login_info where email=?");
                    ps.setString(1, email);
                    //ps.setString(2, password);
                    ResultSet rs = ps.executeQuery();

                    if(rs.next()){
                    	message = "Account already exist Please Login!!!";
                    }

                    else{
                    	PreparedStatement ps2 = connection.prepareStatement("insert into login_info values (?, ?, ?)");
                    	ps2.setString(1, name);
                    	ps2.setString(2, email);
                    	ps2.setString(3, password);

                    	Boolean rs2 = ps2.execute();

                    	if (rs2 == Boolean.FALSE){
                    		message = "Account created Please Login!!!";
                    	}
                    	else {
                    		out.println("Account not created");
                    	}
                    }

                }

                catch(Exception ex){
                    message = "Error connecting website";
                }

            %>




                <form action="Signup_Forward.jsp" method="post" class="homepageSignupalpsin">
                    <center><h1>Create Account</h1></center>
                    <br>
            
                    <label for="username">Username</label>
                    <br>
                    <input type="text" placeholder=" Username" name="username" id="username" class="inputr" required>
                    <br><br>
                    <label for="username">Email</label>
                    <br>
                    <input type="text" placeholder=" Email" name=" email" id="email" class="inputr" required>
                    <br><br>
                    <label for="password">Password</label><br>
                    <input type="password" placeholder=" Password" name="password" id="password" class="inputr" required>
                    <br><br>
                    <button class="btn" value="loginProceed">Sign up</button>

                    </form>
                    <!-- <form action="LoginPage.jsp" method="post" class="homepageSignup">
                    
                        <div class="social">
                            Already have an account?
                        <button type=Submit class="btn" value="login">Sign in</button><br>
                        
                        </div>
                    </form> -->

                    <h1><!--<%= message %> --> </h1>

                </div>
                <form action="LoginPage.jsp" method="post" class="homepageSignupalpcasin">
                    
                    <div class="social">
                        Already have an account?
                    <button type=Submit class="btn" value="login">Login in</button><br>
                    
                    </div>
                </form>
                </div>

            </div> 
</section>
<footer>
    <div class="foot">
        <center>
            <br>
    <p>&copy; 2023 Minute Recipe's. All rights reserved. Design : Malevolent's Team</p>

</div>
    </center>
  </footer>
    </body>
</html>
