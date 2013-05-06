<%-- 
    Document   : geekonn-P
    Created on : 15-abr-2013, 10:22:41
    Author     : Julio
--%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${sessionScope['sessionUsername']==null}">
    <% response.sendRedirect("index.jsp");%>
</t:if>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));
System.out.println(idUsuario);
%>

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
    <script src="recursos/ajax/acciones/mensajes/ajaxMensajes.js"></script>
    <script src="recursos/ajax/acciones/conf/ajaxConfiguracion.js"></script>
    <script src="recursos/ajax/acciones/amigos/ajaxAmigos.js"></script>

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
            <img alt='' src="recursos/imagenes/logo/geekonn.png" height="60" width="140">
          </a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <div class="btn-group">
                <button  data-toggle="dropdown"><img alt='' src="recursos/imagenes/imagenesUsuario/navbar/icon-user.png"></button>
                <ul class="dropdown-menu pull-right">
                  <li><a onclick="respuestaConfiguracion()">Opciones</a></li>
                  <li class="divider"></li>
                  <li><a href="LogOut">Cerrar Sesión</a></li>
                </ul>
              </div>
            </ul>
            <ul class="nav pull-right">
              <li><a href="perfilUsuario.html" id="nav-imgUsuario-Nombre"><%=(String)session.getAttribute("sessionUsername")%></a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- Termina navbar  -->

      <div class="row-fluid" id="contenedor-principal">
        <div class="span1" id="menu">
          <div class="row-fluid" id="contenedor-iconos">
              <div class="span12" id="M-home" rel="popover" data-content="Observa todas los nuevos avances tecnologicos que tus amigos tienen para ti" data-original-title="NewsFeed">
              <p><i class="icon-home icon-white pull-right icon-4x" id="icon-white-menu-mn"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-perfil"  rel="popover" data-content="Revisa lo que tienes para mostrar hacia tus amigos en geekonn, aqui estan tus datos y demas" data-original-title="Perfil">
              <p><i class="icon-user icon-white pull-right icon-4x" id="icon-white-menu-mn"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-mensajes"  rel="popover" data-content="Comunicate con tus amigos, no te quedes con las palabras en la mente" data-original-title="Mensajes">
              <p><i class="icon-envelope-alt icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
           <div class="row-fluid">
            <div class="span12" id="M-amigos"  rel="popover" data-content="Aqui estan los enlaces a lois muros de tus amigos, hay varias opciones de control aqui" data-original-title="Amigos">
              <p><i class="icon-group icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="M-opiniones"  rel="popover" data-content="comparte algo nuevo al mundo geek, que nadie se quede sin saberlo" data-original-title="Opiniones">
              <p><i class="icon-comment icon-white pull-right icon-3x" id="icon-white-menu"></i></p>
            </div>
          </div>
        </div>
        <div class="span9" id="principal">
                <div class="container-fluid" id="contenedor-principal-geekoonn">
                    <div class="row-fluid">
                        <div class="span8 offset2" id="contenedorOpiniones">
                            <div class="row-fluid border-bottom">
                                <center><h2>Lo que los geeks tienen para ti:</h2></center>
                            </div>
                            <div class="row-fluid" >
                                <div id="span12">
                                    <div class="row-fluid">
                                        <div class="span8 offset2" id="recuperarOpiniones">
                                            <!-- beta publicacion -->
                                            <div class="row-fluid publicacion">
                                                <div class="span3">
                                                    <i class="icon-comments icon-4x"></i>
                                                </div>
                                                <div class="span9 " value="idPublicacion">
                                                    <div class="row-fluid">
                                                        <h3>Este es el titulo de mi publicacion</h3>
                                                        <hr>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <p class="justify">Esta es la breve descripcion de lo que trata mi publicacion</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- beta publicacion -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="span2" id="contenedorMiniNewsFeed">
            <!-- beta minipublicacion -->
            <div class="row-fluid ">
                <div class="span11 mpublicacion" value="idPublicacion">
                    <div class="row-fluid">
                        <div class="span12">
                            <center><h6>Este es el titulo de mi publicacion</h6></center><hr>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span3">
                            <i class="icon-comments icon-4x"></i>
                        </div>
                        <div class="span9">
                         <p class="justify">Esta es la breve descripcion de lo que trata mi publicacion</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- beta publicacion -->
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
    <script src="recursos/ajax/popOvers/popOvers.js"></script>
    
    
    
  </body>
</html>