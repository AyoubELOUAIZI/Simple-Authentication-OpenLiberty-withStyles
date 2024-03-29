  <style>
  body {
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
}

.hero {
    position: relative;
    background: url('https://res.cloudinary.com/dm9udoven/image/upload/v1708656769/EST%20MEKNES/EST_Mekn%C3%A8s_kzrati.png') center/cover no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.hero::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.6); /* Black color with 60% opacity */
    z-index: 1; /* Ensure the overlay is behind the content */
}

.hero-content {
    text-align: center;
    color: #fff;
    z-index: 2; /* Ensure the content is on top of the overlay */
}

.hero-title {
    font-size: 3em;
    margin-bottom: 20px;
    animation: fadeInUp 1s ease-in-out;
}

.hero-subtitle {
    font-size: 1.5em;
    margin-bottom: 30px;
    animation: fadeInUp 1s ease-in-out 0.5s;
}

.hero-button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 1.2em;
    text-decoration: none;
    color: #fff;
    background-color: #3498db;
    border-radius: 5px;
    transition: background-color 0.3s ease-in-out;
}

.hero-button:hover {
    background-color: #2980b9;
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

  </style>
        
  <header class="hero">
        <div class="hero-content">
            <h1 class="hero-title">Welcome to the ESTM Platform, <%= user.getUsername() %> ! We're excited to have you join us. Feel free to explore and engage with our resources"</h1>
            <p class="hero-subtitle">For any assistance, reach out to us at with your email <%= user.getEmail() %> </p>
            <%-- <a href="page/about" class="hero-button">Learn More</a> --%>
        </div>
</header>
