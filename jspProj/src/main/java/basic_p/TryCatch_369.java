package basic_p;

public class TryCatch_369 {

	public static void main(String[] args) {
		
		for(int i=1;i<=20;i++) {  // i는 1 초기값, 조건 21미만,증가 1씩
			int one = i % 10;  // one 는 1를 10으로 나누었을때 나머지 1~9
			int three = one % 3;  // three 는 1~9인 one 을 3으로 나눈 나머지 1,2,0
			try {
				
				int a = 1234/three;  // 1,2 일때는 오류가 나지 않으므로 '출력' 0일때는 오류로 catch로 넘어감
				System.out.println(i+",  "+ "one: "+ one +", "+ "three: "+three);
			} catch (Exception e) {
				//catch 안에서 try~catch 한번 더 해줌
				try {
					int a = 123/one;  // one 즉 일의자리는 은 1~0까지 이므로 오류가 없으니 바로 "짝"이 '출력'
					System.out.println("(짝), "+ "one: "+ one +", "+ "three: "+three);
				} catch (Exception e2) {  // 하지만 0일때는 오류가 발생하여 catch로 이동
					System.out.println(i+",  "+ "one: "+ one +", "+ "three: "+three);
				}
			}
		}
	}

}
