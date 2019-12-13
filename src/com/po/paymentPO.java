package com.po;

import java.sql.*;

public class paymentPO {
	private Long ID;
	private String archivesID;
	private String uers_name;
	private Long paymentID;
	private float base_pay;
	private float travel_allowance;
	private float lunch_allowance;
	private float communication_allowance;
	private float endowment_insurance;
	private float medical_insurance;
	private float unemployment_insurance;
	private float housing_fund;
	private float reward;
	private float fine;
	private float total;
	private float actual_sum;
	private String state;
	private Timestamp registration_time;
	private Date timeA;
	private Date timeB;
	
	public Long getID() {
		return ID;
	}
	public void setID(Long ID) {
		this.ID = ID;
	}
	
	public String getarchivesID() {
		return archivesID;
	}
	public void setarchivesID(String archivesID) {
		this.archivesID = archivesID;
	}
	
	public String getuers_name() {
		return uers_name;
	}
	public void setuers_name(String uers_name) {
		this.uers_name = uers_name;
	}
	
	public Long getpaymentID() {
		return paymentID;
	}
	public void setpaymentID(Long paymentID) {
		this.paymentID = paymentID;
	}


	public float getbase_pay() {
		return base_pay;
	}
	public void setbase_pay(float base_pay) {
		this.base_pay = base_pay;
	}

	public float gettravel_allowance() {
		return travel_allowance;
	}
	public void settravel_allowance(float travel_allowance) {
		this.travel_allowance = travel_allowance;
	}

	public float getlunch_allowance() {
		return lunch_allowance;
	}
	public void setlunch_allowance(float lunch_allowance) {
		this.lunch_allowance = lunch_allowance;
	}

	public float getcommunication_allowance() {
		return communication_allowance;
	}
	public void setcommunication_allowance(float communication_allowance) {
		this.communication_allowance = communication_allowance;
	}

	public float getendowment_insurance() {
		return endowment_insurance;
	}
	public void setendowment_insurance(float endowment_insurance) {
		this.endowment_insurance = endowment_insurance;
	}

	public float getmedical_insurance() {
		return medical_insurance;
	}
	public void setmedical_insurance(float medical_insurance) {
		this.medical_insurance = medical_insurance;
	}

	public float getunemployment_insurance() {
		return unemployment_insurance;
	}
	public void setunemployment_insurance(float unemployment_insurance) {
		this.unemployment_insurance = unemployment_insurance;
	}

	public float gethousing_fund() {
		return housing_fund;
	}
	public void sethousing_fund(float housing_fund) {
		this.housing_fund = housing_fund;
	}
	
	public float getreward() {
		return reward;
	}
	public void setreward(float reward) {
		this.reward = reward;
	}
	
	public float getfine() {
		return fine;
	}
	public void setfine(float fine) {
		this.fine = fine;
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
