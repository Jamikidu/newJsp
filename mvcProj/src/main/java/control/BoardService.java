package control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService {
	
//	void meth_1() {
//		System.out.println("부모 meth_1()");
//	}  메서드의 내용을 정의할 수 없음 선언만 해줘야함!
	
	void execute(HttpServletRequest request, HttpServletResponse response);
}
