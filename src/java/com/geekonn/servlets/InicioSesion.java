
package com.geekonn.servlets;

import com.geekonn.system.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.geekonn.security.*;

/**
 *
 * @author Alumnos
 */
public class InicioSesion extends HttpServlet {
    SentenciasSQL sentenciasSQL;
    Cifrar nuevoCifado = new Cifrar();

   public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		try {
			doStuff(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		try {
			doStuff(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
        public void doStuff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
                try{
                    String correoOUsuario = request.getParameter("nombreUsuario");
                    String password1 = request.getParameter("password");
                    String password = nuevoCifado.encriptar(password1);
                    boolean boleano = sentenciasSQL.inicioSesion(correoOUsuario, password);
                    if(boleano){
                            int idUsuario = sentenciasSQL.devolverIDUsuario(correoOUsuario);
                            /**************************************/
                            /**************************************/
                            /******Aqui se Crean las Sesiones******/
                            /**************************************/
                            /**************************************/
                            response.sendRedirect("./geekonn.jsp");
                    }else{
                       request.setAttribute("error","Nombre o Password Incorrectos");
                       request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                    
            }catch(Exception e){
			System.out.println("SQL exception. .-." + e.getMessage());
		}
        }
        public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try{
			sentenciasSQL = new SentenciasSQL();
                        // Aquí se declaran cuantos DatabaseHandler objects se requieran.
		}catch(ClassNotFoundException e){
			System.out.println("Clase no encontrada" + e.getMessage());
		}catch(InstantiationException e){
			System.out.println("Objeto no creado" + e.getMessage());
		}catch(IllegalAccessException e){
			System.out.println("Acceso ilegal" + e.getMessage());
		}catch(SQLException e){
			System.out.println("SQL exception. .-." + e.getMessage());
		}
	}

}
