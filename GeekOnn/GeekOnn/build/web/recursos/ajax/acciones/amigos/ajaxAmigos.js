var nombreUsuarioG;
var nombreUsuarioG2;
var nombreUsuarioG3;
function recuperaIdSelect(str){
    this.nombreUsuarioG=str;
    console.log(str);
}
function recuperaIdSelect2(str){
    this.nombreUsuarioG2=str;
    console.log(str);
}
function recuperaIdSelect3(str){
    this.nombreUsuarioG3=str;
    console.log("entre a id3 "+str);
}
function respuestaBusquedaAmigo(){
    var conexion;
    console.log("entre a rba");
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
        document.getElementById("encontrado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/amigos/AmigoEncontrado.jsp",true);
    conexion.send();
}
function bloquearUsuario(){
    var nombre;
    nombre=this.nombreUsuarioG;
    console.log("entre"+nombre);
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
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/bloquearAmigo.jsp?nombre="+nombre,true);
    conexion.send();
}
function desbloquearUsuario(){
    var conexion;
    var nombre;
    nombre= this.nombreUsuarioG2;
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
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/desbloquearAmigo.jsp?nombre="+nombre,true);
    conexion.send();
    
}
function buscarAmigo(str){
    var conexion;
    var nombre;
    nombre= str;
    console.log("este es buscar amigo " + str);
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
        document.getElementById("respuesta-buscar-amigo").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/buscarAmigo.jsp?nombre="+nombre,true);
    conexion.send();
}
function visitarAmigo(str){
    console.log("entre a visitar amigo");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/visitarAmigo.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}
function informacionPerfilVisitado(str){
    console.log("entre a visitar amigo visitado");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-visitado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/ajaxPerfilVisitado.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}
function AmigosVisitado(str){
    console.log("entre a visitar amigo visitado amigos");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-visitado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/ajaxAmigosVisitado.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}
function agregarAmigo(str){
    console.log("entre a agregar amigo");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/ajaxAgregarAmigo.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}
function publicacionesamigos(){
      console.log("entre a ver publicaciones amigos");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-visitado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/publicacionesAMigo.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}
function publicarMuro(str){
   console.log("entre a visitar publicarle amigo");
    var conexion;
    var idUsuarioVIsitado;
    idUsuarioVIsitado= str;
    console.log("este es buscar amigo " + idUsuarioVIsitado);
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
        document.getElementById("recibidor-ajax-visitado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/publicarMuroAmigo.jsp?idUsuarioVIsitado="+idUsuarioVIsitado,true);
    conexion.send();
}

