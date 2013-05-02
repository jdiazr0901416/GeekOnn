<%-- 
    Document   : desbloquearAmigo
    Created on : 26-abr-2013, 0:27:01
    Author     : Julio
--%>
<%--Esto va en todas las paginas y no te olvides de cerrar } del Else hasta el final de todo el HTML--%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>

<% 
    
    String nombreUsuario= request.getParameter("nombre");
    SentenciasSQL recuperarId = new SentenciasSQL();
    SentenciasSQL bloquearAmigo = new SentenciasSQL();
    int idUsuario2=recuperarId.devolverIDUsuario(nombreUsuario);
    bloquearAmigo.unblockAFriend(idUsuario, idUsuario2);
    response.sendRedirect("http://localhost:8080/GeekOnn/recursos/ajax/menu/amigos.jsp");
%>    

<%}%>