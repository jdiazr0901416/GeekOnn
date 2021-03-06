<%-- 
    Document   : index
    Created on : 07-may-2013, 0:38:57
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
    <link href="recursos/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <script src="recursos/ajax/index.js"></script>
    <script src="recursos/ajax/validar.js"></script>
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js'></script>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <script type="text/javascript">
    window.___gcfg = {lang: 'es-419'};
    (function() {
      var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
      po.src = 'https://apis.google.com/js/plusone.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
    </script>

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
      <div class="row-fluid" id="recibidor">
          <div class="row-fluid header">
            <div class="span4 offset2 titulo-header">
              <center><p>GeekOnn</p></center>
              <br>
              <h4 class="pull-right">BETA 4.0</h4>
            </div>
            <div class="span4 logo-geekonn pull-left">
              <center><i class="icon-off"></i></center>
            </div>          
          </div>
          <div class="row-fluid separador"></div>
          <div class="span8 offset2 contenedor-index">
            <center><h3>GeekOnn es una red social enfocada a la gente que le gusta estar al día acerca de la tecnologia y de sus avances</h3></center><hr>
            <div class="row-fluid">
              <div class="span6">
                <center><h4>Deja al alcance de todos los avances tecnológicosque se te hagan interesantes.</h4></center><hr>
                <div class="row-fluid">
                  <div class="span12 contenedor-3-noticias">
                    <!-- beta 3 noticias -->
                    <div class="row-fluid publicacion-index">
                      <div class="span3 img-publicacion-index">
                        <center><i class="icon-off"></i></center>
                      </div>
                      <div class="span9">
                        <center><h4>Titulo publicación</h4></center><hr class="clase-hr">
                        <p align="justify">Esta es una breve descripción de la publicacion que se realizo en GeekOnn.</p>
                      </div>
                    </div> 

                    <div class="row-fluid publicacion-index">
                      <div class="span3 img-publicacion-index">
                        <center><i class="icon-off"></i></center>
                      </div>
                      <div class="span9">
                        <center><h4>Titulo publicación</h4></center><hr class="clase-hr">
                        <p align="justify">Esta es una breve descripción de la publicacion que se realizo en GeekOnn.</p>
                      </div>
                    </div> 
                    <!-- beta 3 noticias -->
                  </div>
                </div>
              </div>
              <div class="span6" id="respuestainicio">
                  <br><br><br>
                  <center><h1>Forma parte de nosotros!</h1></center>
              </div>
            </div>
            <div class="row-fluid">
              <div class="span4 facebook">
                <div class="fb-like-box" data-href="http://www.facebook.com/Geekonn" data-width="380" data-height="200" data-show-faces="true" data-stream="false" data-header="false"></div>
              </div>
              <div class="span4 google top">
                <div class="g-plusone google" data-size="tall" data-annotation="inline" data-width="380"></div>
              </div>  
              <div class="span4 twitter top">
                <a href="https://twitter.com/RedGeekOnn" class="twitter-follow-button twitter" data-show-count="false" data-lang="es" data-size="large">Seguir a @RedGeekOnn</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
              </div>    
            </div>
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
        <center><h3 id="myModalLabel">Inicia Sesión</h3></center>
      </div>
      <form action='InicioSesion' METHOD='POST' class='form-horizontal'>
      <div class="modal-body">
        <div class="row-fluid">
          <div class="span6 offset3"> 
           <br>
            <div class="control-group">
              <div class="controls" style="margin-left:0;">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-user"></i></span><input placeholder="Nombre de usuario o correo" type="text" size="25" id="username" name="nombreUsuario" tabindex="1" onkeyup="nUI(this.value)">
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
          <div class="span6"><h6 class="pull-left">¿Aún no formas parte de GeekOnn?<a href="registro.jsp">     Registrate</a></h6></div>
          <button class="btn btn-danger" type="submit" onclick="inicioSesion()"><strong>Iniciar Sesión</strong></button>
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
     <script src="recursos/ajax/index.js"></script>

  </body>
</html>
<%} else{
    response.sendRedirect("geekonn.jsp");
}
%>