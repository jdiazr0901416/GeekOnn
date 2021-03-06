<%-- 
    Document   : registro
    Created on : 07-may-2013, 1:36:18
    Author     : Julio
--%>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
%>
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
    <link href="recursos/css/registro.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <script src="recursos/ajax/acciones/registro/ajaxRegistro.js"></script>
    <script src="recursos/ajax/validar.js"></script>
    
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

     <!-- navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="index.jsp">
            <img src="recursos/imagenes/logo/geekonn.png" height="60" width="140" alt="">
          </a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li><a href="#myModal" data-toggle="modal" data-target="#myModal" id="a-iniciar-sesion" class="boton-iniciar-sesion"><i class="icon-off icon-2x icon-white"></i>&nbsp;<b>Inicia Sesión</b></a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- Termina navbar  -->
      <div class="row-fluid">
          <div class="row-fluid header">
              <h1><center>Registrado</center></h1>
          </div>
          <div class="row-fluid separador"></div>
          <div class="row-fluid contenedor-principal-registro">
              <center><h1>ya formas parte de GeekOnn, ahora ve al menu e inicia sesión </h1></center>
            </div>
     <!-- navbar bootom -->
      <div class="navbar navbar-inverse navbar-fixed-bottom">
        <div class="navbar-inner">
          <div class="container-fluid">
            <div class="nav-collapse collapse">
              <ul class="nav pull-left">
                <li><img src="recursos/imagenes/index/ipn.png" alt=""></li>
              </ul>
              <ul class="nav pull-right">
                <li><img src="recursos/imagenes/index/cecyt9.png" alt=""></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>

<!-- Modal inicio sesion-->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <center><h3 id="myModalLabel">Inicia sesión</h3></center>
      </div>
      <form action='InicioSesion' METHOD='POST' class='form-horizontal'>
      <div class="modal-body">
        <div class="row-fluid">
          <div class="span6 offset3"> 
            <br>
            <div class="control-group">
              <div class="controls" style="margin-left:0;">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-user"></i></span><input placeholder="Nombre de usuario o correo" type="text" size="25" id="username" name="nombreUsuario" tabindex="1">
               </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls" style="margin-left:0;">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-lock"></i></span><input placeholder="Contraseña" type="password" value="" size="25" name="password" tabindex="2">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
          <div class="span6"><h6 class="pull-left">¿No estas registrado?<a href="registro.jsp">Registrate</a></h6></div>
          <button class="btn btn-danger" type="submit"><strong>Iniciar sesión</strong></button>
      </form>
      </div>
    </div>
<!-- Modal -->      
    <!-- Termina navbar  -->
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
     <script src="recursos/ajax/validar.js"></script>

  </body>
</html>
<%} else{
    response.sendRedirect("geekonn.jsp");
}
%>