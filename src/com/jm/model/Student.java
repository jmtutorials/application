package com.jm.model;

public class Student {
	
	
	int studentID;
	String studentName;
	String dateOfBirth;
	String mobileNo;
	String std;
	String emailId;
	String address;
	String schoolName;
	String parentName;
	String referredBy;
	String userId;
	String password;
	
	
	
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentID, String studentName, String dateOfBirth, String mobileNo, String std, String emailId,
			String address, String schoolName, String parentName, String referredBy, String userId, String password) {
		super();
		this.studentID = studentID;
		this.studentName = studentName;
		this.dateOfBirth = dateOfBirth;
		this.mobileNo = mobileNo;
		this.std = std;
		this.emailId = emailId;
		this.address = address;
		this.schoolName = schoolName;
		this.parentName = parentName;
		this.referredBy = referredBy;
		this.userId = userId;
		this.password = password;
	}
	public int getStudentID() {
		return studentID;
	}
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getStd() {
		return std;
	}
	public void setStd(String std) {
		this.std = std;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getReferredBy() {
		return referredBy;
	}
	public void setReferredBy(String referredBy) {
		this.referredBy = referredBy;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
