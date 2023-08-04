package ser_p;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import control.BoardService;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BWriteReg implements BoardService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {  // 알아서 public 이 붙음 interface에 의해서
		
		String path = request.getRealPath("up");
		path = "C:\\green_project\\new_jspwork\\java_work\\mvcProj\\src\\main\\webapp\\up";
		
		
		try {
			MultipartRequest mr = new MultipartRequest(
					request,
					path,
					10*1024*1024,
					"utf-8",
					new DefaultFileRenamePolicy()  // 파일이름 중복 해결
					);
			
			BoardDTO dto = new BoardDTO();
			dto.setTitle( mr.getParameter("title"));
			dto.setPname( mr.getParameter("pname"));
			dto.setPw( mr.getParameter("pw"));
			dto.setContent( mr.getParameter("content"));
			dto.setUpfile( mr.getFilesystemName("upfile")); // 올라가있는파일경로의이름
			
			new BoardDAO().write(dto);
			
			System.out.println("newId:"+dto.getId());
			
			request.setAttribute("mainPage", "alert"); // execute()가 끝날때 바꿔치기
			request.setAttribute("msg", "입력되었습니다.");
			request.setAttribute("goUrl", "BDetail?id="+dto.getId());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
