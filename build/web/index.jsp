<%-- 
    Document   : index
    Created on : Sep 11, 2021, 7:48:36 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang nay la trang sau khi login</title>
        <style>
        h1
        {
            color: red;
        }
        pre
        {
            font-weight: bold;
        }
        .customA{
    position: relative;
    display: inline-block;
    padding: 25px 30px;
    margin: 40px 0;
    color: #03e9f4;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.5s;
    letter-spacing: 4px;
    overflow: hidden;
    margin-right: 50px;
   
}
.customA:hover{
    background: #03e9f4;
    color: #050801;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 200px #03e9f4;
     -webkit-box-reflect:below 1px linear-gradient(transparent, #0005);
}
.customA:nth-child(1){
    filter: hue-rotate(270deg);
}
.customA:nth-child(2){
    filter: hue-rotate(110deg);
}
.customA span{
    position: absolute;
    display: block;
}
.customA span:nth-child(1){
    top: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg,transparent,#03e9f4);
    animation: animate1 1s linear infinite;
}
@keyframes animate1{
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
.customA span:nth-child(2){
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#03e9f4);
    animation: animate2 1s linear infinite;
    animation-delay: 0.25s;
}
@keyframes animate2{
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
.customA span:nth-child(3){
    bottom: 0;
    right: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#03e9f4);
    animation: animate3 1s linear infinite;
    animation-delay: 0.50s;
}
@keyframes animate3{
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}


.customA span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#03e9f4);
    animation: animate4 1s linear infinite;
    animation-delay: 0.75s;
}
@keyframes animate4{
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100%;
    }
}
        </style>
    </head>
    <body>
        <h1>Your name: ${sessionScope.username}</h1> </br>
            <h3>email: ${sessionScope.email}</h3> </br>
            <h2 style="color:red">Only logout button can return you to the login page!!!</h2> </br>
            <img src="${sessionScope.picurl}"> </br><!-- what -->
            <pre>
                the button it's time to go out (on top of the video will send you back to login page)
            </pre>
        <%
            if(session.getAttribute("username") == null)
            response.sendRedirect("login.jsp");
        %>
        <form action="logout">
            <input type="submit" name="goodbye" value="It's time to go" /> </br>
        </form>
        <iframe width="500" height="700" src="https://www.youtube.com/embed/z6-FWJteNLI?autoplay=1" title="YouTube video player" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <pre>
            Hello, how are you
            i'm under the water
            please help me
            there is too much building
            huuuuuuuuhh.
        </pre>
    </body>
</html>
