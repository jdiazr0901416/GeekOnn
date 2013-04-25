package com.geekonn.servlets;


public class CrearPublicacion{
        /*SentenciasSQL sentenciasSQL = new SentenciasSQL();
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
        }*/
}