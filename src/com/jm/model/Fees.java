package com.jm.model;

public class Fees {
	
	int studentID;
	long totalfees;
	long feespaid;
	long feesbalance;
	
	public Fees(int studentID, long totalfees, long feespaid, long feesbalance) {
		super();
		this.studentID = studentID;
		this.totalfees = totalfees;
		this.feespaid = feespaid;
		this.feesbalance = feesbalance;
	}
	public Fees() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getStudentID() {
		return studentID;
	}
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}
	public long getTotalfees() {
		return totalfees;
	}
	public void setTotalfees(long totalfees) {
		this.totalfees = totalfees;
	}
	public long getFeespaid() {
		return feespaid;
	}
	public void setFeespaid(long feespaid) {
		this.feespaid = feespaid;
	}
	public long getFeesbalance() {
		return feesbalance;
	}
	public void setFeesbalance(long feesbalance) {
		this.feesbalance = feesbalance;
	}
	
	
	
}
