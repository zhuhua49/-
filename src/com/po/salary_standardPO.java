package com.po;

import java.sql.*;

public class salary_standardPO {
	private Long standardID;
	private String standard_name;
	private String setter;
	private String registrar;
	private Timestamp registration_time;
	private float base_pay;
	private float travel_allowance;
	private float lunch_allowance;
	private float communication_allowance;
	private float endowment_insurance;
	private float medical_insurance;
	private float unemployment_insurance;
	private float housing_fund;
	private float total;
	private String state;
	private String note;
	
	public Long getstandardID() {
		return standardID;
	}
	public void setstandardID(Long standardID) {
		this.standardID = standardID;
	}
	
	public String getstandard_name() {
		return standard_name;
	}
	public void setstandard_name(String standard_name) {
		this.standard_name = standard_name;
	}

	public String getsetter() {
		return setter;
	}
	public void setsetter(String setter) {
		this.setter = setter;
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
	
	public float gettotal() {
		return total;
	}
	public void settotal(float total) {
		this.total = total;
	}

	public String getstate() {
		return state;
	}
	public void setstate(String state) {
		this.state = state;
	}

	public String getnote() {
		return note;
	}
	public void setnote(String note) {
		this.note = note;
	}

}
