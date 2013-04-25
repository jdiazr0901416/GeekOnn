var nombreUsuarioG;
var mensajeG;
function recuperaIdSelect(str){
    this.nombreUsuarioG=str;
    console.log(str);
}
function recuperaMensaje(str2){
    this.mensajeG=str2;
    console.log(str2)
}
function nombreUsuario(){
    var nombre;
    nombre= this.nombreUsuarioG;
    var mensaje;
    mensaje= this.mensajeG;
    console.log(mensaje+"enviado")
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
        document.getElementById("contenedor-enviar-mensajes").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/mensajes/EnviarMensajes.jsp?nombre="+nombre+"&mensaje="+mensaje,true);
    conexion.send();
}