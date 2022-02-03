<%-- 
    Document   : arithmeticcalculator
    Created on : Feb 2, 2022, 6:58:02 PM
    Author     : 827097
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithemetic Calculator</title>
    </head>
    <body>
        <h1>Arithemetic Calculator</h1>
        <form method="post">
            <label>First</label>
            <input type="text" name="first_number" value="${firstNumber}" placeholder = "4">
            <br>
            <label>Second</label>
            <input type="text" name="second_number" value="${secondNumber}" placeholder = "20">
            <br>
            
            <input type="submit" name="button" value="+">
            <input type="submit" name="button" value="-">
            <input type="submit" name="button" value="*">
            <input type="submit" name="button" value="%">
            
            
        </form>
            <p>Result: ${message}</p>
            <a href="age">Age Calculator</a>
            
    </body>
</html>
