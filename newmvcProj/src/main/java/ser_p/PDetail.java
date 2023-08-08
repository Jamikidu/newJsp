package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model.BoardDAO;

public class PDetail implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		request.setAttribute("mainTitle", "Pokémon_detail");
		System.out.println("PDetail.execute() 실행");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		request.setAttribute("mainData", new BoardDAO().detail(id));
	}

}
