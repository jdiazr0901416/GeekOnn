<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));
    SentenciasSQL sentenciasSQL = new SentenciasSQL();
    String titulo = request.getParameter("titulo");
    String contenido = request.getParameter("contenido");
    sentenciasSQL.crearPublicacion(idUsuario, titulo, contenido);
    response.sendRedirect("../../menu/publicaciones.jsp");




%>
