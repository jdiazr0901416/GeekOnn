<%-- 
    Document   : Sesiones
    Created on : 01-may-2013, 18:39:59
    Author     : Bouchan
--%>
<% 
String Username = (String)session.getAttribute("sessionUsername");
if(Username == null){
    response.sendRedirect("index.jsp");
}else{
    response.sendRedirect("geekonn.jsp");
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
