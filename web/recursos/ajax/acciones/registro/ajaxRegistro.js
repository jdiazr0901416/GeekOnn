function existe(str){
        var xmlhttp;
        if (str.length==0)
          { 
          document.getElementById("txtHint").innerHTML="";
          return;
          }
        if (window.XMLHttpRequest)
          {
          xmlhttp=new XMLHttpRequest();
          }
        else
          {
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
          }
            xmlhttp.onreadystatechange=function()
          {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
                 {
                 document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
                 }
          }
          xmlhttp.open("GET","recursos/ajax/acciones/registro/respuestaExiste.jsp?nU="+str,true);
          xmlhttp.send();
}
