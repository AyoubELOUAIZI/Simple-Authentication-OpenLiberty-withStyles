<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        <li><a href="page/login">Login</a></li>
        <li><a href="page/signup">Sign up</a></li>
        <!--  -->
      </ul>
    </nav>
    <div>
    <section>
        <h2>Welcome to Hello Servlet</h2>  
    <p>
        <a href="servlet">Click here</a> to get a greeting from the Hello Servlet.
    </p>
    </section>
    <!-- --------------------------------------- -->
    <%@ include file="./WEB-INF/views/footer.jsp" %>
    <!-- --------------------------------------- -->
   
</body>
</html>
