package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.GalleryDAO;

public class GDetail implements BoardService{

	public void execute(HttpServletRequest request, HttpServletResponse response) {  // 알아서 public 이 붙음 interface에 의해서
			
			request.setAttribute("mainTitle", "갤러리 상세");
			System.out.println("GDetail 실행");
			
			int gid = Integer.parseInt(request.getParameter("gid"));
			/* new BoardDAO().addCount(id); */
			request.setAttribute("mainData", new GalleryDAO().detail(gid));
		}
}
