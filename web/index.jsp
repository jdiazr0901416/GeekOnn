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
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js'></script>
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
    <link rel="canonical" href="http://localhost:8080/GeekOnn/index.jsp">
    <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
    <script src="//connect.facebook.net/en_US/all.js"></script>
    

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
              <button class="btn btn-primary" type="submit"><strong>Iniciar sesión</strong></button>
               </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Termina Modal-->
              <div class="row-fluid tituloGeekOnn">
                  <center><img src="recursos/imagenes/index/on-off.png" alt="" id="onOff"></center>
                  <div class="span4 offset4">
                      <img src="recursos/imagenes/index/tituloGeekOnn.png" alt="" id="geekonn">
                  </div>
                  <div class="span2 offset1">
                      tus datos no estan correctos intentalo de nuevo
                  </div>
              </div>
              <div class="row-fluid top-titulo">
                  <div class="span5 offset1 bloque-izquierdo-uno">
                      <div class="row-fluid meta-black">
                          <div class="span12">
                              <center><h2>GeekOnn es:</h2></center><hr>
                          </div>
                      </div>
                      <div class="row-fluid">
                          <div class="span12">
                              <br>
                              <br>
                              <p class="text-center" id="descripcion"><strog>Una red social enfocada a la gente que le gusta estar al dia 
                              acerca de la tecnologia y de sus grandes avances.</strog></p>
                          </div>
                      </div>
                      <div class="row-fluid">
                          <div class="span8 offset2" id="contenedor5noticias">
                              <div class="span11">
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
                  <div class="span5 bloque-izquierdo-dos">
                      <div class="row-fluid meta-black">
                          <div class="span12">
                              <center><h2>Registrate!&nbsp;</h2></center><hr>
                          </div>
                      </div>
                      <div class="row-fluid">
                          <div class="span12">
                              <br>
                              <br>
                              <p class="text-center" id="descripcion"><strog>Una red social enfocada a la gente que le gusta estar al dia 
                              acerca de la tecnologia y de sus grandes avances.</strog></p>
                          </div>
                      </div>
                      <div class="row-fluid">  
                          <div class="span12">
                          <!-- -------------------------------------------- ------------------ -->
                         <div class="row-fluid">
                           <div class="span5 offset2" id="text-aling-right">
                             <h4>Nombre:</h4>
                         </div>
                         <div class="span5">
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
                           <div class="span5 offset2" id="text-aling-right">
                             <h4>Correo electronico:</h4>
                           </div>
                           <div class="span5">
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
                           <div class="span5 offset2" id="text-aling-right">
                             <h4>Contraseña:</h4>
                           </div>
                           <div class="span5">
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
                      <div class="row-fluid" id="facebook">
                        <div class="span4 facebook">
                            <div class="fb-like-box" data-href="http://www.facebook.com/Geekonn" data-width="292" data-height="200" data-show-faces="true" data-stream="false" data-header="false"></div>
                        </div>
                        <div class="span4 google">
                            <div class="g-plusone" data-size="tall" data-annotation="inline" data-width="200"></div>
                        </div>
                        <div class="span4 twitter">
                            <a href="https://twitter.com/RedGeekOnn" class="twitter-follow-button" data-show-count="false" data-lang="es" data-size="large">Seguir a @RedGeekOnn</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                        </div>
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
    <!-- Termina navbar  -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="recursos/bootstrap/docs/assets/js/jquery.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-transition.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-alert.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-modal.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-button.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-collapse.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-typeahead.js"></script>
    <script type='text/javascript' src='recursos/js/jquery.easing.1.2.js'></script>
    <script type='text/javascript' src='recursos/js/jquery.circulate.js'></script>
    <script type='text/javascript' src='recursos/js/example.js'></script>

  </body>
</html>
