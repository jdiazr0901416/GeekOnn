var nombre="";
var mail="";
var user="";
var espacios = false;
var cont = 0;
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

function final(){
console.log("Estoy dentro de validacion final");
if(this.nombre==""){
	alert("nombre esta vacio");
}else{
	console.log("No estaba vacio");
		if(isAlphabetic(this.nombre)==true){
			console.log("Paso solo letras, Pasamos al siguiente nivel");
				if(this.nombre.length>=5 & this.nombre.length<30){
					console.log("Buen nombre");
						if(validarEmail(this.mail)==!"" & validarEmail(this.mail)==true){
						 	console.log("Email correcto, pasa a nivel 3");
						 		if(this.user==""){
						 			alert("No ingreso nombre de usuario");
						 		}else{
						 			console.log("Metio user");
						 				if(isAlphabetic(this.user)==true){
						 					console.log("User tiene solo letras");
						 						if(this.user.length>4 & this.user.length<15){
						 							console.log("Buen User");
                                                                                                        existe(this.user);
						 								if(this.p1==""){
						 									alert("No ingreso contraseña");
						 								}else{
						 									console.log("Ingreso pass1");
						 										if(this.p1.lenght<6 & this.p1.lenght>14){
																	alert("Verifica tu contraseña debe tener mas de 6 caracteres pero menores a 14");
																	
																}else{
																	console.log("La p1 tiene los caracteres correctos");
                                                                                                                                        if(this.p1 === this.p2){
                                                                                                                                            console.log("se puede registrar");
                                                                                                                                            registrar();
                                                                                                                                        }else{
                                                                                                                                           alert("las contraseñas no coinciden");
                                                                                                                                        }
																}
																
						 								}
						 						}else{
						 							alert("Tu nombre de usuario debe ser mayor a 4 pero menor que 15 caracteres");
						 						}
						 				}else{
						 					alert("Nombre de usuario contiene caracteres invalidos");
						 				}
						 		}
						}else{
						 	alert("Email incorrecto");
						}
				}else{
					alert("Tu nombre debe tener mas de 5 caracteres pero no menos de 30");
				}
				
		}else{
			alert("nombre debe contener solo letras.");
		}
}
}
function isAlphabetic(cadena){
console.log("Entra cadena alfabetica y es: "+cadena);
      if (cadena.match(/^[a-zA-Z]+$/))
      {
        return true;
      }
      else
      {
        return false;
      }
}

function validarEmail(valor) {
	
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(valor)){
   console.log("La direccion de email " + valor + " es correcta.");
   return true;
  } else {
   console.log("La direccion de email es incorrecta.");
   return false;
  }
}
/*CONTRASEÑA*/

function validarContraEspacios(){
	while (!espacios && (cont < p1.length)) {
  if (p1.charAt(cont) == " ")
    espacios = false;
  cont++;
}
 
if (espacios) {
  console.log("La contrasena no puede contener espacios en blanco");
	return true;
}else{
	console.log("pass 1 no tiene espacios");
	return false;	
}
}
function registrar(){
    console.log("entre a registrar");
    var nombreI=this.nombre;
    var correo=this.mail;
    var nombreUsuario=this.user;
    var pass=this.p1;
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
    conexion.open("POST","recursos/ajax/menu/registrar.jsp?nombre="+nombreI+"&correo="+correo+"&nombreUsuario="+nombreUsuario+"&pass="+pass,true);
    conexion.send();
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