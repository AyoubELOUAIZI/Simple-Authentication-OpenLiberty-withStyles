<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="estm.dsic.jee.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../css/style.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
    <title>About Us</title>
</head>
<body>
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
        <li><a class="active"  href="#">About</a></li>
        <li><a href="contact">Contact</a></li>
        <%-- <li><a href="login">Login</a></li> --%>
          <%-- testing if the user in the session show dashbaord tab else the login tab --%>
       <%-- so if the user already loged in he will only see the dashboard tell he logout --%>
<%
         User user = (User) session.getAttribute("user");
    if (user != null) {
      %>
       <li><a href="dashboard">Dashboard</a></li>
        <li><a href="/web02/logout">Logout</a></li>
        <%
    }else{
      %>
      <li><a href="login">Login</a></li>
       <%
    }
%>
        <!--  -->
      </ul>
    </nav>
    <div>
    <%-- <section>
    <h2>About Us</h2>
    <p>This is the About Us page content.</p>
    </section> --%>
     <%@ include file="./components/hero-aboutus.jsp" %>

     <!-- --------------------------------------- -->
    <%@ include file="./footer.jsp" %>
    <!-- --------------------------------------- -->

    
</body>
</html>
