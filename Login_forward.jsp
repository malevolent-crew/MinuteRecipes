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
                
            <div class="buttons">
            
            <%! String message; %>
            
            <% 
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/minute_recipe", "root", "toor");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                
                if(email != null && password != null){

                     PreparedStatement ps = connection.prepareStatement("select email from login_info where email=? and password=?");
                     ps.setString(1, email);
                     ps.setString(2, password);

                     ResultSet result = ps.executeQuery();

                     //out.println(result.next());

                     if (result.next()) {
                          RequestDispatcher rd = request.getRequestDispatcher("Afterlogin_Home.jsp");
                          rd.forward(request, response);
                     }

                     else{
                          message = "Invalid Input";
                     }

                }

                else{
                    message = "Invalid Input";
                }


            }
            catch(Exception ex){
            	String message = "Error connecting website";
            }
      
            %>


            <div class="toleft">
                <form action="Login_forward.jsp" method="post" class="homepageSignupalp">
                    
                    <center><h1>Login Here</h1></center>
                    <br><br>
                    <div class="epaspos">
                    <label for="username">Email</label>
                    <br>
                    <input type="text" placeholder=" Email" name="email" id="username" class="inputr" required>
                    <br><br>
                    <label for="password">Password</label><br>
                    <input type="password" placeholder=" Password" name="password" id="password"class="inputr" required>
                    <br><br>
                    <button class="btn" value="loginProceed" type=Submit>Log In</button>

                </div>

                    <!-- login and create account -->
                    <!-- <div>
                    <form action="SignupPage.jsp" method="post" class="homepageSignupalpca">
                        <div class="social" >
                            <br>
                            Don't have a Account?
                            <button type=Submit class="btn" value="Signup">Create Account</button><br>
                            </div>
                    </form></div> -->

                </form>
            </div>

                <h1> <!-- <%= message %>  --> </h1>

                </div>
                <form action="SignupPage.jsp" method="post" class="homepageSignupalpca">
                    <div class="social" >
                        <br>
                        Don't have a Account?
                        <button type=Submit class="btn" value="Signup">Create Account</button><br>
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
    </center>
</div>
        </center>
      </footer>
    </body>
</html>
