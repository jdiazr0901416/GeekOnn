package com.geekon.system;

import java.sql.*;

public class DataBaseHandler {

        private String bd = "geekon";
	private String url="jdbc:mysql://127.0.0.1:3306/"+bd;
        private String usuario="root";
        private String password="n0m3l0";
        Connection conexion = null;

    public Connection getConnection(){

        try {
             Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {System.out.print("Error en Clase.por nombre" + ex);}

        try {
            conexion = DriverManager.getConnection(url,usuario,password);
            if (conexion!=null){
                System.out.println("Conexión a base de datos "+bd+" OK");
            }
        }catch(Exception e){e.printStackTrace();}
        return conexion;
   }
}

	/*
        
        
        public DataBaseHandler() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException{
		String driver = "com.mysql.jdbc.Driver";
		Class.forName(driver);
		conexionLocal();
	}
        public void connect() throws SQLException {
		String urlUsedForDatabaseConnection = "jdbc:mysql:/127.0.0.1:3306/geekon";
		String mysqlUser = "root";
		String mysqlPassword="";
		
		connection = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		System.out.println("\n Succes; connection established.");		
	}
	public void conexionLocal() throws SQLException {
		String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3307/geekon";
		String mysqlUser ="jdiazr0901416";
		String mysqlPassword="CrYnEt1995";
		
		connection = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		System.out.println("\n Succes; connection established.");		
	}
        public void conexionLocalBatiz() throws SQLException {
		String urlUsedForDatabaseConnection ="jdbc:mysql://127.0.0.1:3306/geekon";
		String mysqlUser ="jdiazr0901416";
		String mysqlPassword="0421**";
		
		connection = DriverManager.getConnection(urlUsedForDatabaseConnection, mysqlUser, mysqlPassword);
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		System.out.println("\n Succes; connection established.");		
	}
	
	public void closeConnection() throws SQLException {
		if(resultSet !=null) resultSet.close();
		if(statement !=null) statement.close();
		if(connection !=null) connection.close();
		
		System.out.println("Connection closed succesfuly.");		
	}*/





