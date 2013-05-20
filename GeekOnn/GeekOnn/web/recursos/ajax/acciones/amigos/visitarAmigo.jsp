<%-- 
    Document   : visitarAmigo
    Created on : 08-may-2013, 22:01:34
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
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% int idUsuarioVisitado= Integer.parseInt(request.getParameter("idUsuarioVIsitado")); 
    System.out.println(idUsuarioVisitado);
    SentenciasSQL sentencias=new SentenciasSQL();
    String nombreVisitado=sentencias.ObtenerNombreSabiendoId(idUsuarioVisitado);
%>

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
    <script src="recursos/ajax/acciones/mensajes/ajaxAmigos.js"></script>

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
        <div class="row-fluid">
            <div class="row-fluid fondo-info">
                <div class="span1">
                <div class="row-fluid menu-perfil"><center><i class="icon-user icon-4x" id="acerca-perfil-visitado" title="<%=idUsuarioVisitado%>" onclick="informacionPerfilVisitado(this.title)"></i></center></div>
                <div class="row-fluid menu-perfil"><center><i class="icon-group icon-4x menu-perfil" id="amigos-perfil-visitado" title="<%=idUsuarioVisitado%>" onclick="AmigosVisitado(this.title)"></i></center></div>
                <div class="row-fluid menu-perfil"><center><i class="icon-comments icon-4x menu-perfil" title="<%=idUsuarioVisitado%>" onclick="publicarMuro(this.title)"></i></center></div>
                </div>
                <div class="span11" id="recibidor-ajax-visitado">
                    <div class="row-fluid titulo-acerca-mi">
                        <%
                        SentenciasSQL yason = new SentenciasSQL();
                        if(yason.revisarAmistad(idUsuario, idUsuarioVisitado)==false){
                            out.println("<center><h2>"+nombreVisitado+"</h2></center><i class='icon-plus icon-4x pull-right zoom' title='"+idUsuarioVisitado+"' onclick='agregarAmigo(this.title)'></i><hr>");
                        }else{
                            out.println("<center><h2>"+nombreVisitado+"</h2></center>");
                        }
                        %>
                        
                    </div>
                    <div class="row-fluid">
                        <div class="span2 offset1 top" id="foto-perfil">
                            <img alt='' src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png"  class="img-rounded span12 foto-perfil-2">
                        </div>
                        <div class="span8 top" id="biografia-perfil">
                            <div class="hero-unit biografia-perfil">

                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                    <div class="span10 offset1">
                    <div class="row-fluid separador-info">
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="row-fluid">
                                    <div class="span12" id="yo">
                                        <p class="text-center"><b>Acerca de mi:</b></p>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span10 offset1">
                                        <br>
                                        <center><p align="justify"><strong>bla bla bla de mi</strong></p></center>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid top" >
                        <div class="span6 top">
                            <div class="row-fluid separador-info">
                                <div class="row-fluid">
                                    <div class="span12" id="informacion-basica">
                                        <p class="text-center"><b>Información Basica:</b></p>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span10 offset1">
                                        <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Cumpleaños:</b></p>
                                                </div>
                                                <div class="span7">
                                                    <p><strong> bla bla bla</strong></p>
                                                </div>
                                        </div>
                                        <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Sexo</b></p>
                                                </div>
                                                <div class="span7">
                                                    <p><strong> bla bla bla</strong></p>
                                                </div>
                                        </div>
                                        <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Situación sentimental:</b></p>
                                                </div>
                                                <div class="span7">
                                                    <p><strong> bla bla bla</strong></p>
                                                </div>
                                        </div>
                                      </div>
                                </div>
                            </div>

                        <div class="row-fluid top separador-info">
                            <div class="row-fluid meta-titulo">
                                <div class="span12" id="experiencia">
                                    <p class="text-center"><b>Mi experiencia:</b></p>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="row-fluid">
                                    <div class="span10 offset1">
                                        <div class="row-fluid">
                                            <div class="span5">
                                                <p><b>Maximo grado de estudios</b></p>
                                            </div>
                                            <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span5">
                                                <p><b>Escuela:</b></p>
                                            </div>
                                            <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span5">
                                                <p><b>Especialidad</b></p>
                                            </div>
                                            <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                        </div>

                                        <div class="row-fluid">
                                            <div class="span5">
                                                <p><b>Profesión</b></p>
                                            </div>
                                            <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span5">
                                                <p><b>Puesto:</b></p>
                                            </div>
                                            <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>  
                             </div>
                            </div>
                        </div>
                    <div class="span6 top">
                            <div class="row-fluid separador-info">
                                <div class="row-fluid meta-titulo">
                                    <div class="span12" id="contacto">
                                        <p class="text-center"><b>Contacto:</b></p>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="row-fluid">
                                        <div class="span10 offset1">
                                            <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Correo Electronico:</b></p>
                                                </div>
                                                <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                            </div>
                                            <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Telefono movil:</b></p>
                                                </div>
                                                <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                            </div>
                                            <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Telefono de casa o trabajo:</b></p>
                                                </div>
                                                <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                            </div>
                                            <div class="row-fluid">
                                                <div class="span5">
                                                    <p><b>Lugar de residencia:</b></p>
                                                </div>
                                                <div class="span7">
                                               <p><strong> bla bla bla</strong></p>
                                            </div>
                                            </div>
                                        </div>
                                     </div>    
                                </div>
                            </div>
                            <div class="row-fluid top separador-info">
                                    <div class="row-fluid">
                                        <div class="span12" id="filosofia">
                                            <p class="text-center"><b>Manera de ser y de pensar:</b></p>
                                        </div>
                                    </div>
                                    <div class="row-fluid" >
                                        <div class="span10 offset1">
                                            <br>
                                            <center><p align="justify"><strong>bla bla bla de mi</strong></p></center>
                                            <br>
                                        </div>
                                    </div>
                           </div></div></div>
                </div>
            </div>
          </div>
        </div>
        </div>
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
    <script src="recursos/ajax/acciones/mensajes/ajaxAmigos.js"></script>

  </body>
</html>
<%}%>