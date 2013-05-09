<%-- 
    Document   : AjaxTwitter
    Created on : 09-may-2013, 2:22:14
    Author     : Julio
--%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "com.geekonn.twitter.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>

<%
    TwitterJ a1=new TwitterJ();
    //TwitterJ a2=new TwitterJ();
    a1.damek1();
    response.sendRedirect("http://localhost:8080/GeekOnn/recursos/ajax/twitter/registroTwitter.jsp");
    //System.out.println(a2.damek2());
%>