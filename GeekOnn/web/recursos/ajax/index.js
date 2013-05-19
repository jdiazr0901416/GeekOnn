var nombreu;
var correou;
var contraseniau;
function nombre(str){
    this.nombreu=str;
    console.log(str);
}
function correo(str){
    this.correou=str;
    console.log(str);
}
function contrasenia(str){
    this.contraseniau=str;
    console.log(str);
}
function enviar(){
    console.log("entre a registrar")
    var nombrei=this.nombreu;
    var correoi=this.correou;
    var contraseniai=this.contraseniau;
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
        document.getElementById("recibidor").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","registro.jsp?nombre="+nombrei+"&correo="+correoi+"&contrasenia="+contraseniai,true);
    conexion.send();
}