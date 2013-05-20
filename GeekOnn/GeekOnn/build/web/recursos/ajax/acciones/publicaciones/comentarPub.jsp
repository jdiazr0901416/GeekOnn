<%@page import="com.geekonn.system.SentenciasSQL"%>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{
int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));
int publicacion = Integer.valueOf(request.getParameter("idPublicacion"));
String comentario = request.getParameter("contenido");
System.out.println(comentario);
SentenciasSQL sentenciaSQL = new SentenciasSQL();
sentenciaSQL.comentarPublicacion(idUsuario, publicacion, comentario);
response.sendRedirect("../../../ajax/menu/newsFeed.jsp");
}
%>


