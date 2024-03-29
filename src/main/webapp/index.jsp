<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="estm.dsic.jee.model.User" %>

<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Responsive Navbar | CodingNepal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <!-- <link rel="stylesheet" href="./css/footerstyle.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
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
        <li><a class="active" href="#">Home</a></li>
        <!--  -->
        <li><a href="page/about">About</a></li>
        <li><a href="page/contact">Contact</a></li>
       <%-- testing if the user in the session show dashbaord tab else the login tab --%>
       <%-- so if the user already loged in he will only see the dashboard tell he logout --%>
<%
         User user = (User) session.getAttribute("user");
    if (user != null) {
      %>
       <li><a href="page/dashboard">Dashboard</a></li>
       <li><a href="/web02/logout">Logout</a></li>
        <%
    }else{
      %>
      <li><a href="page/login">Login</a></li>
       <%
    }
%>

        <!--  -->
      </ul>
    </nav>
    <div>
     <%@ include file="./WEB-INF/views/components/hero1.jsp" %>
    <%-- <section>
        <h2>Welcome to Hello Servlet</h2>  
    <p>
        <a href="servlet">Click here</a> to get a greeting from the Hello Servlet.
    </p>
    </section> --%>

    <!-- --------------------------------------- -->
    <%@ include file="./WEB-INF/views/footer.jsp" %>
    <!-- --------------------------------------- -->
   
</body>
</html>
