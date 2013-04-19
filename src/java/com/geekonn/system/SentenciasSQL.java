package com.geekon.system;

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
            String urlUsedForDatabaseConnection = "jdbc:mysql://189.134.55.105:3307/hugme";
            String mysqlUser = "jdiazr0901416";
            String mysqlPassword="CrYnEt1995";

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

    public void closeConnection() throws SQLException {
            if(resultset !=null) resultset.close();
            if(statement !=null) statement.close();
            if(conexion !=null) conexion.close();

            System.out.println("Connection closed succesfuly.");		
    }

/**************************Registro de Usuario*****************************************/    
     public void registrarNuevoUsuario(String nombreCompleto, String correoElectronico, String nombreUsuario, String password){
		try{
        statement=conexion.createStatement();
	statement.execute("INSERT INTO usuariosGeekonn " +  
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
     
/***********************Devolver IDUsuario por correoElectronico o nombreUsuario******************************/     
    public int devolverIDUsuario(String nombreOCorreo){
        int idUsuario=0;
        try{
            statement=conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM usuariosGeekonn WHERE Correo='" +
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
/************************Iniciar Sesion de Usuario******************************************************************/    
    public boolean inicioSesion(String correoOUsuario, String password){
    boolean boleano = false;
            try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM idusuario WHERE Correo='" +
                    correoOUsuario + "' OR Username='" + 
                    correoOUsuario + "' AND Password='" + 
                    password + "';");
            if(resultset.next()){
                boleano = true;
            }
           
            }catch(SQLException e){
                        System.out.print("Error");
            }
    return boleano;
    }
/**************************Devolver Informacion de Usuario************************************************/
    public ResultSet devolverInformacionUsuario(int idUsuario){
         try{
             statement = conexion.createStatement();
             resultset = statement.executeQuery("SELECT * FROM idusuario WHERE IdUsuario="+
                     idUsuario + ";");           
         }catch(SQLException e){
                        System.out.print("Error");
            }
         return resultset;
    }
/************************************************************************************/    
/*********************************AMIGOS*********************************************/
/************************************************************************************/
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
/****************************Crear Nueva Publicacion*********************************/    
    public void crearPublicacion(int idUsuario, String nombrePublicacion,String descripcionPublicacion){
        try{
            statement = conexion.createStatement();
            statement.execute("INSERT INTO publicaciones" + 
                    "(idUsuario, NombrePublicacion, Contenido)" + 
                    "VALUES(" + 
                    idUsuario + ",'" +
                    nombrePublicacion + "','" +
                    descripcionPublicacion + "');");
        }catch(SQLException e){
            System.out.println("Error");
        }
    }
/***************************Recuperar Todas Las Publicaciones**************************/
    public ResultSet todasPublicaciones(){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM publicaciones ORDER BY IdPublicacion DESC");
        }catch(SQLException e){
            System.out.println("Error en todasPublicaciones");
        }
        return resultset;
    }
/****************************Recuperar Publicaciones Propias****************************/  
    public ResultSet publicacioneaPropias(int IdUsuario){
        try{
            statement = conexion.createStatement();
            resultset = statement.executeQuery("SELECT * FROM publicaciones WHERE IdUsuario="
                    + IdUsuario + "ORDER BY IdPublicaciones DESC");
        }catch(SQLException e){
            System.out.println("Error en publicacionesPropias");
        }
        return resultset;
    }
/***********************************************************************************************/    
/***********************************MENSAJES****************************************************/
/***********************************************************************************************/
/********************************Comprobar la Tabla*************************************/    
    public void conversacion(int idUsuario1, int idUsuario2, String mensajeEnviado){
       try{
        statement = conexion.createStatement();
        String nombreTabla;
        if(idUsuario1 < idUsuario2){
            nombreTabla = "conversacion" + idUsuario1 + "para" + idUsuario2;
        }else{
            nombreTabla = "conversacion" + idUsuario2 + "para" + idUsuario1;
        }  
            resultset = statement.executeQuery("SELECT * FROM tablamensajes WHERE Tablas = '" + nombreTabla + "';");
            if(resultset.next()){
                anyadirMensaje(nombreTabla, mensajeEnviado);
            }else{
                crearTablaConversacion(nombreTabla, mensajeEnviado);
            }
        }catch(SQLException e ){
            System.out.println("Error en Conversacion");
        }
    }
/*************************Crear Tabla en Caso que no Exista******************/
    public void crearTablaConversacion(String nombreTabla, String mensajeEnviado){
        try{
            statement = conexion.createStatement();
            String CrearTablaSentenciaSQL = "CREATE TABLE ".concat(nombreTabla).concat(
            "(idMensaje INTEGER NOT NULL AUTO_INCREMENT, ").concat(
            "Mensaje VARCHAR(500), primary key(idMensaje))");
            statement.executeUpdate(CrearTablaSentenciaSQL);
            String InsertarTablaMensajesSentenciaSQL = "INSERT INTO tablamensajes(Tablas)".concat(
                   " VALUES('").concat(nombreTabla).concat("')");
            statement.execute(InsertarTablaMensajesSentenciaSQL);
            anyadirMensaje(nombreTabla, mensajeEnviado);
        }catch(SQLException e){
            System.out.println("Error en crearTablaConversacion");
        }
    }
/***************************Anyadir Nuevo Mensaje*******************************/    
    public void anyadirMensaje(String nombreTabla, String mensajeEnviado){
        try{
            statement = conexion.createStatement();
            statement.execute("INSERT INTO ".concat(nombreTabla).concat("(Mensaje)").concat(
            " VALUES('" + mensajeEnviado + "')"));
        }catch(SQLException e){
            System.out.println("Error en anyadirMensaje");
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
    public ResultSet obtenerInfoUsuario(int userId){
            ResultSet resultSet = null;
            try{
            resultSet = statement.executeQuery("SELECT * FROM usuariosGeekOnn WHERE idUsuario = " + userId);
            }catch(SQLException e){
            System.out.println("SQLError on getUserInfo");
            }
            return resultSet;
            }
}
/* obtener ids de los amigos-------------------------------*/
