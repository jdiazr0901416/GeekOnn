<%-- 
    Document   : registrar
    Created on : 09-may-2013, 8:27:39
    Author     : Julio
--%>

<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "com.geekonn.security.Cifrar" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String nombre= request.getParameter("nombre");
    String correo= request.getParameter("correo");
    String nombreU= request.getParameter("nombreUsuario");
    String pass= request.getParameter("pass");

    SentenciasSQL registrar = new SentenciasSQL();
    Cifrar cifrado = new Cifrar();
    String password = cifrado.encriptar(pass);
    registrar.registrarNuevoUsuario(correo,password , nombre, nombreU);
    response.sendRedirect("http://localhost:8080/GeekOnn/index.jsp");
%>    
