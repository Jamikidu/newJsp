package basic_p;

public class TSNMain {

	public static void main(String[] args) {
		
		System.out.println("3,6,9 게임 시작!!");
		System.out.println("1부터 -> 20까지 시작");
		//for(초기값; 조건; 증감식){}
		for(int i= 1; i<=20; i++) {
			int one = i%10;
			if(one%3==0 && one != 0) {
				System.out.println(i + ".. 짝");
			}
			else {
				System.out.println(i);
			}
			
		}
		System.out.println("=====================");
		System.out.println("1부터 -> 100까지 시작");
		for(int i=1; i<100; i++) {
			int one = i%10;
			int ten = i/10;
			String result = "";
			if(ten%3==0 && ten != 0) {
				result += "짝";
				//System.out.println(i + " .." + result);
			}
			if(one%3 ==0 && one != 0){
				result += "짝";
				//System.out.println(i + " .." + result);
			}
			if(result.equals("")) {
				result += i;
				
			}
			System.out.println(i + " .. " + result);
		}
		
		
		
		/*
		int n = 1024;
		for(int i=1; i<=no; i++) {
			
			String ttt = "";
			
			int buf = i;
			
			while(true){
				int one = buf % 10
				buf /= 10;
				if(one%3==0 && one !=0){
					ttt += "짝";
				}
				
				if(buf == 0){
					break;
				}
			}
			
			if(ttt.equals("")){
				ttt += i;
			}
			System.out.println(ttt);
		}
		*/
	}

}
