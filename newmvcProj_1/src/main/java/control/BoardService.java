package control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService {
	
	void execute(HttpServletRequest request, HttpServletResponse response);
	// interface 로 메서드 선언만 해주고 정의는 X, 상속시 메서드를 무조건 재정의 하도록 강제성을 부여
}
