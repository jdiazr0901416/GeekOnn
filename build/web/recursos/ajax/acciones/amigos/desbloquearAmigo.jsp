<%-- 
    Document   : desbloquearAmigo
    Created on : 26-abr-2013, 0:27:01
    Author     : Julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String nombreUsuario= request.getParameter("nombre");
    SentenciasSQL recuperarId = new SentenciasSQL();
    SentenciasSQL bloquearAmigo = new SentenciasSQL();
    int idUsuario1=1;
    int idUsuario2=recuperarId.devolverIDUsuario(nombreUsuario);
    bloquearAmigo.unblockAFriend(idUsuario1, idUsuario2);
%>    