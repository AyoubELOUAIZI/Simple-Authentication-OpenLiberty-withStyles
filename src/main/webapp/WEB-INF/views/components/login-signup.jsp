<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

 :root {
    --primary-color: #5260ff;
    --secondary-color: #61adff;
    --black: #000000;
    --white: #ffffff;
    --gray: #efefef;
    --gray-2: #757575;

    --facebook-color: #4267B2;
    --google-color: #DB4437;
    --twitter-color: #1DA1F2;
    --insta-color: #E1306C;
}

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
/*
 * {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
/*
html,
body {
    height: 100vh;
    overflow: hidden;
}
*/

.login-signup .container {
    font-family: 'Poppins', sans-serif;
    position: relative;
    min-height: 100vh;
    overflow: hidden;
}

.login-signup .row {
    display: flex;
    flex-wrap: wrap;
    height: 100vh;
}

.login-signup .col {
    width: 50%;
}

.login-signup .align-items-center {
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.login-signup .form-wrapper {
    width: 100%;
    max-width: 28rem;
}

.login-signup .form {
    padding: 1rem;
    background-color: var(--white);
    border-radius: 1.5rem;
    width: 100%;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    transform: scale(0);
    transition: .5s ease-in-out;
    transition-delay: 1s;
}

.login-signup .input-group {
    position: relative;
    width: 100%;
    margin: 1rem 0;
}

.login-signup .input-group i {
    position: absolute;
    top: 50%;
    left: 1rem;
    transform: translateY(-50%);
    font-size: 1.4rem;
    color: var(--gray-2);
}

.login-signup .input-group input {
    width: 100%;
    padding: 1rem 3rem;
    font-size: 1rem;
    background-color: var(--gray);
    border-radius: .5rem;
    border: 0.125rem solid var(--white);
    outline: none;
}

.login-signup .input-group input:focus {
    border: 0.125rem solid var(--primary-color);
}

.login-signup .form button {
    cursor: pointer;
    width: 100%;
    padding: .6rem 0;
    border-radius: .5rem;
    border: none;
    background-color: var(--primary-color);
    color: var(--white);
    font-size: 1.2rem;
    outline: none;
}

.login-signup .form p {
    margin: 1rem 0;
    font-size: .7rem;
}

.login-signup .flex-col {
    flex-direction: column;
}

.login-signup .social-list {
    margin: 2rem 0;
    padding: 1rem;
    border-radius: 1.5rem;
    width: 100%;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    transform: scale(0);
    transition: .5s ease-in-out;
    transition-delay: 1.2s;
}

.login-signup .social-list>div {
    color: var(--white);
    margin: 0 .5rem;
    padding: .7rem;
    cursor: pointer;
    border-radius: .5rem;
    cursor: pointer;
    transform: scale(0);
    transition: .5s ease-in-out;
}

.login-signup .social-list>div:nth-child(1) {
    transition-delay: 1.4s;
}

.login-signup .social-list>div:nth-child(2) {
    transition-delay: 1.6s;
}

.login-signup .social-list>div:nth-child(3) {
    transition-delay: 1.8s;
}

.login-signup .social-list>div:nth-child(4) {
    transition-delay: 2s;
}

.login-signup .social-list>div>i {
    font-size: 1.5rem;
    transition: .4s ease-in-out;
}

.login-signup .social-list>div:hover i {
    transform: scale(1.5);
}

.login-signup .facebook-bg {
    background-color: var(--facebook-color);
}

.login-signup .google-bg {
    background-color: var(--google-color);
}

.login-signup .twitter-bg {
    background-color: var(--twitter-color);
}

.login-signup .insta-bg {
    background-color: var(--insta-color);
}

.login-signup .pointer {
    cursor: pointer;
}

.login-signup .container.sign-in .form.sign-in,
.login-signup .container.sign-in .social-list.sign-in,
.login-signup .container.sign-in .social-list.sign-in>div,
.login-signup .container.sign-up .form.sign-up,
.login-signup .container.sign-up .social-list.sign-up,
.login-signup .container.sign-up .social-list.sign-up>div {
    transform: scale(1);
}

.login-signup .content-row {
    position: absolute;
    top: 0;
    left: 0;
    pointer-events: none;
    z-index: 6;
    width: 100%;
}

.login-signup .text {
    margin: 4rem;
    color: var(--white);
}

.login-signup .text h2 {
    font-size: 3.5rem;
    font-weight: 800;
    margin: 2rem 0;
    transition: 1s ease-in-out;
}

.login-signup .text p {
    font-weight: 600;
    transition: 1s ease-in-out;
    transition-delay: .2s;
}

.login-signup .img img {
    width: 30vw;
    transition: 1s ease-in-out;
    transition-delay: .4s;
}

.login-signup .text.sign-in h2,
.login-signup .text.sign-in p,
.login-signup .img.sign-in img {
    transform: translateX(-250%);
}

.login-signup .text.sign-up p,
.login-signup .text.sign-up h2,
.login-signup .img.sign-up img {
    transform: translateX(250%);
}

.login-signup .container.sign-in .text.sign-in h2,
.login-signup .container.sign-in .text.sign-in p,
.login-signup .container.sign-in .img.sign-in img,
.login-signup .container.sign-up .text.sign-up h2,
.login-signup .container.sign-up .text.sign-up p,
.login-signup .container.sign-up .img.sign-up img {
    transform: translateX(0);
}

/* BACKGROUND */

.login-signup .container::before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    height: 100vh;
    width: 300vw;
    transform: translate(35%, 0);
    background-image: linear-gradient(-45deg, var(--primary-color) 0%, var(--secondary-color) 100%);
    transition: 1s ease-in-out;
    z-index: 6;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    border-bottom-right-radius: max(50vw, 50vh);
    border-top-left-radius: max(50vw, 50vh);
}

.login-signup .container.sign-in::before {
    transform: translate(0, 0);
    right: 50%;
}

.login-signup .container.sign-up::before {
    transform: translate(100%, 0);
    right: 50%;
}

/* RESPONSIVE */

@media only screen and (max-width: 425px) {

   .login-signup .container::before,
   .login-signup .container.sign-in::before,
  .login-signup  .container.sign-up::before {
        height: 100vh;
        border-bottom-right-radius: 0;
        border-top-left-radius: 0;
        z-index: 0;
        transform: none;
        right: 0;
    }

    /* .container.sign-in .col.sign-up {
        transform: translateY(100%);
    } */

   .login-signup .container.sign-in .col.sign-in,
   .login-signup .container.sign-up .col.sign-up {
        transform: translateY(0);
    }

   .login-signup .content-row {
        align-items: flex-start !important;
    }

   .login-signup .content-row .col {
        transform: translateY(0);
        background-color: unset;
    }

  .login-signup  .col {
        width: 100%;
        position: absolute;
        padding: 2rem;
        background-color: var(--white);
        border-top-left-radius: 2rem;
        border-top-right-radius: 2rem;
        transform: translateY(100%);
        transition: 1s ease-in-out;
    }

   .login-signup .row {
        align-items: flex-end;
        justify-content: flex-end;
    }

  .login-signup  .form,
    .login-signup .social-list {
        box-shadow: none;
        margin: 0;
        padding: 0;
    }

  .login-signup  .text {
        margin: 0;
    }

   .login-signup .text p {
        display: none;
    }

   .login-signup .text h2 {
        margin: .5rem;
        font-size: 2rem;
    }
}
</style>
<%-- start html code for login-signup  --%>
<div class="login-signup">
<div id="container" class="container">
		<!-- FORM SECTION -->
		<div class="row">
			<!-- SIGN UP -->
			<!-- SIGN UP -->
<div class="col align-items-center flex-col sign-up">
    <div class="form-wrapper align-items-center">
        <form action="/web02/signup" method="post" class="form sign-up">
            <div class="input-group">
                <i class='bx bxs-user'></i>
                <%  
    String signError = (String) session.getAttribute("signError");
    if (signError != null) {   
        %>
      <span  style="color: red;" ><%=signError%></span> 
    <% } %>
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>
            <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-group">
                <i class='bx bxs-lock-alt'></i>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <%-- <div class="input-group">
                <i class='bx bxs-lock-alt'></i>
                <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm password" required>
            </div> --%>
            <button type="submit">Sign up</button>
            <p>
                <span>
                    Already have an account?
                </span>
                <b onclick="toggle()" class="pointer">
                    Sign in here
                </b>
            </p>
        </form>
    </div>
</div>
<!-- END SIGN UP -->
			<!-- END SIGN UP -->
			<!-- SIGN IN -->
<div class="col align-items-center flex-col sign-in">
    <div class="form-wrapper align-items-center">
        <form action="/web02/login" method="post" class="form sign-in">
            <div class="input-group">
                <i class='bx bxs-user'></i>
            
<%  
    String authError = (String) session.getAttribute("authError");
    if (authError != null) {   
        %>
      <span  style="color: red;" ><%=authError%></span> 
    <% } %>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-group">
                <i class='bx bxs-lock-alt'></i>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit">Sign in</button>
            <p>
                <%-- <b>
                    Forgot password?
                </b> --%>
            </p>
            <p>
                <span>
                    Don't have an account?
                </span>
                <b onclick="toggle()" class="pointer">
                    Sign up here
                </b>
            </p>
        </form>
    </div>
    <div class="form-wrapper">

    </div>
</div>
			<!-- END SIGN IN -->
		</div>
		<!-- END FORM SECTION -->
		<!-- CONTENT SECTION -->
		<div class="row content-row">
			<!-- SIGN IN CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="text sign-in">
					<h2>
						Welcome
					</h2>
	
				</div>
				<div class="img sign-in">
		
				</div>
			</div>
			<!-- END SIGN IN CONTENT -->
			<!-- SIGN UP CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="img sign-up">
				
				</div>
				<div class="text sign-up">
					<h2>
						Join with us
					</h2>
	
				</div>
			</div>
			<!-- END SIGN UP CONTENT -->
		</div>
		<!-- END CONTENT SECTION -->
	</div>
    <div>
    
<script>
let container = document.getElementById('container')

toggle = () => {
	container.classList.toggle('sign-in')
	container.classList.toggle('sign-up')
}

setTimeout(() => {
	container.classList.add('sign-in')
}, 200)
</script>
