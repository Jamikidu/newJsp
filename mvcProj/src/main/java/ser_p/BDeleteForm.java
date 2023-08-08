package ser_p;

import java.util.ArrayList; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BDeleteForm implements BoardService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {  // 알아서 public 이 붙음 interface에 의해서
		
		request.setAttribute("mainTitle", "게시판 글삭제");
		System.out.println("BDeleteForm.execute() 실행");
		
	}

}
