<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
            @import url('https://fonts.googleapis.com/css?family=Nunito:400,600,700');
        $nunito-font: 'Nunito', sans-serif;

        // mixins
        @mixin breakpoint($point) {
            @if $point==mobile {
                @media (max-width: 480px) and (min-width: 320px) {
                    @content ;
                }
            }
        }

        // keyrames
        @keyframes floating {
            from { transform: translateY(0px); }
            65%  { transform: translateY(15px); }
            to   { transform: translateY(-0px); }
        }

        html {
        height: 100%;
        }

        body{
        background-image: url('https://assets.codepen.io/1538474/star.svg'),linear-gradient(to bottom, #05007A, #4D007D);
        height: 100%;
        margin: 0;
        background-attachment: fixed;
        overflow: hidden;
        }

        .mars{
        left:0;
        right:0;
        bottom:0;
        position:absolute;
        height: 27vmin;
        background: url('https://assets.codepen.io/1538474/mars.svg') no-repeat bottom center;
        background-size: cover;
        }

       .errorpage .logo-404{
        position: absolute;
        margin-left: auto;
        margin-right: auto;
        left: 0;
        right: 0;
        top: 16vmin;
        width: 30vmin;

        @include breakpoint(mobile){
            top: 45vmin;
        }
        }

       .errorpage .meteor{
        position: absolute;
        right: 2vmin;
        top: 16vmin;
        }

       .errorpage .title{
        color: white;
        font-family: $nunito-font;
        font-weight: 700;
        text-align: center;
        font-size: 5vmin;
        margin-top: -60vmin;

        @include breakpoint(mobile){
            margin-top: 65vmin;
        }
        }

       .errorpage .subtitle{
        color: white;
        font-family: $nunito-font;
        font-weight: 600;
        text-align: center;
        font-size: 3.5vmin;
        margin-bottom: 9vmin;
        }

       .errorpage .btn-back{
        border: 1px solid white;
        color: white;
        height: 5vmin;
        padding: 12px;
        font-family: $nunito-font;
        text-decoration: none;
            border-radius: 5px;

        &:hover{
            background: white;
            color: #4D007D;
        }

        @include breakpoint(mobile){
            font-size: 3.5vmin;
        }
        }

       .errorpage .astronaut{
        position: absolute;
        top: 18vmin;
        left: 10vmin;
        height: 30vmin;
            animation: floating 3s infinite ease-in-out;

        @include breakpoint(mobile){
            top: 2vmin;
        }
        }

      .errorpage  .spaceship{
        position: absolute;
        bottom: 15vmin;
        right: 24vmin;

        @include breakpoint(mobile){
            width: 45vmin;
            bottom: 18vmin;
        }
        }
    </style>
</head>
<body>
<div class="errorpage">
<div>
    <div class="mars"></div>
<div>
<img src="https://assets.codepen.io/1538474/404.svg" class="logo-404" />
<img src="https://assets.codepen.io/1538474/meteor.svg" class="meteor" />
</div>
<img class="" src="https://res.cloudinary.com/dm9udoven/image/upload/v1708656534/EST%20MEKNES/ESTM_mjnnev.png">
<p class="title">Oh no!!</p>
<p class="subtitle">
	You're either misspelling the URL <br /> or requesting a page that's no longer here.
</p>
<div align="center">
	<a class="btn-back" href="/web02">Back to home page</a>
</div>
<img src="https://assets.codepen.io/1538474/astronaut.svg" class="astronaut" />
<img src="https://assets.codepen.io/1538474/spaceship.svg" class="spaceship" />

    <%-- -------------------------------------------- --%>
     <!-- -------------------footer-------------------- -->
    <%-- <%@ include file="./footer.jsp" %> --%>
    <!-- ----------------------------------------------- -->
    <div>
</body>
</html>
