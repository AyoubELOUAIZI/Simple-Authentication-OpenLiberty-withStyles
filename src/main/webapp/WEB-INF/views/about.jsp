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
        <li><a href="login">Login</a></li>
        <li><a href="signup">Sign up</a></li>
        <!--  -->
      </ul>
    </nav>
    <section>
    <h2>About Us</h2>
    <p>This is the About Us page content.</p>
    </section>
     <!-- --------------------------------------- -->
    <%@ include file="./footer.jsp" %>
    <!-- --------------------------------------- -->

    
</body>
</html>
