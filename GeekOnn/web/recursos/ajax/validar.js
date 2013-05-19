var nombre="";
var mail="";
var user="";
var p1 = "";
var p2 = "";

function recuperarNombre(nombreI){
this.nombre=nombreI;

}
function recuperarEmail(valor){
	this.mail=valor;
	
}
function recuperarUser(valorUser){
	this.user=valorUser;
        existe(this.user);
}
function recuperarContra1(contra1){
	this.p1=contra1;
}
function recuperarContra2(contra2){
	this.p2=contra2;
}
function existe(str){
    console.log("entre a existe"+str);
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
        document.getElementById("input-nombre-usuario").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/registro/respuestaExiste.jsp?nU="+str,true);
    conexion.send();
}