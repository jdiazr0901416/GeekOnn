<%-- 
    Document   : EnviarMensajes.jsp
    Created on : 19-abr-2013, 10:59:53
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String nombreUsuario= request.getParameter("nombre");
    out.println(nombreUsuario);
    String mensajeEnviado =request.getParameter("mensaje");
    out.println(mensajeEnviado);
    String idUsuarioConversacion = request.getParameter("idUsuarioConversacion");
    SentenciasSQL sentenciasSQL = new SentenciasSQL();
    int idUsuarioConv = sentenciasSQL.devolverIDUsuario(idUsuarioConversacion);
    SentenciasSQL recuperarId = new SentenciasSQL();
    SentenciasSQL enviarMensaje = new SentenciasSQL();
    
    int idUsuario2=recuperarId.devolverIDUsuario(nombreUsuario);
    response.sendRedirect("conversacion.jsp?idUsuario="+idUsuarioConv);
    enviarMensaje.conversacion(idUsuario, idUsuario2, mensajeEnviado);
%>
<%}%>