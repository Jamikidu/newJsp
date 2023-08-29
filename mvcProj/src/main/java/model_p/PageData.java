package model_p;

import javax.servlet.http.HttpServletRequest;

public class PageData {
	
	public int limit = 3; //한 페이지에 나타낼 글 목록의 수
	public int pageLimit = 4; //페이지를 몇개씩 나타낼 것인가의 수
	//int start = 0;
	public int page, start, pageStart, pageEnd, total, pageTotal;
	// 초기페이지, 게시글시작번호, 표시되는 페이지의 첫번째, 표시되는 페이지의 마지막, 게시글의 총갯수, 표시되는 페이지의 총갯수
	
	public PageData(HttpServletRequest request) {
		
		page = 1; //첫번째페이지(초기값)
		
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
	}
	
	public void calc() {
		
		this.total = new BoardDAO().totalCnt();
		
		pageTotal = total/limit;
		
		if(total%limit>0) {
			pageTotal++;
		}
		
		System.out.println(pageTotal);
		
		
		start = (page-1)*limit;
		
		pageStart = (page-1)/pageLimit*pageLimit+1;
		pageEnd = pageStart + pageLimit -1;
		
		if(pageEnd > pageTotal) {
			pageEnd = pageTotal;
		}
		
		System.out.println(pageTotal+", "+pageEnd);
		System.out.println("start:"+start);
	}
	
	
	
	
}
