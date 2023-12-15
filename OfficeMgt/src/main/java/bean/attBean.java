package bean;

public class attBean {
	int attid,empid	;
	public int getAttid() {
		return attid;
	}
	public void setAttid(int attid) {
		this.attid = attid;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getLogintim() {
		return logintim;
	}
	public void setLogintim(String logintim) {
		this.logintim = logintim;
	}
	public String getLogouttime() {
		return logouttime;
	}
	public void setLogouttime(String logouttime) {
		this.logouttime = logouttime;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	String logintim,logouttime, today;
		
	
}
