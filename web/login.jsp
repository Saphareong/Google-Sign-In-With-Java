<%-- 
    Document   : login
    Created on : Sep 11, 2021, 8:42:57 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Normal Login</title>
    </head>
    <body>
        <%
            if(session.getAttribute("username") != null)
            response.sendRedirect("index.jsp");
        %>
        <h1>So you doesn't love the API then login through here</h1> </br>
        <form action="Login" method="POST">
            Username <input type="text" name="tennguoidung" value="" /> </br>
            Password <input type="text" name="matkhau" value="" /> </br>
            <input type="submit" name="btAction" value="LETMEINNN" /> </br>
        </form>
        <h1>Write anything you want</h1> </br>
        <a href = "welcum.jsp">Home page</a>
    </body>
</html>
