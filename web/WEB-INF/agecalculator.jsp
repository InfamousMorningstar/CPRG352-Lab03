<%-- 
    Document   : agecalculator
    Created on : Feb 2, 2022, 6:57:19 PM
    Author     : 827097
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form method ="post">
            <label>Enter your age:</label>
            <input type="text" name="user_age" value="${userAge}" placeholder="69">
            <br>
            <input type="submit" value="Age next birthday">
        </form>
            <p>${message}</p>
            <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
