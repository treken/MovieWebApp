<%-- 
    Document   : browse
    Created on : Jan 24, 2017, 5:42:27 PM
    Author     : Luan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href=<%=request.getContextPath() + "/css/font-awesome.css"%> rel="stylesheet" type="text/css" />

        <title>Browse Page</title>
    </head>
    <body style="background-image: url(sky.png); 
          background-repeat: no-repeat;
          background-size: cover;
          background-attachment: fixed;">
        <h1>Browse by Genre</h1>
	<h2><a href="<%=request.getContextPath() + "/checkOut.jsp"%>">Check Out <i class="fa fa-credit-card" aria-hidden="true"></i></a></h2>
	<h2><a href="<%=request.getContextPath() + "/shoppingCart.jsp"%>">my cart <i class="fa fa-shopping-cart" aria-hidden="true"></i></a></h2>
	<h2><a href="<%=request.getContextPath() + "/mainPage.jsp"%>">home <i class="fa fa-home" aria-hidden="true"></i></a></h2>
	<h2><a href="<%=request.getContextPath() + "/search.jsp"%>">advanced search <i class="fa fa-search" aria-hidden="true"></i></a></h2>
		<%
			ResultSet result = (ResultSet) request.getAttribute("allGenres");
			while (result.next()) {
				out.print("<a href='" + request.getContextPath() + "/MoviesByGenre?genre="
					+ result.getString("name") + "'>" + result.getString("name") + "</a>&nbsp;&nbsp;");
			}
		%>
        <h1>Browse by Title</h1>
        <%
		for (int i = 0; i < 10; i++) {
			out.print("<a href= '" + request.getContextPath() + "/MoviesByTitle?title=" + i + "'>"
				+ i + "</a>&nbsp;&nbsp;");
		}
		for (char c = 'a'; c <= 'z'; c++) {
			out.print("<a href= '" + request.getContextPath() + "/MoviesByTitle?title=" + c + "'>"
				+ c + "</a>&nbsp;&nbsp;");
		}
        %>
    </body>
</html>
