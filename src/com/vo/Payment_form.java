package com.vo;

import java.sql.*;

public class Payment_form {
	private Long paymentID;
	private String mechanism1;
	private String mechanism2;
	private String mechanism3;
	private Long numberall;
	private float total;
	private float actual_sum;
	private String state;
	private String registrar;
	private Timestamp registration_time;
	private Date timeA;
	private Date timeB;

	public Long getpaymentID() {
		return paymentID;
	}
	public void setpaymentID(Long paymentID) {
		this.paymentID = paymentID;
	}
	
	public String getmechanism1() {
		return mechanism1;
	}
	public void setmechanism1(String mechanism1) {
		this.mechanism1 = mechanism1;
	}

	public String getmechanism2() {
		return mechanism2;
	}
	public void setmechanism2(String mechanism2) {
		this.mechanism2 = mechanism2;
	}

	public String getmechanism3() {
		return mechanism3;
	}
	public void setmechanism3(String mechanism3) {
		this.mechanism3 = mechanism3;
	}
	
	public Long getnumberall() {
		return numberall;
	}
	public void setnumberall(Long numberall) {
		this.numberall = numberall;
	}
	
	public float gettotal() {
		return total;
	}
	public void settotal(float total) {
		this.total = total;
	}
	
	public float getactual_sum() {
		return actual_sum;
	}
	public void setactual_sum(float actual_sum) {
		this.actual_sum = actual_sum;
	}

	public String getstate() {
		return state;
	}
	public void setstate(String state) {
		this.state = state;
	}

	public String getregistrar() {
		return registrar;
	}
	public void setregistrar(String registrar) {
		this.registrar = registrar;
	}
	
	public Timestamp getregistration_time() {
		return registration_time;
	}
	public void setregistration_time(Timestamp registration_time) {
		this.registration_time = registration_time;
	}

	public Date gettimeA() {
		return timeA;
	}
	public void settimeA(Date timeA) {
		this.timeA = timeA;
	}
	
	public Date gettimeB() {
		return timeB;
	}
	public void settimeB(Date timeB) {
		this.timeB = timeB;
	}

}
