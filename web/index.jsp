<%-- 
    Document   : index
    Created on : 15-abr-2013, 10:20:41
    Author     : Julio
--%>
<%--SESIONES BOUCHAN--%>
<%--AGREGO UNA LIBRERIA PARA IMPLEMENTAR UN EXAMINADOR DE SESIONES
    ESTO VA A BUSCAR SI  HAY UNA SESION Y ME REDIRIGE AUTOMATICAMENTE
--%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- EXAMINA SESIONES ABIERTAS Y HACE VALIDACION--%>
<t:if test="${sessionScope['sessionUsername']!=null}">
    <% response.sendRedirect("geekonn.jsp");%>
</t:if>
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
    <link href="recursos/css/index-css.css" rel="stylesheet">
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
              <li><a href="#myModal" data-toggle="modal" data-target="#myModal" id="a-iniciar-sesion">Inicia Seción</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- Termina navbar  -->
    <!-- Modal -->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="row-fluid">
        <div class="span12" id="color-modal"> 
          <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Inicio de sesión</h3>
          </div>
          <div class="modal-body">
            <div class="row-fluid">
              <div class="span6 offset3"> 
                <form action='InicioSesion' METHOD='POST' class='form-horizontal'>
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
          <div class="span12 pull-left"><h6>¿No estas registrado?<a href="registro.jsp">Registrate</a></h6></div>
          <div class="modal-footer">
            <button class="btn btn-primary" type="submit">Iniciar sesión</button>
               </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Termina Modal-->
    <div class="container-fluid" id="contenedor-principal">
              <div class="row-fluid tituloGeekOnn">
                  <div class="span12">
                      <center><img src="recursos/imagenes/index/tituloGeekOnn.png" alt=""></center>
                  </div>
              </div>
              <div class="row-fluid"></div>
              <div class="row-fluid"></div>
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
    <!-- Termina navbar  -->
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

  </body>
</html>
