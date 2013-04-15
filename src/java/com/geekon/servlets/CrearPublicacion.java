/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geekon.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.*;
import com.geekon.system.*;
/**
 *
 * @author Alumnos
 */
public class CrearPublicacion extends HttpServlet {
        SentenciasSQL sentenciasSQL = new SentenciasSQL();
        public void destroy() {
		super.destroy(); 
	}

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
            int idUsuario = 0;
            HttpSession sesionOk = request.getSession();
            if(sesionOk.getAttribute("correoORusuario")==null) {  
                    response.sendRedirect("./index.jsp");
            }else {
                    String iDUsuario = "" + sesionOk.getAttribute("correoORusuario");
                    idUsuario = Integer.valueOf(iDUsuario);
            }
            String nombrePublicacion = request.getParameter("nombrePublicacion");
            String descripcionPublicacion = request.getParameter("descripcionPublicacion");
            sentenciasSQL.crearPublicacion(idUsuario, nombrePublicacion, descripcionPublicacion);
                response.sendRedirect("./geekonn-personal.jsp");
        }
}