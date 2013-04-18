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
	  <div class="container-fluid" id="contenedor-mensajes">
		<div class="row-fluid">
		  <div class="span4" id="contenedor-ultimas-conversaciones">
			<br>
			<p class="text-center"><a href="#myModal" data-toggle="modal" data-target="#myModal" id="a-iniciar-sesion"><button type="button" class="btn btn-warning">Iniciar nueva conversación</button></a></p>
			<hr>
			<!-- Modal nueva conversacion -------------------------------------------------------------------------------------->
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="row-fluid">
				<div class="span12" id="color-modal"> 
				  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h3 id="myModalLabel">Nueva conversación</h3>
				  </div>
				  <div class="modal-body">
					<div class="row-fluid">
					  <div class="span6 offset3"> 
						<form action='' METHOD='POST' class='form-horizontal'>
						  <center><h4>Seleciona  a tu amigo:&nbsp;<h4><select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						  </select></center>
						  <br>
						  <textarea rows="4" class="span12"></textarea>
					  </div>
					</div>
				  </div>
				  <div class="modal-footer">
					<button class="btn btn-primary" type="submit">Enviar Mensaje</button>
					   </form>
				  </div>
				</div>
			  </div>
			</div>
			<!-- Termina Modal ---------------------------------------------------------------------------------->
                        <!-- para recuperar de quien es cada conversacion en la secion de cada usuario se encontrara su id
                        por ejemplo id=1 luego al imprimir cada conversacion reciente se mandara como parametro al metodo
                        respuestaConversacion(el nombre de usuario o mas facil su id)asi cuando el metodo reciba en el ajax explico que hacer
			<!-- este es un usuarui que envio mensaje anterior mente ...............................-->
			<div class="row-fluid mostrar-conversacion" id="mensaje">
			  <div class="span4" >
				<img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario" onclick="respuestaConversacion()">
			  </div>
			  <div class="span8">
				<center><h4>Nombre de usuario</h4></center>
				<hr>
				<p>ultimo mensaje</p>
			  </div>
			</div>
			<!-- este es un usuarui que envio mensaje anterior mente ...............................-->
			<!-- este es un usuario que envio mensaje anterior mente ...............................-->
			<div class="row-fluid mostrar-conversacion" id="mensaje">
			  <div class="span4" >
				<img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-mensaje-usuario" onclick="ejecutarajax()">
			  </div>
			  <div class="span8 ">
				<center><h4>Nombre de usuario </h4></center>
				<hr>
				<p>ultimo mensaje</p>
			  </div>
			</div>
			<!-- este es un usuarui que envio mensaje anterior mente ...............................-->
		  </div>
		  <div class="span8" id="contenedor-enviar-mensajes">
			 
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
  </body>
</html>