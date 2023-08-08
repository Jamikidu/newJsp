package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gallery/*")
public class GalleryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GalleryController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//System.out.println(request.getRequestURI());
		//System.out.println(request.getContextPath()+"/gallery/");
		
		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath()+"/gallery/").length()
				);
		System.out.println(serviceStr);
		
		try {
			request.setAttribute("mainPage", "gallery/"+serviceStr);
			
			BoardService service = (BoardService)Class.forName("ser_p."+serviceStr).newInstance();
			service.execute(request, response);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/template.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
