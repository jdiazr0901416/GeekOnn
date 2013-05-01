document.write("<script type='text/javascript' src='recursos/ajax/acciones/amigos/ajaxAmigos.js'></script>");
function respuestaNewsFeed(){
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/respuestaNewsFeed.jsp",true);
    conexion.send();
}

function respuestaPerfil(){
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/perfil.jsp",true);
    conexion.send();
}
function respuestaMensajes(){
    
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/mensajes.jsp",true);
    conexion.send();
}
function respuestaAmigos(){
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        
        }
      }
    conexion.open("GET","recursos/ajax/menu/amigos.jsp",true);
    conexion.send();
}
function respuestaOpiniones(){
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/opinion.jsp",true);
    conexion.send();
}
$(document).on('ready', inicio());
    function inicio(){
      $('#M-home').on('click', respuestaNewsFeed);
      $('#M-perfil').on('click', respuestaPerfil);
      $('#M-mensajes').on('click', respuestaMensajes);
      $('#M-amigos').on('click', respuestaAmigos);
      $('#M-opiniones').on('click', respuestaOpiniones);
    }
    




