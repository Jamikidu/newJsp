package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/board/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		/*System.out.println(request.getRequestURI() + "= 프로젝트 + 파일경로");
		System.out.println(request.getContextPath()+"/board/");
		System.out.println(request.getContextPath() + "= 프로젝트 Path만 가져옴");*/
		
		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath()+"/board/").length()
				);  // board/ 뒤에 글자를 보고 처리하겠다
		System.out.println(serviceStr);
		
		try {
			BoardService service = (BoardService)Class.forName("ser_p."+serviceStr).newInstance();
			service.execute(request, response);
			
			request.setAttribute("mainPage", serviceStr);
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/views/template.jsp");
			
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
