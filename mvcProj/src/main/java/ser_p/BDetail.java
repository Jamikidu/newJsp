package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.BoardDAO;

public class BDetail implements BoardService{
	
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {  // 알아서 public 이 붙음 interface에 의해서
		
		request.setAttribute("mainTitle", "게시판 상세");
		System.out.println("BDetail.execute() 실행");
		
		int id = Integer.parseInt(request.getParameter("id"));
		new BoardDAO().addCount(id);
		//System.out.println(new BoardDAO().detail(id));  // 데이터 정확하게 들어왔나 확인
		request.setAttribute("mainData", new BoardDAO().detail(id));
	}

}
