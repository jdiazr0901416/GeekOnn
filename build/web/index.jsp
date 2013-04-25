<%-- 
    Document   : index
    Created on : 15-abr-2013, 10:20:41
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
    <link href="recursos/bootstrap/docs/assets/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/index-css.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="recursos/bootstrap/docs/assets/js/html5shiv.js"></script>
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
            <img src="recursos/imagenes/logo/geekonn.png" height="60" width="140">
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
      <div class="row-fluid">
        <div class="span6" id="bloque-derecho">
            <center><h1>Unetenos!</h1></center>
            <br><br>
            <div class="span8 offset2">
              <p class="text-center" id="descripcion">Geekon es una red social enfocada a la gente que le gusta estar al dia acerca de la tecnologia y de sus grandes avances.</p>
            </div>
            <br><br><br>
            <hr>
            <div class="row-fluid">
              <div class="span3 offset1" id="imagen-on-off">
                <img src="recursos/imagenes/logo/on-off.png">
              </div>
              <div class="span7" id="descripcion-2">
                <p align ="justify"><br><br>Atrevete a entrar a un mundo donde puedes enseñarle al mundo todo lo que sabes acerca de los nuevos avances tecnologicos asi como ver lo que los demas tienen para ti. Descubre y explora un mundo de opinion donde estamos seguors la pasaras genial!.</p>
              </div>
            </div>
            <br>
            <p></p>
        </div>
        <div class="span6" id="bloque-izquierdo">
          <div class="row-fluid">
            <div class="span12" id="bloque-izquierdo-uno">
              <h1>Ponte en estado On!</h1>
              <br><br>
              <center><img src="recursos/imagenes/thumbnails/Estado-on.jpg"><center>
                <br>
            </div>
          </div>
          <div class="row-fluid">
            <div class="span12" id="bloque-izquierdo-dos">
              <center><h4>Ya quieres formar parte de nosotros? danos un poco de información</h4></center>
              <!-- -------------------------------------------- ------------------ -->
            <div class="row-fluid">
              <div class="span5 offset1" id="text-aling-right">
                <h4>Nombre:</h4>
            </div>
            <div class="span6">
              <div class="control-group" id="div-control-space">
                <div class="controls" style="margin-left:0;">
                  <div class="input-prepend">
                    <span class="add-on"><i class="icon-user"></i></span><input  class="input-medium" type="text" id="username" name="username" tabindex="1">
                 </div>
                </div>
              </div>
            </div>
            </div>
            <!-- -------------------------------------------- ------------------ -->
            <div class="row-fluid">
              <div class="span5 offset1" id="text-aling-right">
                <h4>Correo electronico:</h4>
              </div>
              <div class="span6">
                <div class="control-group" id="div-control-space">
                  <div class="controls" style="margin-left:0;">
                    <div class="input-prepend">
                      <span class="add-on"><i class="icon-envelope"></i></span><input class="input-medium" type="text" id="username" name="username" tabindex="1" id="form-input-space">
                  </div>
                  </div>
               </div>
              </div>
            </div>
            <!-- -------------------------------------------- ------------------ -->
            <!-- -------------------------------------------- ------------------ -->
            <div class="row-fluid">
              <div class="span5 offset1" id="text-aling-right">
                <h4>Contraseña:</h4>
              </div>
              <div class="span6">
                <div class="control-group" id="div-control-space">
                    <div class="controls" style="margin-left:0;">
                      <div class="input-prepend">
                        <span class="add-on"><i class="icon-lock"></i></span><input class="input-medium" type="text" id="username" name="username" tabindex="1">
                     </div>
                    </div>
                  </div>
              </div>
            </div>
            <!-- -------------------------------------------- ------------------ -->
            <center><button type="button" class="btn btn-success">Registrarme</button></center>
            <br>
            </div>
          </div>
        </div>
      </div>
      </div><!-- /row-->
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

  </body>
</html>
