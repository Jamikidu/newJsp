package basic_p;

public class Member {

	String pid, pname, pw;

	public Member(String pid, String pname, String pw) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pw = pw;
	}

	public String getPid() {
		return pid;
	}

	public String getPname() {
		return pname;
	}

	public String getPw() {
		return pw;
	}
	
}
