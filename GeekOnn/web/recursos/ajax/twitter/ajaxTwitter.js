var checko;
checko =0;
var titutloPublicacion;
var ContendidoPublicacion;
function recuperaTitulo(str){
    this.titutloPublicacion=str;
    console.log(str);
}
function recuperaContenido(str){
    this.ContendidoPublicacion=str;
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