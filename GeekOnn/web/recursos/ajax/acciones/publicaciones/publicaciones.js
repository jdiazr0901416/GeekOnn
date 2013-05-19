var tituloP
var contenidoP
function titulo(str){
    tituloP = str 
    console.log(tituloP)
}
function contenido(str){
    contenidoP = str
    console.log(contenidoP)
}
function crearPublicacion(){
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState==4 && conexion.status==200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/publicaciones/crearPublicacion.jsp?titulo="+tituloP+"&contenido="+contenidoP,true);
    conexion.send();
}
function prueba(str){
    var conexion;
    console.log(str)
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState==4 && conexion.status==200)
        {
        document.getElementById("contenedor-recibidor-publicacion-sesion").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/publicaciones/publicacion.jsp?idPublicacion="+str,true);
    conexion.send();
}


