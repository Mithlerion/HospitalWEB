package servlet.director;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.DirectorStub;
import servicios.DirectorStub.ObtenerPacientesMasAtendido;
import servicios.DirectorStub.ObtenerPacientesMasAtendidoResponse;

/**
 * Servlet implementation class ObtenerPacientesMasAtendidos
 */
public class SObtenerPacientesMasAtendidos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SObtenerPacientesMasAtendidos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("deprecation")
		Date f1 = new Date(request.getParameter("fecha1"));
		@SuppressWarnings("deprecation")
		Date f2 = new Date(request.getParameter("fecha2"));

		DirectorStub dst = new DirectorStub();

		ObtenerPacientesMasAtendido stObtenerPacMas = new ObtenerPacientesMasAtendido();

		stObtenerPacMas.setF1(f1);
		stObtenerPacMas.setF2(f2);
		
		ObtenerPacientesMasAtendidoResponse obPacMasResponse = dst
				.obtenerPacientesMasAtendido(stObtenerPacMas);

		String s = obPacMasResponse.get_return();
		request.setAttribute("pacientemas", s);
		response.getWriter().append(s);
	}

}
