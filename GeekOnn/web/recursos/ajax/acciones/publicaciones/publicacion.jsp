<%-- 
    Document   : publicaciones
    Created on : 08-may-2013, 10:02:57
    Author     : Julio
--%>
<%@page import="java.sql.ResultSet"%>
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
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/publicaciones.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
     <!--<script src="recursos/ajax/toltip/ajaxToltip.js"></script>-->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="recursos/bootstrap/docs/assets/js/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome-ie7.min.css">
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="recursos/bootstrap/docs/assets/ico/favicon.png">
  </head>
  <body>
      <%SentenciasSQL sentenciasSQL = new SentenciasSQL();
      int idPub = Integer.valueOf(request.getParameter("idPublicacion"));
      ResultSet resultset = sentenciasSQL.unaPublicacion(idPub);
      if(resultset.next()){
      %>
      <div class="row-fluid fondo-info">
          <div class="span12" id="contenedor-recibidor-publicacion-sesion">
              <!-- beta publicacion abierta -->
              <div class="row-fluid">
                  <div class="row-fluid"><center><h2><%=resultset.getString("nombrePublicacion")%></h2></center><hr></div>
                  <div class="row-fluid">
                      <div class="span3">
                          <center><i class="icon-picture"></i></center>
                      </div>
                      <div class="span9">
                          <div class="span10 offset1" id="contenedor-descripcion-publicacion">
                              <p align="justify">
                                <%=resultset.getString("contenido")%>
                              </p>
                          </div>
                      </div>  
                  </div>
                  <div class="row-fluid">
                      <div class="span10 offset1" id="contenedor-comentarios">
                          <div class="row-fluid">
                              <center><h3>Comentarios</h3><hr>
                          </div>
                          <div class="row-fluid">
                              <div class="span10 offset1"> 
                                  <p align="justify">
                                      Hola? me ves mira soy un comentario ^_^/
                                  </p>
                              </div>
                         </div>
                      </div>
                  </div>
                  <div class="row-fluid">
                      <div class="span10 offset1" id="contenedor-nuevo-comentario">
                          <div class="row-fluid">
                              <hr>
                              <center><textarea rows="3" class="span10"></textarea></center>
                              <br>
                              <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- beta -->
          </div>
      </div>
                    <%}%>
      <!-- Modal publicacion-->
    
<!-- Modal -->      
              <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="recursos/bootstrap/docs/assets/js/jquery.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-transition.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-alert.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-modal.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-scrollspy.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-tab.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-tooltip.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-popover.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-button.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-collapse.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-carousel.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-typeahead.js"></script>
    <script src="recursos/ajax/ajax.js"></script>
    <script src="recursos/ajax/popOvers/popOvers.js"></script>
    <script src="recursos/ajax/acciones/publicaciones/publicaciones.js"></script>
    <script src="recursos/ajax/acciones/publicaciones/publicaciones.js"></script>
     <!--<script src="recursos/ajax/toltip/ajaxToltip.js"></script>-->
  </body>
</html>
<%}%>