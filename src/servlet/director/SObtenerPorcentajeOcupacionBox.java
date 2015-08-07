package servlet.director;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bussines.DirectorStub;
import bussines.DirectorStub.ObtenerPorcentajeOcupacionBox;
import bussines.DirectorStub.ObtenerPorcentajeOcupacionBoxResponse;

/**
 * Servlet implementation class ObtenerPorcentajeOcupacionBox
 */
public class SObtenerPorcentajeOcupacionBox extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SObtenerPorcentajeOcupacionBox() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		@SuppressWarnings("deprecation")
		Date f1 = new Date(request.getParameter("fecha1"));
		@SuppressWarnings("deprecation")
		Date f2 = new Date(request.getParameter("fecha2"));
		int idBox = Integer.parseInt(request.getParameter("idBox"));

		DirectorStub dst = new DirectorStub();

		ObtenerPorcentajeOcupacionBox stObtenerPorBox = new ObtenerPorcentajeOcupacionBox();

		stObtenerPorBox.setBoxId(idBox);
		stObtenerPorBox.setF1(f1);
		stObtenerPorBox.setF2(f2);

		ObtenerPorcentajeOcupacionBoxResponse obBoxPorResponse = dst
				.obtenerPorcentajeOcupacionBox(stObtenerPorBox);

		int s = obBoxPorResponse.get_return();
		request.setAttribute("obtenerPorBox", s);
		response.getWriter().append(String.valueOf(s));
	}

}
