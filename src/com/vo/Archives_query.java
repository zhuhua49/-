package com.vo;

import java.sql.*;

public class Archives_query {
	private String mechanism1;
	private String mechanism2;
	private String mechanism3;
	private String job_classification;
	private String job_name;
	private Date timeA;
	private Date timeB;

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

	public String getjob_classification() {
		return job_classification;
	}
	public void setjob_classification(String job_classification) {
		this.job_classification = job_classification;
	}

	public String getjob_name() {
		return job_name;
	}
	public void setjob_name(String job_name) {
		this.job_name = job_name;
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
