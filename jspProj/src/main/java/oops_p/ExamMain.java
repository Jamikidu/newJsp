package oops_p;

import java.util.Arrays;

public class ExamMain {

	public static void main(String[] args) {

		String [] names = {"하나빈","둘빈","셋빈","네빈","다섯빈"};
		
		String [] kor = "75,55,95,65,85".split(",");
		String [] eng = "73,53,93,63,83".split(",");
		String [] mat = "78,58,98,68,88".split(",");
		
		Exam [] arr = new Exam[names.length];
		
		System.out.println(arr);
		System.out.println(arr.length);
		System.out.println(arr[0]);
		System.out.println(arr[1]);
		System.out.println(Arrays.toString(arr));  //arr[i]는 주소값인 공간을 선언한 것이고 값이 들어가는건 아님
		//arr[0].name = names[0];
		System.out.println("===============================");
		
		
		Exam ex0 = new Exam(names[0], kor[0], eng[0], mat[0]);
		Exam ex1 = new Exam(names[1], kor[1], eng[1], mat[1]);
		System.out.println(ex0);
		
		Exam [] arr2 = {
				ex0,
				ex1,
				new Exam(names[2], kor[2], eng[2], mat[2]),
				new Exam(names[3], kor[3], eng[3], mat[3]),
				new Exam(names[4], kor[4], eng[4], mat[4])
				};
		
		System.out.println(Arrays.toString(arr2));
		
		System.out.println("===============================");
		for(int i=0; i < arr.length ; i++) {
			//arr[i] = ex0;
			arr[i] = new Exam(names[i], kor[i], eng[i], mat[i]);
			
		}
		System.out.println(arr[1].name);
		System.out.println(Arrays.toString(arr[1].jum));  //그냥 arr[1].jum 으로 넣으면 주소만 나옴 jum은 배열이기때문에
		System.out.println(arr[1].tot);
		System.out.println(arr[1].avg);
		System.out.println(arr[1].grade);
		System.out.println(arr[1].rank);  //계산이 안되어있음
		// Exam [] exarr = {arr[0],arr[1],arr[2],arr[3],arr[4]};  // 나는 다시 한 번 배열선언을 해줬는데 그럴 필요가 없음 왜? :: 위에서 해줌
		for(int i=0; i < arr.length ; i++) {
			arr[i].rankCalc(arr);
			System.out.println(arr[i]);
		}
	}

}
