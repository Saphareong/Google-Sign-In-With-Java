<%-- 
    Document   : welcum
    Created on : Sep 11, 2021, 8:47:27 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web</title>
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
        <%
            /*response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setHeader("Pragma","no-cache");
            response.setDateHeader ("Expires", 0);*/
            if(session.getAttribute("username") != null)
            response.sendRedirect("index.jsp");
        %>
        <h1>I AM NOT A FRONT END DEVELOPER</h1> </br>
        <!--
        <a class ="customA" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/login-using-google&response_type=code
    &client_id=229851668671-rehm8b9h7e190bhmtvdmf24p19g39p3d.apps.googleusercontent.com&approval_prompt=force">Login bang Gu Gồ</a>
        -->
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <!-- meta name scope profile email for google api -->
        <meta name="google-signin-client_id" content="504609938567-q3fehf31clk9ki0k0idf80kntndmaigf.apps.googleusercontent.com">
        <meta name="google-signin-scope" content="profile email" />
        <div class="g-signin2" data-onsuccess="onSignIn"></div> </br>
        <a href="login.jsp" class="customA">Normal Login</a> </br>
        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> ditme jquerry vô dụng -->
        <script>
        //Google redirect on url after login is a scam you have to write a javascript for yourself
        function onSignIn(googleUser) 
        {
            var id_token = googleUser.getAuthResponse().id_token;
            //console.log('ID: ' + profile.getId());
            //console.log('Image URL: ' + profile.getImageUrl());
            /*var form = $('<form action="' + 'Login' + '" method="post">' + dit me AJAX anh em tôi dùng URLrewriting
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                                                                '</form>');
            $('body').append(form);
            form.submit();*/
            /*var xhr = new XMLHttpRequest(); dit me XML http request anh em tôi dùng AJAX (jquerry)
            xhr.open('POST', 'http://localhost:8084/Login');
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() 
            {
                //console.log('Signed in as: ' + xhr.responseText);
            };
            xhr.send('idtoken=' + id_token);*/
            if(id_token != null)
            {
                //well đây là th đăng nhập thành công và bên hờ tờ mờ lờ lấy được idtoken
                SignOut();
                window.location.href = "LoginGoogle?token=" + id_token;
                //dùng cách này cho những dự án đòi hỏi bảo mật thì bán nhà đấy nha mọi người.
            }
            //this code below here is for the situation google dead.
        }
        
        function SignOut()
        {
            //well if you have to copied just exactly fap.fpt.edu then go write some shit down here
            var gaObject = gapi.auth2.getAuthInstance();
            gaObject.signOut().then(function () {});
        }
        
   </script>
   <iframe width="800" height="600" src="https://www.youtube.com/embed/wXhTHyIgQ_U?autoplay=1" title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <pre>
We couldn't turn around
'Til we were upside down
I'll be the bad guy now
But no, I ain't too proud
I couldn't be there
Even when I tried
You don't believe it
We do this every time
Seasons change and our love went cold
Feed the flame 'cause we can't let it go
Run away, but we're running in circles
Run away, run away
I dare you to do something
I'm waiting on you again
So I don't take the blame
Run away, but we're running in circles
Run away, run away, run away
Let go
I got a feeling that it's time to let go
I say so
I knew that this was doomed from the get-go
You thought that it was special, special
But it was just the sex though, the sex though
And I still hear the echoes (the echoes)
I got a feeling that it's time to let it go, let it go
Seasons change and our love went cold
Feed the flame 'cause we can't let it go
Run away, but we're running in circles
Run away, run away
I dare you to do something
I'm waiting on you again
So I don't take the blame
Run away, but we're running in circles
Run away, run away, run away
Maybe you don't understand what I'm going through
It's only me
What you got to lose?
Make up your mind, tell me
What are you gonna do?
It's only me
Let it go
Seasons change and our love went cold
Feed the flame 'cause we can't let it go
Run away, but we're running in circles
Run away, run away
I dare you to do something
I'm waiting on you again
So I don't take the blame
Run away, but we're running in circles
Run away, run away, run away
        </pre>
    </body>
</html>

