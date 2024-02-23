<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="estm.dsic.jee.model.User" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.ServletException" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../css/style.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
    <title>Dashboard</title>
</head>
<body>

<%  
    User user = (User) session.getAttribute("user");
    if (user != null) {
        
%>
<div class="navbar">
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
        <li><a class="active" href="#">Dashboard</a></li>
        <!--  -->
      </ul>
    </nav>
    <div>
    <section>
    <h1>Dashboard Page</h1>
    <h2>Welcome to Dashboard</h2>
    <p>Welcome, <%= user.getUsername() %>!</p>
    <p>Email: <%= user.getEmail() %></p>
    <a href="/web02/logout">Logout</a> <!-- This link will trigger the logout action -->

    </section>

     <!-- -------------------footer-------------------- -->
    <%@ include file="./footer.jsp" %>
    <!-- ----------------------------------------------- -->


<%
    } else {
        response.sendRedirect("/web02/page/login"); // Redirect to login if user is not authenticated
        return; // Add this to stop execution after the redirect
    }
  
%>
</body>
</html>

