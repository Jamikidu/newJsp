<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examReg</title>
</head>
<body>
<h1>examReg</h1>
<%

	//초기화
	String [] pname = request.getParameterValues("pname");  /* name="pname" 으로 넘어온 값을 받아줌 */
	String [] title = "kor,eng,mat".split(",");  /* ,을 기준으로 문자 나눔 */
	// title = [kor, eng, mat]
			    //0   1    2
	int [][] arr = new int[title.length][pname.length];
	/* arr[0]은 kor(국어) 점수들의 집합, arr[1]은 eng(영어) 점수들의 집합, arr[2]은 mat(수학) 점수들의 집합 */
	/* 2차원 배열 출력 여기서 하면 0 값만 나오므로 제일 밑에서 해보자 */
	/* for(int i=0; i<arr.length; i++){
		int [] inarr = arr[i];
		for(int j=0; j<inarr.length; j++){
			System.out.print(inarr[j]+" ");
		}
		System.out.println();
	} */
	
	
	//   ? 각 사람
	//res[?][0] - 사람 ? 의 총점
	//res[?][1] - 사람 ? 의 평균
	//res[?][2] - 사람 ? 의 등수
	int [][] res = new int[pname.length][title.length];
	
	
	// 입력부
	for(int i = 0; i<title.length; i++){
		String [] jj = request.getParameterValues(title[i]);  /* title의 i번째로 되어있는 문자값으로 넘어온 값을 받는다 ex)첫번째는 kor(국어).. 두번째는 eng(영어)..*/
		System.out.print(title[i]+": "+ Arrays.toString(jj)+"\n");  /* jj 콘솔에 출력 */
		for(int j = 0; j<jj.length; j++){
			arr[i][j] = Integer.parseInt(jj[j]);  /* arr[0][0~4] :: kor(국어)의 점수들의 집합, arr[1][0~4] :: eng(영어)의 점수들의 집합 */
		}
	}
	
	
	//연산부
	// p : 사람
	for(int p = 0; p<res.length; p++){
		
		//총점
		res[p][0] = 0;
		
		//점수 : j 과목
		for(int j = 0; j<arr.length; j++){
			res[p][0] += arr[j][p];
		}
		
		//평균
		res[p][1] = res[p][0]/arr.length;
	} 
	
	//분석
	for(int me = 0; me<res.length; me++){
		res[me][2] = 1;
		
		for(int you = 0; you<res.length; you++){
			
			if(res[me][1] < res[you][1] ){
				res[me][2]++;	
			}
		}
	}
	
	
%>


<!-- 출력부 -->
<table border="">
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>총점</td>
			<td>평균</td>
			<td>등수</td>
		</tr>
<% 
for(int r = 1; r<=pname.length; r++){
	
	for(int i = 0; i<pname.length; i++){ 
		if(r == res[i][2]) {%>  <!-- r 은 등수, res[i][2] = i번째 사람의 등수, 즉 1번째 등수의 사람이 일치해야만 tr,td 를 출력 -->
		<tr>
			<td><%=pname[i] %> <%=r %></td>
			<% for(int j = 0; j<arr.length; j++){ %>				
				<td><%=arr[j][i] %></td>
			<%} 
			 for(int j = 0; j<res[i].length; j++){ %>				
				<td><%=res[i][j] %></td>
			<%} %>		
		</tr>
<%}}}
/* 2차원 배열 출력 */
for(int i=0; i<arr.length; i++){
	int [] inarr = arr[i];  // inarr[i] 는 arr[i], 즉 arr[0]은 첫번째 과목의 점수들의 집합
	System.out.print(title[i]+": ");
	for(int j=0; j<inarr.length; j++){
		System.out.print(inarr[j]+"점 ");
	}
	System.out.println();
}

%>		

</table>
</body>
</html>