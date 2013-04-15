$(document).on('ready', inicio());

function inicio(){
  $('#M-home').on('click', respuestaNewsFeed());
  $('#M-perfil').on('click', respuestaPerfil());
  $('#M-mensajes').on('click', respuestaMensajes());
  $('#M-amigos').on('click', respuestaAmigos());
  $('#M-opiniones').on('click', respuestaOpiniones());
}
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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","recursos/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}
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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","recursos/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}
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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","recursos/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}
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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","recursos/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}
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
    document.getElementById("midiv").innerHTML=conexion.responseText;
    }
  }
conexion.open("GET","recursos/ajax/acciones/accion.jsp?variable=Hola",true);
conexion.send();
}





