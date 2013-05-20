<%-- 
    Document   : ajaxAgregarAmigo
    Created on : 09-may-2013, 0:54:34
    Author     : Julio
--%>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    int idUsuarioVisitado= Integer.parseInt(request.getParameter("idUsuarioVIsitado")); 
    System.out.println(idUsuarioVisitado);
    SentenciasSQL agregarAmigo = new SentenciasSQL();
    agregarAmigo.agregarAmigos(idUsuario, idUsuarioVisitado);
    response.sendRedirect("http://localhost:8080/GeekOnn/recursos/ajax/menu/amigos.jsp");
%>    
<%}%>

