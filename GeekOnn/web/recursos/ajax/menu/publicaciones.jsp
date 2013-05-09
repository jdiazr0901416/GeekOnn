<%-- 
    Document   : publicaciones
    Created on : 08-may-2013, 10:02:57
    Author     : Julio
--%>
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
    <script src="recursos/ajax/twitter/ajaxTwitter.js"></script>

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
      <div class="row-fluid fondo-info">
          <div class="span5">
              <div class="row-fluid">
                  <center><h2>Tus ultimas publicaciones</h2></center><hr>
              </div>
              <div class="row-fluid">
                  <center><a href="#myModal" data-toggle="modal" data-target="#myModal" id="a-iniciar-sesion"><button type="button" class="btn btn-success">Has una nueva publicación</button></a></p></center>
                  <!-- beta publicacion -->
                  <div class="span12">
                      <div class="row-fluid publicacion">
                          <div class="span3">
                              <center><i class="icon-picture imagen-publicacion-nula"></i></center>
                          </div>
                          <div class="span9">
                              <center><h3>Titulo de la publicación</h3></center><hr>
                              <div class="span8 offset2">
                                <p align="justify">este es el contido de mi publicacion, apoco no esta biuen bonito</p>
                              </div>
                          </div>
                      </div>
                  </div>
                  <!-- beta publicacion -->
              </div>
              </div>
          <div class="span7" id="contenedor-recibidor-publicacion-sesion">
              <!-- beta publicacion abierta -->
              <div class="row-fluid">
                  <div class="row-fluid"><center><h2>Titulo de la publicacion</h2></center><hr></div>
                  <div class="row-fluid">
                      <div class="span3">
                          <center><i class="icon-picture"></i></center>
                      </div>
                      <div class="span9">
                          <div class="span10 offset1" id="contenedor-descripcion-publicacion">
                              <p align="justify">
                                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet leo quis velit scelerisque 
                                  euismod at a risus. In at ante est. Etiam eget ultricies nisl. Proin vehicula viverra ipsum sit amet 
                                  cursus. Quisque ac sapien urna, sed fermentum est. Vestibulum condimentum, nisi quis condimentum suscipit, 
                                  velit sapien malesuada risus, in consequat turpis quam sit amet ligula. Nullam non tortor eget quam rutrum 
                                  luctus vitae non ipsum. Ut vitae tellus vitae lacus commodo vehicula ac vel mauris. Proin ante nulla, 
                                  fermentum id fermentum in, gravida eu quam. Proin sit amet mi quam. Nulla facilisi. Morbi vitae leo leo. 
                                  Nam enim turpis, tincidunt congue condimentum ac, elementum vel enim. Cras diam odio, 
                                  sollicitudin id sodales pharetra, dignissim ac elit.
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
      <!-- Modal publicacion-->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <center><h3 id="myModalLabel">Nueva publicación</h3></center>
      </div>
      <form action='InicioSesion' METHOD='POST' class='form-horizontal'>
      <div class="modal-body">
        <div class="row-fluid">
            <div class="span3">
                 <center><i class="icon-picture imagen-publicacion-nula-modal"></i></center>
            </div>
            <div class="span9">
                <div class="row-fluid">
                    <div class="span12"><strong>Titulo de la publicacion:</strong><input type="text"><hr></div>
                </div>    
                <div class="row-fluid">
                    <center><strong>Contenido de la publicacion:</strong></center><br>
                    <textarea rows="4" class="span12"></textarea>
                </div>
            </div>
        </div>
      </div>
      <div class="modal-footer">
          <div class="row-fluid">
              <div class="span6">
                  <div class="pull-left fuente"><input type="checkbox" onclick="checkboxOn()">&nbsp;Twittear&nbsp;<i class="icon-twitter"></i></div>
              </div>
              <div class="span6"><button class="btn btn-danger" type="submit"><strong>Publicar</strong></button></div>
          </div>
        </form>
      </div>
    </div>
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
    <script src="recursos/ajax/twitter/ajaxTwitter.js"></script>
  </body>
</html>
<%}%>