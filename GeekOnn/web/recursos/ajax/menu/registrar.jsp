<%-- 
    Document   : registrar
    Created on : 09-may-2013, 8:27:39
    Author     : Julio
--%>

<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String nombre= request.getParameter("nombre");
    String correo= request.getParameter("correo");
    String nombreU= request.getParameter("nombreUsuario");
    String pass= request.getParameter("pass");

    SentenciasSQL registrar = new SentenciasSQL();
    registrar.registrarNuevoUsuario(nombre, correo, nombreU, pass);
%>    
