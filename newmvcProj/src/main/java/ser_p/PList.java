package ser_p;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model.BoardDAO;
import model.BoardDTO;

public class PList implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("mainTitle", "Pokémon");
		System.out.println("PList.execute() 실행");
		
		ArrayList<BoardDTO> mainData = new BoardDAO().list();
		
		request.setAttribute("mainData", mainData);
		
	}
	
}
