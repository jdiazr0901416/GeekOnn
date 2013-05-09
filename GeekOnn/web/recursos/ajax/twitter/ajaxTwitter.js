var checko;
checko =0;
var titutloPublicacion;
var ContendidoPublicacion;
var pin;
var token;
function recuperaTitulo(str){
    this.titutloPublicacion=str;
    console.log(str);
}
function recuperaContenido(str){
    this.ContendidoPublicacion=str;
    console.log(str);
}
function enviarpin(str,token){
    this.pin=str;
    this.token=token;
    console.log(str);
}
function checkboxOn(){
    console.log("entre a check");
    if (this.checko===0){
        this.checko=1;
        console.log("lo hice 1");
    }else{
        this.checko=0;
        console.log("lo hice 0");
    }
}
function publicar(){
    if(this.checko===1){
        console.log("ok,lo publicare en twitter");
        llamarTwitter();
    }else{
        console.log("ok,no publicare en twitter");
    }
}
function llamarTwitter(){
    var conexion;
    console.log("entre a llamarTwitter");
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
    conexion.open("GET","recursos/ajax/twitter/AjaxTwitter.jsp",true);
    conexion.send();
}
function insertarkeys(){
    var pini
    pini=this.pin;
    var tok=this.token;
    console.log(pini);
    var k1;
    var conexion;
    console.log("entre a llamarTwitter");
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
    conexion.open("GET","recursos/ajax/twitter/insertarkeys.jsp?pin="+pini+"&token="+token ,true);
    conexion.send();
}