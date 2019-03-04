package com.jm.model;

public class TimeTable {
	
	String std;
	String fromtime;
	String totime;
	String subject;
	String faculty;
	String timebtabledate;
	
	public String getStd() {
		return std;
	}
	
	
	public TimeTable() {
		super();
		// TODO Auto-generated constructor stub
	}


	public TimeTable(String std, String fromtime, String totime, String subject, String faculty, String timebtabledate) {
		super();
		this.std = std;
		this.fromtime = fromtime;
		this.totime = totime;
		this.subject = subject;
		this.faculty = faculty;
		this.timebtabledate = timebtabledate;
	}





	public void setStd(String std) {
		this.std = std;
	}
	public String getFromtime() {
		return fromtime;
	}
	public void setFromtime(String fromtime) {
		this.fromtime = fromtime;
	}
	public String getTotime() {
		return totime;
	}
	public void setTotime(String totime) {
		this.totime = totime;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	public String getTimebtabledate() {
		return timebtabledate;
	}
	public void setTimebtabledate(String timebtabledate) {
		this.timebtabledate = timebtabledate;
	}
	
	
	
	
	

}
