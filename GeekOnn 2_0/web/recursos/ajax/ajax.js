function ajaxget(){

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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","resources/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}