/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geekon.servlets;

import com.geekon.system.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.geekon.security.*;

/**
 *
 * @author Alumnos
 */
public class InicioSesion extends HttpServlet {
    SentenciasSQL sentenciasSQL = new SentenciasSQL();
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
                            HttpSession sesionOk = request.getSession(true);
                            sesionOk.setAttribute("correoORusuario", idUsuario);
                            response.sendRedirect("./geekonn-personal.jsp");
                    }else{
                       request.setAttribute("error","Nombre o Password Incorrectos");
                       request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                    
            }catch(Exception e){
			System.out.println("SQL exception. .-." + e.getMessage());
		}
        }

}
