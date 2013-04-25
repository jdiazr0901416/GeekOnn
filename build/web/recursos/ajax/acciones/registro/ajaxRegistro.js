function existe(str){
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
        document.getElementById("respuestaNU").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/registro/respuestaExiste.jsp?nU="+str,true);
    conexion.send();
}
