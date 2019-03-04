package com.jm.model;

public class Enquiry {

	int enquiryId;
	String studentName;
	String mobileNo;
	String std;
	String emailId;
	String schoolName;
	String referredBy;




	public Enquiry() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Enquiry(int enquiryId, String studentName, String mobileNo, String std, String emailId, String schoolName,
			String referredBy) {
		super();
		this.enquiryId = enquiryId;
		this.studentName = studentName;
		this.mobileNo = mobileNo;
		this.std = std;
		this.emailId = emailId;
		this.schoolName = schoolName;
		this.referredBy = referredBy;
	}




	public int getEnquiryId() {
		return enquiryId;
	}




	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}




	public String getStudentName() {
		return studentName;
	}




	public void setStudentName(String studentName) {
		this.studentName = studentName;
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




	public String getSchoolName() {
		return schoolName;
	}




	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}




	public String getReferredBy() {
		return referredBy;
	}




	public void setReferredBy(String referredBy) {
		this.referredBy = referredBy;
	}



}
