function informacionPerfil(){
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
        document.getElementById("respuestaPerfil").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/perfil/ajaxPerfil.jsp",true);
    conexion.send();
}