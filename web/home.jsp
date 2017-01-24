<%-- 
    Document   : home.jsp
    Created on : Jan 22, 2017, 4:25:30 PM
    Author     : Luan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8"/>
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="css/meteor.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <h1 align="center"><i class="fa fa-film" aria-hidden="true"></i>  Welcome to Zhaonian Luan's MovieWebApp!</h1>
        <div class="container">
            <form action=<%=request.getContextPath() + "/Login"%> method="POST">
                <div class="form-input">
                    <input type="text" name="email" placeholder="Enter Email">
                </div>

                <div class="form-input">
                    <input type="password" name="password" placeholder="Enter Password">
                </div>
                <input type="submit" value="Login" class="btn-login">
            </form>
        </div>
    </body>
</html>