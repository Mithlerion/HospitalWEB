package servlet.director;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.DirectorStub;
import servicios.DirectorStub.ObtenerMedicoMasSolicitado;
import servicios.DirectorStub.ObtenerMedicoMasSolicitadoResponse;


/**
 * Servlet implementation class ObtenerMedicosMasSolicitados
 */
public class SObtenerMedicosMasSolicitados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SObtenerMedicosMasSolicitados() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("deprecation")
		Date f1 = new Date (request.getParameter("fecha1"));
		@SuppressWarnings("deprecation")
		Date f2 = new Date (request.getParameter("fecha2"));
		
		DirectorStub dst = new DirectorStub();
		
		ObtenerMedicoMasSolicitado stObtenerMedMas = new ObtenerMedicoMasSolicitado();
		   stObtenerMedMas.setF1(f1);
		   stObtenerMedMas.setF2(f2);
		   
		ObtenerMedicoMasSolicitadoResponse obMedMasResponse = dst.obtenerMedicoMasSolicitado(stObtenerMedMas);
		
		String s= obMedMasResponse.get_return();
		   request.setAttribute("medicosmas", s);
		   response.getWriter().append(s);
	}

}
