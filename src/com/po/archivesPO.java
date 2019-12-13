package com.po;

import java.sql.*;

public class archivesPO {
	private Long uersID;
	private String archivesID;
	private String mechanism1;
	private String mechanism2;
	private String mechanism3;
	private String job_classification;
	private String job_name;
	private String job_title;
	private String uers_name;
	private String sex;
	private String Email;
	private String telephone;
	private String QQ;
	private String phone;
	private String address;
	private String postcode;
	private String nationality;
	private String homeplace;
	private Date date_of_birth;
	private String nation;
	private String religion;
	private String political;
	private String IDcard;
	private String social_card;
	private Long age;
	private String education;
	private String major;
	private Long standardID;
	private String standard_name;
	private String bank;
	private String account;
	private String specialty;
	private String hobby;
	private String record;
	private String family;
	private String note;
	private String registrar;
	private Timestamp registration_time;
	private String photo;
	private String state;

	public Long getuersID() {
		return uersID;
	}
	public void setuersID(Long uersID) {
		this.uersID = uersID;
	}
	
	public String getarchivesID() {
		return archivesID;
	}
	public void setarchivesID(String archivesID) {
		this.archivesID = archivesID;
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

	public String getjob_title() {
		return job_title;
	}
	public void setjob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getuers_name() {
		return uers_name;
	}
	public void setuers_name(String uers_name) {
		this.uers_name = uers_name;
	}

	public String getsex() {
		return sex;
	}
	public void setsex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}

	public String gettelephone() {
		return telephone;
	}
	public void settelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getQQ() {
		return QQ;
	}
	public void setQQ(String QQ) {
		this.QQ = QQ;
	}

	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone = phone;
	}

	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address = address;
	}

	public String getpostcode() {
		return postcode;
	}
	public void setpostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getnationality() {
		return nationality;
	}
	public void setnationality(String nationality) {
		this.nationality = nationality;
	}

	public String gethomeplace() {
		return homeplace;
	}
	public void sethomeplace(String homeplace) {
		this.homeplace = homeplace;
	}

	public Date getdate_of_birth() {
		return date_of_birth;
	}
	public void setdate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getnation() {
		return nation;
	}
	public void setnation(String nation) {
		this.nation = nation;
	}

	public String getreligion() {
		return religion;
	}
	public void setreligion(String religion) {
		this.religion = religion;
	}

	public String getpolitical() {
		return political;
	}
	public void setpolitical(String political) {
		this.political = political;
	}

	public String getIDcard() {
		return IDcard;
	}
	public void setIDcard(String IDcard) {
		this.IDcard = IDcard;
	}

	public String getsocial_card() {
		return social_card;
	}
	public void setsocial_card(String social_card) {
		this.social_card = social_card;
	}

	public Long getage() {
		return age;
	}
	public void setage(Long age) {
		this.age = age;
	}

	public String geteducation() {
		return education;
	}
	public void seteducation(String education) {
		this.education = education;
	}

	public String getmajor() {
		return major;
	}
	public void setmajor(String major) {
		this.major = major;
	}

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

	public String getbank() {
		return bank;
	}
	public void setbank(String bank) {
		this.bank = bank;
	}

	public String getaccount() {
		return account;
	}
	public void setaccount(String account) {
		this.account = account;
	}

	public String getspecialty() {
		return specialty;
	}
	public void setspecialty(String specialty) {
		this.specialty = specialty;
	}

	public String gethobby() {
		return hobby;
	}
	public void sethobby(String hobby) {
		this.hobby = hobby;
	}

	public String getrecord() {
		return record;
	}
	public void setrecord(String record) {
		this.record = record;
	}

	public String getfamily() {
		return family;
	}
	public void setfamily(String family) {
		this.family = family;
	}

	public String getnote() {
		return note;
	}
	public void setnote(String note) {
		this.note = note;
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

	public String getphoto() {
		return photo;
	}
	public void setphoto(String photo) {
		this.photo = photo;
	}

	public String getstate() {
		return state;
	}
	public void setstate(String state) {
		this.state = state;
	}

}
