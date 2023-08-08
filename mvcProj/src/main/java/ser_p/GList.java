package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.BoardDAO;
import model_p.GalleryDAO;

public class GList implements BoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("mainTitle", "갤러리");
		System.out.println("GList 실행");
		
		request.setAttribute("mainData",new GalleryDAO().list());
	}

}
