<%-- 
    Document   : perfil
    Created on : 16-abr-2013, 10:38:29
    Author     : Julio
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
    <link href="recursos/css/perfil.css" rel="stylesheet">
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
<!-- portada --------------------------------------- -->
<div class="container-fluid" >
        <div class="row-fluid">
                  <div class="row-fluid">
                    <div class="span12" id="portada">
                      <div class="row-fluid">
                        <div class="span2" id="portada-imagen-usuario"><img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="tamanio-imagen-portada"></div>
                        <div class="span6" id="portada-nombre-usuario"><h4>Nombre usuario</h4></div>
                        <div class="span1 offset3" id="portada-on-off"><img src="" class="img-rounded"></div>
                      </div>
                    </div>
                  </div>
                  <!-- portada --------------------------------------- -->
                  <!-- contenido perfil ................................. -------------------------------------------------------------------------------------------------------------------->
                  <div class="tabbable" >
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#Sobre-mi" data-toggle="tab" id="color-tabs">Sobre mi</a></li>
                      <li><a href="#Amigos" data-toggle="tab" id="color-tabs">Mis amigos</a></li>
                      <li><a href="#Ultimos-temas" data-toggle="tab" id="color-tabs">Mis ultimos temas de opinion</a></li>
                      <li><a href="#Favoritos" data-toggle="tab" id="color-tabs">Mis favoritos</a></li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="Sobre-mi">
                        <div class="container-fluid">
                          <div class="row-fluid">
                            <div class="span12" id="yo">
                              <center><h3>Acerca de mi:</h3></center>
                              <hr>
                              <p align="justify"></p>
                            </div>
                            <div class="row-fluid">
                              <div class="span6" id="lado-izquierdo">
                                <div class="row-fluid">
                                    <div class="span12" id="informacion-basica">
                                      <center><h4>Información básica:</h4></center>
                                      <hr>
                                      <p><b>Cumpleaños:</b></p>
                                      <p><b>Sexo:</b></p>
                                      <p><b>Situacion sentimental:</b></p>
                                    </div>
                                    <div class="span12" id="contacto">
                                      <center><h4>Contacto:</h4></center>
                                      <hr>
                                      <p><b>Correo electronico:</b></p>
                                      <p><b>Telefono movil:</b></p>
                                      <p><b>Telefono de casa o<br> trabajo:</b></p>
                                      <p><b>Lugar de residencia:</b></p>
                                    </div>
                                  </div>
                                </div>
                                <div class="span6" id="lado-derecho">
                                  <div class="row-fluid">
                                    <div class="span12" id="mi-experiencia">
                                      <center><h4>Mi experiencia:</h4></center>
                                      <hr>
                                      <p><b>Maximo grado de<br> estudios:</b></p>
                                      <p><b>Escuela:</b></p>
                                      <p><b>Especialidad:</b></p>
                                      <p><b>Cumpleaños:</b></p>
                                      <p><b>Profesión:</b></p>
                                      <p><b>Puesto:</b></p>
                                    </div>
                                    <div class="span12" id="filosofia">
                                      <center><h4>Mi filosofia:</h4></center>
                                      <hr>
                                      <p></p>
                                    </div>
                                  </div>
                                </div>
                          </div>
                          </div>  
                        </div> 
                      </div>
                      <div class="tab-pane" id="Amigos">
                        <p>Howdy, I'm in Section 2.</p>
                      </div>
                      <div class="tab-pane" id="Ultimos-temas">
                        <p>What up girl, this is Section 3.</p>
                      </div>
                      <div class="tab-pane" id="Favoritos">
                        <p>What up girl, this is Section 4.</p>
                      </div>
                    </div>
                  </div>
                      </div>
                  </div>
                  <!-- contenido perfil ................................. -------------------------------------------------------------------------------------------------------->

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