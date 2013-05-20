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
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{%>
<%--DECLARO LA VARIABLE idUsuario--%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%
    TwitterJ a1=new TwitterJ();
    //TwitterJ a2=new TwitterJ();
    a1.damek1(idUsuario);
    response.sendRedirect("http://localhost:8080/GeekOnn/recursos/ajax/twitter/registroTwitter.jsp");
    //System.out.println(a2.damek2());
%>
<%}%>