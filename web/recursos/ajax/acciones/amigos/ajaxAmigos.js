
function respuestaBusquedaAmigo(){
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
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("Encontrado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/amigos/AmigoEncontrado.jsp",true);
    //conexion.open("GET","recursos/ajax/acciones/conversacion.jsp?idUsuario",true);
    conexion.send();
}