package com.geekon.servlets;

import com.geekon.security.Cifrar;
import com.geekon.system.SentenciasSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EnviarMensaje extends HttpServlet {
    SentenciasSQL sentenciasSQL = new SentenciasSQL();

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
            String cadenaIdUsuario1 = request.getParameter("idUsuario1");
            String cadenaIdUsuario2 = request.getParameter("idUsuario2");
            String mensajeEnviado = request.getParameter("mensajeEnviado");
            int idUsuario1 = Integer.parseInt(cadenaIdUsuario1);
            int idUsuario2 = Integer.parseInt(cadenaIdUsuario2);
            sentenciasSQL.conversacion(idUsuario1, idUsuario2, mensajeEnviado);
        }
}
