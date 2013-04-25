<%-- 
    Document   : geekonn-P
    Created on : 15-abr-2013, 10:22:41
    Author     : Julio
--%>
<%--
*
*FALTAN SESIONES
*
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/geekon-personal-css.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="recursos/bootstrap/docs/assets/js/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="recursos//bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="recursos/bootstrap/docs/assets/ico/favicon.png">
     <script src="recursos/ajax/acciones/mensajes/ajaxMensajes.js"></script>
     <script src="recursos/ajax/acciones/amigos/ajaxAmigos.js"></script>
     <script src="recursos/ajax/acciones/conf/ajaxConfiguracion.js"></script>
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
            <img alt='' src="recursos/imagenes/logo/geekonn.png" height="60" width="140">
          </a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <div class="btn-group">
                <button  data-toggle="dropdown"><img alt='' src="recursos/imagenes/imagenesUsuario/navbar/icon-user.png"></button>
                <ul class="dropdown-menu pull-right">
                  <li><a onclick="respuestaConfiguracion()">Opciones</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Cerrar Sesión</a></li>
                </ul>
              </div>
            </ul>
            <ul class="nav pull-right">
              <li><a href="perfilUsuario.html" id="nav-imgUsuario-Nombre">Nombre del usuario</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- Termina navbar  -->

      <div class="row-fluid" id="contenedor-principal">
        <div class="span1" id="menu">
          <div class="row-fluid" id="contenedor-iconos">
            <div class="span12" id="M-home">
              <p><i class="icon-home icon-white pull-right icon-4x" id="icon-white-menu-mn"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-perfil">
              <p><i class="icon-user icon-white pull-right icon-4x" id="icon-white-menu-mn"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-mensajes">
              <p><i class="icon-envelope-alt icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
           <div class="row-fluid">
            <div class="span12" id="M-amigos">
              <p><i class="icon-group icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-opiniones">
              <p><i class="icon-comment icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
        </div>
        <div class="span9" id="principal">
            <div class="container-fluid" id="">
                <div class="row-fluid">
                    <h1>Bienvenido</h1>
                </div>
            </div>
        </div>
        <div class="span2" id="mini-news-feed">
        </div>
      </div>  

              <!-- navbar bootom ------------------------------------------------------------------------------- -->
   <div class="navbar navbar-inverse navbar-fixed-bottom">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="row-fluid">
            <div class="span7 offset4">
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="#">Preguntas Frecuentes</a></li>
              <li><a href="#about">Terminos y condiciones</a></li>
              <li><a href="#contact">------------</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
        </div>
      </div>
    </div>
    <!-- Termina navbar ---------------------------------------------------------------------------- -->
    </div><!--/.fluid-container-->

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
    
  </body>
</html>