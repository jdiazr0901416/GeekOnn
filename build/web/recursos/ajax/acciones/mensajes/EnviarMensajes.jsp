<%-- 
    Document   : EnviarMensajes.jsp
    Created on : 19-abr-2013, 10:59:53
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
    out.println(nombreUsuario);
    String mensajeEnviado =request.getParameter("mensaje");
    out.println(mensajeEnviado);
    SentenciasSQL recuperarId = new SentenciasSQL();
    SentenciasSQL enviarMensaje = new SentenciasSQL();
    int idUsuario1=1;
    int idUsuario2=recuperarId.devolverIDUsuario(nombreUsuario);
    out.println(idUsuario2);
    enviarMensaje.conversacion(idUsuario1, idUsuario2, mensajeEnviado);
%>
<%}%>