package basic_p;

public class CalcMain {

	public static void main(String[] args) {
		int aa = 5;
		aa++;	//후치연산
		System.out.println("1:"+aa);
		
		++aa;	//전치연산
		System.out.println("2:"+aa);
		System.out.println("3:"+aa++);	//a값 먼저 보내준 다음에 더하기가 실행됨
		System.out.println("4:"+aa);
		System.out.println("5:"+ ++aa);	//더하기를 먼저하고 a값을 보내줌
		System.out.println("6:"+aa);
		System.out.println("=====절취선=====");
		
		int a=5, b=6, c=10, d;
		
		d = a++ + ++c - b-- * --a + a++;
		System.out.println("정답 a: "+a);
		System.out.println("정답 b: "+b);
		System.out.println("정답 c: "+c);
		System.out.println("정답 d: "+d);
		// 내계산: d = 5 + 11 - (6 * 5) + 5; --> 나의답: -9? // 최종결과 --> a=6,b=5,c=11,d=-9;
	}

}
