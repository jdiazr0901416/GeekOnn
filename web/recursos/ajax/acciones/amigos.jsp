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
  </head>
  <body>
<!-- amigos!------------------------------------------------------------------------------------------------------------------------------------ -->
    <div class="container-fluid" id="contenedor-mensajes">
        <div class="row-fluid">
            <div class="span4">
                <center><h2>Todos tus amigos</h2></center><br>
                <div class="row-fluid" id="mensaje">
                    <div class="span4" >
                        <img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario">
                    </div>
                    <div class="span8">
                        <center><h4>Nombre de usuario </h4></center>
                        <hr>
                        <button type="button" class="btn btn-warning">Hacer Favorito</button><button type="button" class="btn btn-danger pull-right">Eliminar Amigo</button> 
                    </div>
                </div>
                <div class="row-fluid" id="mensaje">
                    <div class="span4" >
                        <img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario">
                    </div>
                    <div class="span8">
                        <center><h4>Nombre de usuario </h4></center>
                        <hr>
                        <button type="button" class="btn btn-warning">Hacer Favorito</button><button type="button" class="btn btn-danger pull-right">Eliminar Amigo</button> 
                    </div>
                </div>
                <div class="row-fluid" id="mensaje">
                    <div class="span4" >
                        <img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario">
                    </div>
                    <div class="span8">
                        <center><h4>Nombre de usuario </h4></center>
                        <hr>
                        <button type="button" class="btn btn-warning">Hacer Favorito</button><button type="button" class="btn btn-danger pull-right">Eliminar Amigo</button> 
                    </div>
                </div>
            </div>    
            <div class="span4">
               </center><h2>Tus amigos Favoritos</h2></center><br>
               <div class="row-fluid" id="mensaje-favorito">
                    <div class="span4" >
                        <img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario">
                    </div>
                    <div class="span8">
                        <center><h4>Nombre de usuario </h4></center>
                        <hr>
                        <button type="button" class="btn btn-warning">Hacer Favorito</button><button type="button" class="btn btn-danger pull-right">Eliminar Amigo</button> 
                    </div>
                </div>
            </div>    
            <div class="span4">
                </center><h2>Opciones</h2></center>
            </div>        
        </div>
    </div>
    </body>
</html>
