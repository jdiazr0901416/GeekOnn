<%-- 
    Document   : EnviarMensajes.jsp
    Created on : 19-abr-2013, 10:59:53
    Author     : Julio
--%>
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