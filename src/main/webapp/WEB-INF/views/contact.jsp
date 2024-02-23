<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../css/style.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
    <title>Contact Us</title>
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
        <li><a   href="about">About</a></li>
        <li><a class="active" href="#">Contact</a></li>
        <li><a href="login">Login</a></li>
        <!--  -->
      </ul>
    </nav>
    <div>
   <%-- <h2>Contact Us</h2>
    <p>This is the Contact Us page content.</p> --%>
    
    <%-- <section>
    </section> --%>
     <%@ include file="./components/contactus.jsp" %>

     <!-- -------------------footer-------------------- -->
    <%@ include file="./footer.jsp" %>
    <!-- ----------------------------------------------- -->
   
</body>
</html>
