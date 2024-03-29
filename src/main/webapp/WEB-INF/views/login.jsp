<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="estm.dsic.jee.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../css/style.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
    <title>Login</title>
</head>
<body>
<%
 User user = (User) session.getAttribute("user");
    if (user != null) {
         response.sendRedirect("/web02/page/dashboard"); // Redirect to login if user is not authenticated
        return; 
    }

%>
<div class="navbar">
<nav class="">
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
        <li><a  class="active" href="login">Login</a></li>
        <!--  -->
      </ul>
    </nav>
    <div>

    <%@ include file="./components/login-signup.jsp" %>
    <%@ include file="./footer.jsp" %>   

</body>
</html>
