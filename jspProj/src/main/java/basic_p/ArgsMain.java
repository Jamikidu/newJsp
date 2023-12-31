package basic_p;

import java.util.Arrays;

public class ArgsMain {

	public static void main(String[] args) {
		System.out.println("내가 argsMain 이다."+args.length);
		
		System.out.println(Arrays.toString(args));
		int even = 0;			//짝수
		int even_count = 0;		//짝수 개수
		int odd = 0;			//홀수
		int odd_count = 0;		//홀수 개수
		int even_avg = 0;		//짝수평균
		int odd_avg = 0;		//홀수평균
		int even_max = 0;		//짝수최대값
		int even_min = 0;		//짝수최소값
		/*for (int i=0; i<args.length; i++) {
			if(Integer.parseInt(args[i])%2 == 0) {
				sum += Integer.parseInt(args[i]);
			}
		}
		System.out.println(sum);*/
		
		
		for (String str : args) {
			
			try {
				int num = Integer.parseInt(str);  //num은 args[i] 의 정수변환
				if(num % 2 == 0) {
					 even += num;
					 System.out.println("나는 더한다 짝수:" + num +", "+ even);
					 even_count ++;
					 even_avg = even/even_count;
					 
					 if(even_count == 1) {
						 even_min = num;
						 even_max = num;
					 }
					 if(num < even_min) {
						 even_min = num;
					 }
					 if(num > even_max) {
						 even_max = num;
					 }
					 /*if(num<0) {  // 짝수가 음수일때
						 int minus_even = num;  // minus_even은 짝수인 음수
						 even_min = minus_even;
					 }
					 else if(num>0 && even_min>0) {
						 even_min = num;
					 }*/
					 
				}
				else if(num % 2 == 1) {
					odd += num;
					System.out.println("나는 더한다 홀수:" + num +", "+ odd);
					odd_count ++;
					odd_avg = odd/odd_count;
				}
			} catch (Exception e) {
				System.out.println("문자 '" + str +"' 는 더할 수 없습니다.");
			}
			
			
		}
		System.out.println("짝수의 합: " + even);
		System.out.println("짝수의 평균: " + even_avg);
		System.out.println("짝수의 최소값: " + even_min);
		System.out.println("짝수의 최대값: " + even_max);
		System.out.println("홀수의 합: " + odd);
		System.out.println("홀수의 평균: " + odd_avg);
		
		System.out.println("argsMain 끝.");
	}

}
