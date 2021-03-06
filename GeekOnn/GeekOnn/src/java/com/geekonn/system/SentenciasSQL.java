package com.geekonn.system;

import java.io.PrintWriter;
import java.sql.*;

public class SentenciasSQL {
        private Connection conexion;
	private Statement statement;
	private ResultSet resultset;
	

    public SentenciasSQL() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException{
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
            conexionLocalJulio();
    }

    public void connect() throws SQLException {
            String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3306/geekonn";
            String mysqlUser = "root";
            String mysqlPassword="";

            conexion = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
            statement = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("\n Succes; connection established.");		
    }
    public void conexionLocalBatiz() throws SQLException {
            String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3306/geekonn";
            String mysqlUser ="root";
            String mysqlPassword="n0m3l0";

            conexion = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
            statement = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("\n Succes; connection established.");		
    }
    public void conexionLocalJulio() throws SQLException {
            String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3307/geekonn";
            String mysqlUser ="jdiazr0901416";
            String mysqlPassword="0421**";

            conexion = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
            statement = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("\n Succes; connection established.");		
    }
    public void conexionLocalJulioUbuntu() throws SQLException {
            String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3306/geekonn";
            String mysqlUser ="root";
            String mysqlPassword="0421**";

            conexion = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
            statement = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("\n Succes; connection established.");		
    }

    public void closeConnection() throws SQLException {
            if(resultset !=null) resultset.close();
            if(statement !=null) statement.close();
            if(conexion !=null) conexion.close();

            System.out.println("Connection closed succesfuly.");		
    }
/*******************************************************************************************************************************/    
/************************Iniciar Sesion de Usuario y registro******************************************************************/ 
    public void registrarNuevoUsuario(String nombreCompleto, String correoElectronico, String nombreUsuario, String password){
		try{
        statement=conexion.createStatement();
	statement.execute("INSERT INTO usuariosgeekonn " +  
                "(correo, password, nombre, nombreUsuario) " +
                "VALUES("
                + "'" + correoElectronico + "',"
                + "'" + password + "',"
                + "'" + nombreCompleto + "',"
                + "'" + nombreUsuario + "');" );
        int idUsuario = devolverIDUsuario(correoElectronico);
        crearTablaAmigos(idUsuario);
                        System.out.print("registrado");
		}catch(SQLException e){
			System.out.println("SQLError on al registrar usuario");
		}
	}
    public boolean inicioSesion(String correoOUsuario, String password){
    boolean boleano = false;
            try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE correo='" +
                    correoOUsuario + "' OR nombreUsuario='" + 
                    correoOUsuario + "' AND password='" + 
                    password + "';");
            if(resultset.next()){
                boleano = true;
            }
           
            }catch(SQLException e){
                        System.out.print("Error en inicioSesion");
            }
    return boleano;
    }  
/*******************************************************************************************************************************/    
/************************Iniciar Sesion de Usuario y registro******************************************************************/
    
/***********************************MENSAJES****************************************************/
/***********************************************************************************************/
     public void conversacion(int idUsuario1, int idUsuario2, String mensajeEnviado){
         int usuario1;
         int usuario2;
         String nombreTabla;
         try{
        statement = conexion.createStatement();
        if(idUsuario1 < idUsuario2){
            nombreTabla = "conversacion" + idUsuario1 + "para" + idUsuario2;
            usuario1 = idUsuario1;
            usuario2 = idUsuario2;
        }else{
            nombreTabla = "conversacion" + idUsuario2 + "para" + idUsuario1;
            usuario1 = idUsuario2;
            usuario2 = idUsuario1;
        }  
            resultset = statement.executeQuery("SELECT * FROM tablamensajes WHERE idUsuario1 =" + 
                        usuario1 + " AND idUsuario2=" + usuario2);
            
            if(resultset.next()){
                anyadirMensaje(nombreTabla, mensajeEnviado, idUsuario1, idUsuario2);
                System.out.println("entra a 1");
            }else{
                crearTablaConversacion(nombreTabla, mensajeEnviado, idUsuario1, idUsuario2);
                insertarTablaMensajes(usuario1, usuario2);
                System.out.println("entra a 2");
            }
        }catch(SQLException e ){
            System.out.println("Error en Conversacion " + e);
        }
    }
/**********************************Crear Tabla en Caso que no Exista****************************/
    public void crearTablaConversacion(String nombreTabla, String mensajeEnviado, int idUsuario1, int idUsuario2){
        try{
            statement = conexion.createStatement();
            String CrearTablaSentenciaSQL = "CREATE TABLE ".concat(nombreTabla).concat(
            "(idMensaje INTEGER NOT NULL AUTO_INCREMENT, ").concat(
            "idEmisor INTEGER NOT NULL, ").concat(
            "idReceptor INTEGER NOT NULL, ").concat(
            "mensaje VARCHAR(500), primary key(idMensaje))");
            statement.executeUpdate(CrearTablaSentenciaSQL);
            
            anyadirMensaje(nombreTabla, mensajeEnviado, idUsuario1, idUsuario2);
        }catch(SQLException e){
            System.out.println("Error en crearTablaConversacion" + e);
        }
    }
/*********************************Anyadir Nuevo Mensaje*****************************************/    
    public void anyadirMensaje(String nombreTabla, String mensajeEnviado, int idUsuario1, int idUsuario2){
        try{
            statement = conexion.createStatement();
            statement.execute("INSERT INTO ".concat(nombreTabla).concat("(idEmisor,idReceptor, Mensaje)").concat(
            " VALUES(" + idUsuario1 + "," + idUsuario2 + ",'" + mensajeEnviado + "')"));
        }catch(SQLException e){
            System.out.println("Error en anyadirMensaje " + e );
        }
    }
/********************************Insertar en tabla mensajes ************************************/
    public void insertarTablaMensajes(int idUsuario1, int idUsuario2){
        try{
            String InsertarTablaMensajes = "INSERT INTO tablamensajes values(" + idUsuario1 + "," + idUsuario2 + ")";
            statement.execute(InsertarTablaMensajes);
       }catch(SQLException e){
           System.out.println("Error en insertarTablaMensajes" + e);
        }     
    }
/*****************************Obtener conversaciones de un usuario******************************/
    public ResultSet obtenerConversaciones(int idUsuario){
        resultset = null;
        try{
            resultset =  statement.executeQuery("SELECT * FROM tablamensajes WHERE idUsuario1 =" + idUsuario + " OR idUsuario2 = " + idUsuario);
        }catch(SQLException e){
            System.out.println("Error en obtenerConversaciones" + e);
        }
        return resultset;
    }
/********************************Obtener mensajes **********************************************/
    public ResultSet obtenerMensajes(int idUsuario1, int idUsuario2){
        resultset = null;
        String nombreTabla = "";
        if(idUsuario1 < idUsuario2){
            nombreTabla = "conversacion" + idUsuario1 + "para" + idUsuario2;
        }else{
            nombreTabla = "conversacion" + idUsuario2 + "para" + idUsuario1;
        }
        try{
            statement =  conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM " + nombreTabla + " ORDER BY idMensaje DESC");
            
        }catch(SQLException e){
            System.out.println("Error en obtenerMensajes, " + e);
        }
        return resultset;
    }   
/***********************************************************************************************/
/*********************************Termina Mensajes**********************************************/
/***********************************************************************************************/
    
/***********************************************************************************************/
/*********************************Amigos**********************************************/  
    /************************************Agregar un Amigo*****************************************/    
    public void agregarAmigos(int usuario, int nuevoAmigo){
        String agregarPrimero =  "INSERT INTO tabla_amigos_".concat(String.valueOf(usuario)).concat(
                                 " VALUES(")+nuevoAmigo+", 0)";
        String agregarInversamente = "INSERT INTO tabla_amigos_".concat(String.valueOf(nuevoAmigo)).concat(
                                 " VALUES(")+usuario+", 0)";
        try{
            statement = conexion.createStatement();
            statement.execute(agregarPrimero);
            statement.execute(agregarInversamente);
        
        }catch(SQLException e){
            System.out.println("Error en agregarAmigos " + e);
        }
    }
    /*******************(false si no son amigos, true si lo son)*******************Revisar si ya son amigos********************/
    public Boolean revisarAmistad(int usuario, int amigoParaRevisar){
        Boolean respuesta = true;
        String revisarAmistad = "SELECT * FROM tabla_amigos_".concat(String.valueOf(usuario)).concat(
                                " WHERE idAmigo=")+amigoParaRevisar;
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery(revisarAmistad);
            if(!resultset.next()){
                respuesta = false;
            }
        }catch(SQLException e){
            System.out.println("Error en revisarAmistad " + e);
        }
        return respuesta;
    }
    public void crearTablaAmigos(int idUsuario){
        String nombreTabla = "tabla_amigos_".concat(String.valueOf(idUsuario));
        String sentenciaSQL = "CREATE TABLE " + nombreTabla + 
                "(idAmigo INTEGER NOT NULL AUTO_INCREMENT," + 
                "bloqueado INT, primary key(idAmigo))";
        try{
            statement = conexion.createStatement();
            statement.executeUpdate(sentenciaSQL); 
        }catch(SQLException e){
            System.out.println("Error en crearTablaAmigos");
        }
    }
    public ResultSet obtenerIdAmigos(int userId){
        ResultSet resultSet = null;
        String friendsTableName = "tabla_amigos_".concat(String.valueOf(userId));
        System.out.println(friendsTableName);
        try{
                resultSet = statement.executeQuery("SELECT * FROM "+ friendsTableName +" WHERE bloqueado = " + 0);
        }catch(SQLException e){
                System.out.println("SQLError al obtener ids ");
        }
        return resultSet;
    }
    public ResultSet obtenerIdAmigosBloqueados(int userId){
        ResultSet resultSet = null;
        String friendsTableName = "tabla_amigos_".concat(String.valueOf(userId));
        try{
                resultSet = statement.executeQuery("SELECT * FROM "+ friendsTableName +" WHERE bloqueado = " + 1);
        }catch(SQLException e){
                System.out.println("SQLError on getFriendsIDs bloqueados");
        }
        return resultSet;
    }
    public void blockAFriend(int userId,int friendId){
            String friendsTableName = "tabla_amigos_".concat(String.valueOf(userId));

            try{
                statement.execute("UPDATE " + friendsTableName + " SET bloqueado = 1" + 
                            " WHERE idAmigo = " + friendId);

            }catch(SQLException e){
                    System.out.println("SQLError on blockAFriend");
            }
    }

    public void unblockAFriend(int userId,int friendId){
            String friendsTableName = "tabla_amigos_".concat(String.valueOf(userId));
            try{
                statement.execute("UPDATE " + friendsTableName + " SET bloqueado = 0" + 
                            " WHERE idAmigo = " + friendId);

            }catch(SQLException e){
                    System.out.println("SQLError on unblockAFriend");
            }
    }
    /******revisa los amigos bloqueados, devuelve true si existe alguno, y false si no hay******/  
    public boolean revisarAmigosBloqueados(int idUsuario){
        boolean respuesta =  false;
            try{
                statement = conexion.createStatement();
                ResultSet resultset = statement.executeQuery("SELECT * FROM tabla_amigos_"+idUsuario+" WHERE bloqueado=1");
                if(resultset.next()){
                    respuesta = true;
                }
            }catch(SQLException e){
             System.out.println("Error en revisarAmigosBloqueados" + e);   
            }
        return respuesta;
    }
/**********************************************************************************************/
/*********************************termina Amigos**********************************************/    
    
/**********************************************************************************************/
/*********************************devolver informacion**********************************************/  
    public ResultSet devolverInformacionUsuario(int idUsuario){
         try{
             statement = conexion.createStatement();
             resultset = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE idusuario="+
                     idUsuario + ";");           
         }catch(SQLException e){
                        System.out.print("Error en devolver info usuario");
            }
         return resultset;
    }
    public int devolverIDUsuario(String nombreOCorreo){
        int idUsuario=0;
        try{
            statement=conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE Correo='" +
                    nombreOCorreo + "' OR nombreUsuario='" + 
                    nombreOCorreo + "';");
            if(resultset.next()){
                 idUsuario = resultset.getInt("idUsuario");
            }    
        }catch(SQLException e){
			System.out.println("SQLError on devolveridusuario");
       }    
        return idUsuario;
    }
    public ResultSet obtenerInfoUsuario(int userId){
        ResultSet resultSet = null;
        try{
        resultSet = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE idUsuario = " + userId);
        }catch(SQLException e){
        System.out.println("SQLError on getUserInfo");
        }
        return resultSet;
    }
    public String ObtenerUsernameSabiendoId(int idUsuario) throws SQLException{  
        String sql = "SELECT * FROM usuariosgeekonn WHERE idusuario='"+idUsuario+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            return rs.getString("nombreUsuario");
        }
        return null;
    }    
    public String ObtenerNombreSabiendoId(int idUsuario) throws SQLException{  
        String sql = "SELECT * FROM usuariosgeekonn WHERE idusuario='"+idUsuario+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            return rs.getString("nombre");
        }
        return null;
    }    
/**********************************************************************************************/
/*********************************devolver informacion**********************************************/  
    
/**********************************************************************************************/
/*********************************buscar revisar**********************************************/ 
    public ResultSet buscarUsuarioGeekonn(String nombreUsuario){
        ResultSet resultSet = null;
        try{
            statement=conexion.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE nombreUsuario like '%" + nombreUsuario + "%'");  
        }catch(SQLException e){
			System.out.println("SQLError on buscarUsuarioGeekonn");
       }    
        return resultSet;
    }
    public int revisar(String nombreUsuario) throws SQLException{   
        ResultSet resultSet = null;
        try{
            resultSet = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE nombreUsuario = '" + nombreUsuario + "'");
        }catch(SQLException e){
            System.out.println("SQLError on getUserInfo");
        }
        if(resultSet.isBeforeFirst()){
             return 1;
        }else{
             return 0;
        }   
  }
     public boolean comprobarCorreoOUsuarioYcontrasena(String correoOUsuario, String password) throws SQLException{
        ResultSet rs = null;
        try{
        String sql = "SELECT * FROM usuariosgeekonn WHERE correo='" +
                    correoOUsuario + "' OR nombreUsuario='" + 
                    correoOUsuario + "' AND password='" + 
                    password + "'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        return rs.next();
        }catch(SQLException e){
            System.out.print("Error en SentenciasSQL METODO: isAcountExist");
        }
        return rs.next();
   }
/**********************************************************************************************/
/*********************************buscar revisar**********************************************/ 
    
/**********************************************************************************************/
/****************************publicaciones*********************************/    
    public void crearPublicacion(int idUsuario, String nombrePublicacion,String descripcionPublicacion){
        try{
            statement = conexion.createStatement();
            statement.execute("INSERT INTO publicaciones" + 
                    "(idUsuario, nombrePublicacion, contenido)" + 
                    "VALUES(" + 
                    idUsuario + ",'" +
                    nombrePublicacion + "','" +
                    descripcionPublicacion + "');");
            crearTablaComentarios();
        }catch(SQLException e){
            System.out.println("Error en crear " + e);
        }
    }
    /*****************************************/
    public void crearTablaComentarios(){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM publicaciones");
            int ultimaPublicacion = 0;
        while(resultset.next()){
            ultimaPublicacion = resultset.getInt("idPublicacion");
        }
        String sentenciaSQL = "CREATE TABLE comentarios_pub_".concat(String.valueOf(ultimaPublicacion))+"(idUsuario int,comentarios varchar(500))";
            statement.executeUpdate(sentenciaSQL);
                
                }catch(SQLException e){
                    System.out.println("Error en crearTabla" + e);
                }
    }
/***************************Recuperar Todas Las Publicaciones**************************/
    public ResultSet todasPublicaciones(){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM publicaciones ORDER BY idPublicacion DESC");
        }catch(SQLException e){
            System.out.println("Error en todasPublicaciones " + e);
        }
        return resultset;
    }
/****************************Recuperar Publicaciones Propias****************************/  
    public ResultSet publicacioneaPropias(int IdUsuario){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM publicaciones WHERE idUsuario="
                    + IdUsuario + " ORDER BY idPublicacion DESC");
        }catch(SQLException e){
            System.out.println("Error en publicacionesPropias" +e);
        }
        return resultset;
    }
/*******************************Una sola Pub***********************************/
    public ResultSet unaPublicacion(int publicacion){
    resultset = null;
    String sentenciaSQL = "SELECT * FROM publicaciones WHERE idPublicacion="+publicacion;
    try{
        statement = conexion.createStatement();
        resultset = statement.executeQuery(sentenciaSQL);
    }catch(SQLException e){
        System.out.println("Error en unaPublicacion "+e);
    }
    
    return resultset;
    }
    /********************************************/
    public void comentarPublicacion(int usuario, int publicacion, String comentario){
        try{
            String sentenciaSQL = "INSERT INTO comentarios_pub_".concat(String.valueOf(publicacion))+ 
                                    " values("+usuario+",'"+comentario+"')";
        statement = conexion.createStatement();
        statement.execute(sentenciaSQL);
        }catch(SQLException e){
            System.out.println("Error en comentar " +e);
        }
    }
    /*****************************/
    public ResultSet todosComentarios(int publicacion){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM comentarios_pub_".concat(String.valueOf(publicacion)));
        }catch(SQLException e){
            System.out.println("error en todoscomentarios" + e);
        }
        return resultset;
    }
/**********************************************************************************************/
/****************************publicaciones*********************************/
    /*********************************INSERTAR A TABLA DE USUARIOS ONLINE**************************************************/    
public void ponerOnline(String Username){
    try{
        statement=conexion.createStatement();
	statement.execute("INSERT INTO usuariosonline " +  
                "(usuario) " +
                "VALUES("
                + "'" + Username + "');" );
        System.out.print("ponerOnline() Correcto ya esta Online");
		}catch(SQLException e){
			System.out.println("SQLError en ponerOnline SentenciasSQL");
		}
}
public boolean comprobarSiEstaOnline(String Username) throws SQLException{
        ResultSet rs = null;
        try{
        String sql = "SELECT * FROM usuariosonline WHERE usuario='" + 
                    Username + "'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        return rs.next();
        }catch(SQLException e){
            System.out.print("Error en SentenciasSQL METODO: comprobarSiEstaOnline" + e);
        }
        return rs.next();
   }
public void ponerOffline(String Username){
    try{
        statement=conexion.createStatement();
	statement.execute("DELETE FROM usuariosonline WHERE usuario='"+Username+"'");
        System.out.print("ponerOffline() Correcto");
		}catch(SQLException e){
			System.out.println("SQLError en ponerOffline SentenciasSQL");
		}
}
public void insertarK1K2(int userId,String k1,String k2){
           try{
                 statement.executeUpdate("UPDATE usuariosgeekonn SET k1='"+k1+"', k2='"+k2+"' WHERE idusuario = " + userId);

            }catch(SQLException e){
                    System.out.println("SQLError on registrar k1k2");
            }
    }

public ResultSet obtenerk1(int userId){
        ResultSet resultSet = null;
        try{
        resultSet = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE k1 = " + userId);
        }catch(SQLException e){
        System.out.println("SQLError on getUserInfo");
        }
        return resultSet;
    }
public ResultSet obtenerk2(int userId){
        ResultSet resultSet = null;
        try{
        resultSet = statement.executeQuery("SELECT * FROM usuariosgeekonn WHERE k2 = " + userId);
        }catch(SQLException e){
        System.out.println("SQLError on getUserInfo");
        }
        return resultSet;
    }
}
