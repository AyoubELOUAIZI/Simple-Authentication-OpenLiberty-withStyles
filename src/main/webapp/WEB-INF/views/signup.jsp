<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="estm.dsic.jee.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../css/style.css">  
    <title>SignUp</title>
</head>
<body>
<%
 User user = (User) session.getAttribute("user");
    if (user != null) {
         response.sendRedirect("/web02/page/dashboard"); // Redirect to login if user is not authenticated
        return; 
    }

%>
<nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo">LOGO</label>
      <ul>
        <li><a href="/web02">Home</a></li>
        <!--  -->
        <li><a   href="about">About</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a   href="login">Login</a></li>
        <li><a class="active" href="signup">Sign up</a></li>
        <!--  -->
      </ul>
    </nav>
    <section>
    <h2>SignUp</h2>
    <form action="/web02/signup" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Sign up">
    </form>
    </section>
   
</body>
</html>