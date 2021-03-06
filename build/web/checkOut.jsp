<%-- 
    Document   : checkOut
    Created on : Feb 1, 2017, 7:23:44 PM
    Author     : Luan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href=<%=request.getContextPath() + "/css/font-awesome.css"%> rel="stylesheet" type="text/css" />
        <link href=<%=request.getContextPath() + "/css/meteor.css"%> rel="stylesheet" type="text/css" />
        <title>Check Out</title>
    </head>
    <body>
        <h1><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Check Out</h1>
	<h2><a href="<%=request.getContextPath() + "/shoppingCart.jsp"%>">my cart <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></h2>
	<h2><a href="<%=request.getContextPath() + "/mainPage.jsp"%>">home <i class="fa fa-home" aria-hidden="true"></i></a></h2>
	<h2><a href="<%=request.getContextPath() + "/search.jsp"%>">advanced search <i class="fa fa-search" aria-hidden="true"></i></a></h2>

        <div style='padding-left: 30%;'>
            <form action=<%=request.getContextPath() + "/Confirmation"%> method="POST">
                <div>
                    <input type="text" name="firstName" placeholder="First Name">
                </div>
                <div>
                    <input type="text" name="lastName" placeholder="Last Name">
                </div>
                <div>
                    <input type="text" name="creditCard" placeholder="Credit Card #">
                </div>
                <div>
                    <input type="Date" name="expDate">
                </div>
                <input type="submit" value="Check Out" class="btn-login">
            </form>
        </div>
	<h2><a href="<%=request.getContextPath() + "/Logout"%>">Log Out</a></h2>
    </body>
</html>
