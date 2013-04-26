<%-- 
    Document   : geekonn-P
    Created on : 15-abr-2013, 10:22:41
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
    <!-- Le styles -->
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/amigos.css" rel="stylesheet">
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
<!-- amigos!------------------------------------------------------------------------------------------------------------------------------------ -->
    <div class="container-fluid" >
        <div class="row-fluid">
            <div class="span9" id="contenedor-amigos">
                <div class="row-fluid">
                    <!-- este es un amigo -->
                    <div class="span2" id="amigo">
                        <div class="span12" >
                            <center><img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-del-usuario"></center>
                        </div>
                        <div class="span12">
                            <button type="button" class="btn btn-inverse pull-left botones-bloqueo"><i class="icon-ban-circle icon-white icon-1x"></i></button>
                            <button type="button" class="btn btn-danger pull-right botones-bloqueo"><i class="icon-minus icon-white icon-1x " ></i></button>
                        </div>
                    </div>
                    <!-- /este es un amigo -->
                </div> 
                
            </div>
            <div class="span3" id="contenedor-configuracion-principal">
                <div class="row-fluid">
                      <div class="span12">
                            <div class="row-fluid">
                                <div class="row-fluid meta-black">
                                    <div class="span12">
                                        <p class="text-center"><b>Configuración</b></p>
                                    </div>
                                </div>
                                <div class="row-fluid" id="bloqueo">
                                    <div class="span12">
                                        <div class="row-fluid">
                                            <div class="span3">
                                               <center><i class="icon-lock icon-4x icon-derecha"></i></center>
                                            </div>
                                            <div class="span9">
                                                <p class="text-center"><h4>Bloquear a esta persona</h4></p>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span3">
                                                <center><i class="icon-unlock icon-4x icon-derecha"></i></center>
                                            </div>
                                            <div class="span9">
                                                <p class="text-center"><h4>Desbloquear a esta persona</h4></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                    <div class="row-fluid busqueda-amigo">
                          <div class="span12">
                                <div class="row-fluid">
                                    <div class="row-fluid meta-black">
                                        <div class="span12">
                                            <p class="text-center"><b>Buscar un amigo</b></p>
                                        </div>
                                    </div>
                                    <div class="row-fluid" id="busqueda">
                                        <div class="span12 busqueda-amigo" >
                                            <center><div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                      <span class="add-on"><i class="icon-user"></i></span><input  class="input-large" type="text" tabindex="1">
                                                  </div>
                                                </div>
                                            </div></center>
                                        </div>
                                        <center><button type="button" class="btn btn-info">Buscar</button></center>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="row-fluid" id="Encontrado">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
