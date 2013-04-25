<%-- 
    Document   : respuestaExiste
    Created on : 24/04/2013, 09:01:18 AM
    Author     : jdiazr0901416
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<%
    String nombreUsuario= request.getParameter("nU");
    SentenciasSQL existe = new SentenciasSQL();
    int respuestaExiste = existe.revisar(nombreUsuario);
    System.out.println(nombreUsuario);
    if(respuestaExiste==1){
        System.out.println("existe");
        out.println("lo sentimos ya existe este usuario :(");
    }else{
        System.out.println("no existe");
        out.println("este usuario esta disponible ^^");
    }
%>
