
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
    conexion.open("GET","recursos/ajax/acciones/respuestaNewsFeed.jsp",true);
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
    conexion.open("GET","recursos/ajax/acciones/perfil.jsp",true);
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
    conexion.open("GET","recursos/ajax/acciones/mensajes.jsp",true);
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
    conexion.open("GET","recursos/ajax/acciones/amigos.jsp",true);
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
    conexion.open("GET","recursos/ajax/acciones/opinion.jsp",true);
    conexion.send();
}
function respuestaConversacion(/*idUsuario*/){
    var conexion;
    /*al recibir el id del usuario podemos pasar por url el id del usuario faciulmente al jsp que se encarga de generar la conversacion
     * FORZOSAMENTE AL CONVERSACION.JSP*/
    console.log("entro a conversacion")
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      console.log("entro a conexion actualizada")
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("contenedor-enviar-mensajes").innerHTML=conexion.responseText;
        console.log("documento listo debio cargar")
        }
      }
    conexion.open("GET","recursos/ajax/acciones/conversacion.jsp",true);
    //conexion.open("GET","recursos/ajax/acciones/conversacion.jsp?idUsuario",true);
    conexion.send();
}
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
    conexion.open("GET","recursos/ajax/acciones/AmigoEncontrado.jsp",true);
    //conexion.open("GET","recursos/ajax/acciones/conversacion.jsp?idUsuario",true);
    conexion.send();
}
$(document).on('ready', inicio());
    function inicio(){
      $('#M-home').on('click', respuestaNewsFeed);
      $('#M-perfil').on('click', respuestaPerfil);
      $('#M-mensajes').on('click', respuestaMensajes);
      $('#M-amigos').on('click', respuestaAmigos);
      $('#M-opiniones').on('click', respuestaOpiniones);
      //$('.mostrar-conversacion').on('click', respuestaConversacion);
    }
    




