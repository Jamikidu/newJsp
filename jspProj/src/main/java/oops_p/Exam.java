package oops_p;

import java.util.Arrays;

public class Exam {

	String name, grade;
	int [] jum;
	int tot, avg, rank;
	float avg2;  //평균이 겹치는 경우가 꽤 있어서 소수점으로 내기위해서 float로 평균2 선언
	public Exam(String name, String ... jum) {  //매개변수로 name을 첫번째로 받고 jum은 무한대로 입력가능
		super();
		this.name = name;
		this.jum = new int [jum.length];
		
		for(int i=0; i < jum.length; i++) {
			this.jum[i] = Integer.parseInt(jum[i]);
		}
		calc();
	}

	void calc() {
		tot = 0;
		for (int i : jum) {
			tot += i;
		}
		
		avg = tot/jum.length;
		avg2 = (float)tot/jum.length;
		
		grade = "가가가가가가양미우수수".charAt(avg/10)+"";  //평균을 10으로 나눴을때 나오는 몫에 해당하는 문자를 할당
	}
	
	public void rankCalc(Exam [] exArr) {  //float 평균으로 등수계산
		rank= 1;
		for (Exam you : exArr) {
			if(avg2 < you.avg2) {
				rank++;
			}
		}
	}

	@Override
	public String toString() {
		return "Exam [name=" + name + ", jum=" + Arrays.toString(jum) + ", tot=" + tot + ", avg=" + avg + ", grade="
				+ grade + ", rank=" + rank + "]";
	}
	
	// 불러오는 경우만 필요할것 같아서 set은 선언해주지않았습니다
	public String getName() {
		return name;
	}
	
	public int getTot() {
		return tot;
	}

	public int getAvg() {
		return avg;
	}

	public int getRank() {
		return rank;
	}

	public float getAvg2() {
		return avg2;
	}

	public String getGrade() {
		return grade;
	}

	public int[] getJum() {
		return jum;
	}
	
	
}
