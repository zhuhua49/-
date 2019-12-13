package com.service;

import java.sql.*;
import java.util.Calendar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.vo.*;
import com.po.*;
import com.dao.HibernateServiceProvider;
import com.opensymphony.xwork2.ActionContext;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ModelBean {
	private HibernateServiceProvider hsp = new HibernateServiceProvider();
	Transaction tx = null;
    Query query = null;	
	Boolean flag = false;
	Long i;
	int effectLines = 0;

	//新建档案
	public Boolean Insertarchives(Archives archives)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		
		try
	    {
			archivesPO archivesPO = new archivesPO();
			
			archivesPO.setmechanism1(archives.getmechanism1());
			archivesPO.setmechanism2(archives.getmechanism2());
			archivesPO.setmechanism3(archives.getmechanism3());
			archivesPO.setjob_classification(archives.getjob_classification());
			archivesPO.setjob_name(archives.getjob_name());
			archivesPO.setjob_title(archives.getjob_title());
			archivesPO.setuers_name(archives.getuers_name());
			archivesPO.setsex(archives.getsex());
			archivesPO.setEmail(archives.getEmail());
			archivesPO.settelephone(archives.gettelephone());
			archivesPO.setQQ(archives.getQQ());
			archivesPO.setphone(archives.getphone());
			archivesPO.setaddress(archives.getaddress());
			archivesPO.setpostcode(archives.getpostcode());
			archivesPO.setnationality(archives.getnationality());
			archivesPO.sethomeplace(archives.gethomeplace());
			archivesPO.setdate_of_birth(archives.getdate_of_birth());
			archivesPO.setnation(archives.getnation());
			archivesPO.setreligion(archives.getreligion());
			archivesPO.setpolitical(archives.getpolitical());
			archivesPO.setIDcard(archives.getIDcard());
			archivesPO.setsocial_card(archives.getsocial_card());
			archivesPO.setage(archives.getage());
			archivesPO.seteducation(archives.geteducation());
			archivesPO.setmajor(archives.getmajor());
			archivesPO.setstandardID(archives.getstandardID());
			archivesPO.setbank(archives.getbank());
			archivesPO.setaccount(archives.getaccount());
			archivesPO.setspecialty(archives.getspecialty());
			archivesPO.sethobby(archives.gethobby());
			archivesPO.setrecord(archives.getrecord());
			archivesPO.setfamily(archives.getfamily());
			archivesPO.setnote(archives.getnote());
			archivesPO.setregistrar(archives.getregistrar());
			archivesPO.setregistration_time(archives.getregistration_time());
			archivesPO.setphoto(archives.getphoto());
			archivesPO.setstate("待复核");
			
	    	tx = session.beginTransaction();   //开始事务
	    	i = (Long)session.save(archivesPO);  //返回保存的记录主键ID值
	    	tx.commit();           //提交事务
	    	
	    	Calendar cal = Calendar.getInstance();
			cal.setTime(archives.getdate_of_birth());
			String year = String.valueOf( cal.get(Calendar.YEAR) );
			
			String archivesID = year+findmechanismID( archives.getmechanism1() )+findmechanismID( archives.getmechanism2() )+findmechanismID( archives.getmechanism3() )+String.format("%02d",i);
			
			String hql = "UPDATE archivesPO SET archivesID = \'"+archivesID+"\' WHERE uersID = \'"+i+"\'";
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			effectLines = query.executeUpdate();
			tx.commit();   //提交事务
	    }catch (HibernateException he) 
	    {
		      if (tx != null) {
		         tx.rollback();
		      }
		      throw he;
		    }
		finally 
		    {
		       session.close();
		}
		if(effectLines!=0)
		{
			flag = true;
		}
		return flag;
	}
	
	//输入机构名字，返回2位的机构ID
	public String findmechanismID(String mechanism) throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
	    List<mechanism_jobPO> result = new ArrayList<mechanism_jobPO>();
	    mechanism_jobPO mechanism_jobPO = new mechanism_jobPO();
		String mechanismID = null;
		
		try
		{
			String hql = "from mechanism_jobPO where name='"+mechanism+"'";
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			//query.setFirstResult(0);
			//query.setMaxResults(1);
			result = query.list();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		if(result != null)
		{
			for (Iterator<mechanism_jobPO> i = result.iterator(); i.hasNext();) 
		    {
				mechanism_jobPO = (mechanism_jobPO) i.next();
				mechanismID = String.format("%02d",mechanism_jobPO.getID());
		    }
		}
		return mechanismID;
	}
	
	//查询档案
	public List<archivesPO> Seearchives(Archives_query Archives_query,String zl)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
	    List<archivesPO> result = new ArrayList<archivesPO>();
	    String hql = null;
		
		try
		{
			if( Archives_query == null && zl.trim().equals("待复核") ){ //复核查询
				hql = "from archivesPO WHERE state = '待复核'";				
			}
			else if( Archives_query == null && zl.trim().equals("已删除") ){ //查询已删除的档案
				hql = "from archivesPO WHERE state = '已删除' ";
			}
			else if( Archives_query == null && zl.trim().equals("正常") ){ //查询通过审核的档案
				hql = "from archivesPO WHERE state = '正常' ";
			}
			else if( Archives_query != null && zl.trim().equals("正常") ){ //查询指定条件的档案
				
				String mechanism1 = "is not null";
				String mechanism2 = "is not null";
				String mechanism3 = "is not null";
				String job_classification = "is not null";
				String job_name = "is not null";
				String timeA = "is not null";
				String timeB = "is not null";
				
				if( !Archives_query.getmechanism1().trim().equals("不选择") ){
					mechanism1 = "= \'"+Archives_query.getmechanism1()+"\'";
				}
				if( !Archives_query.getmechanism2().trim().equals("不选择") ){
					mechanism2 = "= \'"+Archives_query.getmechanism2()+"\'";
				}
				if( !Archives_query.getmechanism3().trim().equals("不选择") ){
					mechanism3 = "= \'"+Archives_query.getmechanism3()+"\'";
				}
				if( !Archives_query.getjob_classification().trim().equals("不选择") ){
					job_classification = "= \'"+Archives_query.getjob_classification()+"\'";
				}
				if( !Archives_query.getjob_name().trim().equals("不选择") ){
					job_name = "= \'"+Archives_query.getjob_name()+"\'";
				}
				if( Archives_query.gettimeA() != null ){
					timeA = ">= \'"+Archives_query.gettimeA()+"\'";
				}
				if( Archives_query.gettimeB() != null ){
					timeB = "<= \'"+Archives_query.gettimeB()+"\'";
				}
				hql = "from archivesPO WHERE mechanism1 "+mechanism1+" and mechanism2 "+mechanism2+" and mechanism3 "+mechanism3+" and job_classification "+job_classification+" and job_name "+job_name+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeA+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeB+" and state = '正常' ";
			}
			else if( Archives_query == null && zl != null ){ //查询指定ID的一份档案(ID为zl)
				hql = "from archivesPO WHERE uersID = \'"+zl+"\' ";
			}
			else{
				//hql = "from topic WHERE topicID = \'"+topicID+"\' ";
			}
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			result = query.list();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		return result;
	 }
	
	//存入复核后的档案、变更档案、删除档案，恢复档案
	public Boolean Updatearchives(Archives archives,String zl,int D)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		String state = null;
		String hql = null;
		
		try
		{
			if( zl.trim().equals("正常") ){ //档案复核
				state = "正常";
				hql = "UPDATE archivesPO SET job_title = \'"+archives.getjob_title()+"\' , uers_name = \'"+archives.getuers_name()+"\' , sex = \'"+archives.getsex()+"\' , Email = \'"+archives.getEmail()+"\' , telephone = \'"+archives.gettelephone()+"\' , QQ = \'"+archives.getQQ()+"\' , phone = \'"+archives.getphone()+"\' , address = \'"+archives.getaddress()+"\' , postcode = \'"+archives.getpostcode()+"\' , nationality = \'"+archives.getnationality()+"\' , homeplace = \'"+archives.gethomeplace()+"\' , date_of_birth = \'"+archives.getdate_of_birth()+"\' , nation = \'"+archives.getnation()+"\' , religion = \'"+archives.getreligion()+"\' , political = \'"+archives.getpolitical()+"\' , IDcard = \'"+archives.getIDcard()+"\' , social_card = \'"+archives.getsocial_card()+"\' , age = \'"+archives.getage()+"\' , education = \'"+archives.geteducation()+"\' , major = \'"+archives.getmajor()+"\' , bank = \'"+archives.getbank()+"\' , account = \'"+archives.getaccount()+"\' , specialty = \'"+archives.getspecialty()+"\' , hobby = \'"+archives.gethobby()+"\' , record = \'"+archives.getrecord()+"\' , family = \'"+archives.getfamily()+"\' , note = \'"+archives.getnote()+"\' , registrar = \'"+archives.getregistrar()+"\' , photo = \'"+archives.getphoto()+"\' , state = \'"+state+"\' WHERE archivesID = \'"+archives.getarchivesID()+"\' ";
			}
			else if( zl.trim().equals("待复核") ){  //档案变更
				state = "待复核";
				hql = "UPDATE archivesPO SET job_title = \'"+archives.getjob_title()+"\' , uers_name = \'"+archives.getuers_name()+"\' , sex = \'"+archives.getsex()+"\' , Email = \'"+archives.getEmail()+"\' , telephone = \'"+archives.gettelephone()+"\' , QQ = \'"+archives.getQQ()+"\' , phone = \'"+archives.getphone()+"\' , address = \'"+archives.getaddress()+"\' , postcode = \'"+archives.getpostcode()+"\' , nationality = \'"+archives.getnationality()+"\' , homeplace = \'"+archives.gethomeplace()+"\' , date_of_birth = \'"+archives.getdate_of_birth()+"\' , nation = \'"+archives.getnation()+"\' , religion = \'"+archives.getreligion()+"\' , political = \'"+archives.getpolitical()+"\' , IDcard = \'"+archives.getIDcard()+"\' , social_card = \'"+archives.getsocial_card()+"\' , age = \'"+archives.getage()+"\' , education = \'"+archives.geteducation()+"\' , major = \'"+archives.getmajor()+"\' , bank = \'"+archives.getbank()+"\' , account = \'"+archives.getaccount()+"\' , specialty = \'"+archives.getspecialty()+"\' , hobby = \'"+archives.gethobby()+"\' , record = \'"+archives.getrecord()+"\' , family = \'"+archives.getfamily()+"\' , note = \'"+archives.getnote()+"\' , registrar = \'"+archives.getregistrar()+"\' , photo = \'"+archives.getphoto()+"\' , state = \'"+state+"\' WHERE archivesID = \'"+archives.getarchivesID()+"\' ";
			}
			else if(D == 0){  //档案删除
				state = "已删除";
				hql = "UPDATE archivesPO SET state = \'"+state+"\' WHERE uersID = \'"+zl+"\' ";
			}
			else if(D == 1){  //档案恢复
				state = "正常";
				hql = "UPDATE archivesPO SET state = \'"+state+"\' WHERE uersID = \'"+zl+"\' ";
			}
			// , standardID = \'"+archives.getstandardID()+"\'
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			effectLines = query.executeUpdate();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		if(effectLines!=0)
		{
			flag = true;
		}
		return flag;
	}
	
	//新建薪酬标准
	public Boolean Insertsalary_standard(Salary_standard salary_standard)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		
		try
	    {
			salary_standardPO salary_standardPO = new salary_standardPO();
			
			float endowment_insurance = (float) (salary_standard.getbase_pay()*0.08);
			float medical_insurance = (float) (salary_standard.getbase_pay()*0.02+3);
			float unemployment_insurance = (float) (salary_standard.getbase_pay()*0.005);
			float housing_fund = (float) (salary_standard.getbase_pay()*0.08);
			float total = (float) (salary_standard.getbase_pay()+salary_standard.gettravel_allowance()+salary_standard.getlunch_allowance()+salary_standard.getcommunication_allowance()-endowment_insurance-medical_insurance-unemployment_insurance+housing_fund);
			
			salary_standardPO.setstandard_name(salary_standard.getstandard_name());
			salary_standardPO.setsetter(salary_standard.getsetter());
			salary_standardPO.setregistrar(salary_standard.getregistrar());
			salary_standardPO.setbase_pay(salary_standard.getbase_pay());
			salary_standardPO.settravel_allowance(salary_standard.gettravel_allowance());
			salary_standardPO.setlunch_allowance(salary_standard.getlunch_allowance());
			salary_standardPO.setcommunication_allowance(salary_standard.getcommunication_allowance());
			salary_standardPO.setendowment_insurance(endowment_insurance);
			salary_standardPO.setmedical_insurance(medical_insurance);
			salary_standardPO.setunemployment_insurance(unemployment_insurance);
			salary_standardPO.sethousing_fund(housing_fund);
			salary_standardPO.settotal(total);
			salary_standardPO.setstate("待复核");
			
	    	tx = session.beginTransaction();   //开始事务
	    	i = (Long)session.save(salary_standardPO);  //返回保存的记录主键ID值
	    	tx.commit();           //提交事务
	    	
	    }catch (HibernateException he) 
	    {
		      if (tx != null) {
		         tx.rollback();
		      }
		      throw he;
		    }
		finally 
		    {
		       session.close();
		}
		if(i!=0)
		{
			flag = true;
		}
		return flag;
	}
	
	//查询薪酬标准
	public List<salary_standardPO> Seesalary_standard(Salary_standard salary_standard,String zl)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
	    List<salary_standardPO> result = new ArrayList<salary_standardPO>();
	    String hql = null;
		
		try
		{
			if( salary_standard == null && zl.trim().equals("待复核") ){ //复核查询
				hql = "from salary_standardPO WHERE state = '待复核'";				
			}
			else if( salary_standard == null && zl.trim().equals("已删除") ){ //查询已删除的薪酬标准
				hql = "from salary_standardPO WHERE state = '已删除' ";
			}
			else if( salary_standard == null && zl.trim().equals("正常") ){ //查询通过审核的薪酬标准
				hql = "from salary_standardPO WHERE state = '正常' ";
			}
			else if( salary_standard != null && zl.trim().equals("正常") ){ //查询指定条件的薪酬标准
				
				String standardID = "is not null";
				String standard_name = "is not null";
				String timeA = "is not null";
				String timeB = "is not null";
				
				if( salary_standard.getstandardID()!=null ){
					standardID = "= \'"+salary_standard.getstandardID()+"\'";
				}
				if( !salary_standard.getstandard_name().trim().equals("") ){
					standard_name = "= \'"+salary_standard.getstandard_name()+"\'";
				}
				if( salary_standard.gettimeA() != null ){
					timeA = ">= \'"+salary_standard.gettimeA()+"\'";
				}
				if( salary_standard.gettimeB() != null ){
					timeB = "<= \'"+salary_standard.gettimeB()+"\'";
				}
				hql = "from salary_standardPO WHERE standardID "+standardID+" and standard_name "+standard_name+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeA+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeB+" and state = '正常' ";
			}
			else if( salary_standard == null && zl != null ){ //查询指定ID的一份薪酬标准(ID为zl)
				hql = "from salary_standardPO WHERE standardID = \'"+zl+"\' ";
			}
			else{
				//hql = "";
			}
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			result = query.list();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		return result;
	 }
	
	//存入复核后的薪酬标准、变更薪酬标准、删除薪酬标准，恢复薪酬标准
	public Boolean Updatesalary_standard(Salary_standard salary_standard,String zl,int D)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		String state = null;
		String hql = null;
		
		try
		{
			if( zl.trim().equals("正常") ){ //薪酬标准复核
				state = "正常";
				float endowment_insurance = (float) (salary_standard.getbase_pay()*0.08);
				float medical_insurance = (float) (salary_standard.getbase_pay()*0.02+3);
				float unemployment_insurance = (float) (salary_standard.getbase_pay()*0.005);
				float housing_fund = (float) (salary_standard.getbase_pay()*0.08);
				float total = (float) (salary_standard.getbase_pay()+salary_standard.gettravel_allowance()+salary_standard.getlunch_allowance()+salary_standard.getcommunication_allowance()-endowment_insurance-medical_insurance-unemployment_insurance+housing_fund);
				hql = "UPDATE salary_standardPO SET standard_name = \'"+salary_standard.getstandard_name()+"\' , setter = \'"+salary_standard.getsetter()+"\' , registrar = \'"+salary_standard.getregistrar()+"\' , base_pay = \'"+salary_standard.getbase_pay()+"\' , travel_allowance = \'"+salary_standard.gettravel_allowance()+"\' , lunch_allowance = \'"+salary_standard.getlunch_allowance()+"\' , communication_allowance = \'"+salary_standard.getcommunication_allowance()+"\' , endowment_insurance = \'"+endowment_insurance+"\' , medical_insurance = \'"+medical_insurance+"\' , unemployment_insurance = \'"+unemployment_insurance+"\' , housing_fund = \'"+housing_fund+"\' , total = \'"+total+"\' , state = \'"+state+"\' , note = \'"+salary_standard.getnote()+"\' WHERE standardID = \'"+salary_standard.getstandardID()+"\' ";
			}
			else if( zl.trim().equals("待复核") ){  //薪酬标准变更
				state = "待复核";
				float endowment_insurance = (float) (salary_standard.getbase_pay()*0.08);
				float medical_insurance = (float) (salary_standard.getbase_pay()*0.02+3);
				float unemployment_insurance = (float) (salary_standard.getbase_pay()*0.005);
				float housing_fund = (float) (salary_standard.getbase_pay()*0.08);
				float total = (float) (salary_standard.getbase_pay()+salary_standard.gettravel_allowance()+salary_standard.getlunch_allowance()+salary_standard.getcommunication_allowance()-endowment_insurance-medical_insurance-unemployment_insurance+housing_fund);
				hql = "UPDATE salary_standardPO SET standard_name = \'"+salary_standard.getstandard_name()+"\' , setter = \'"+salary_standard.getsetter()+"\' , registrar = \'"+salary_standard.getregistrar()+"\' , base_pay = \'"+salary_standard.getbase_pay()+"\' , travel_allowance = \'"+salary_standard.gettravel_allowance()+"\' , lunch_allowance = \'"+salary_standard.getlunch_allowance()+"\' , communication_allowance = \'"+salary_standard.getcommunication_allowance()+"\' , endowment_insurance = \'"+endowment_insurance+"\' , medical_insurance = \'"+medical_insurance+"\' , unemployment_insurance = \'"+unemployment_insurance+"\' , housing_fund = \'"+housing_fund+"\' , total = \'"+total+"\' , state = \'"+state+"\' , note = \'"+salary_standard.getnote()+"\' WHERE standardID = \'"+salary_standard.getstandardID()+"\' ";
			}
			else if(D == 0){  //薪酬标准删除
				state = "已删除";
				hql = "UPDATE archivesPO SET state = \'"+state+"\' WHERE uersID = \'"+zl+"\' ";
			}
			else if(D == 1){  //薪酬标准恢复
				state = "正常";
				hql = "UPDATE archivesPO SET state = \'"+state+"\' WHERE uersID = \'"+zl+"\' ";
			}
			// , standardID = \'"+archives.getstandardID()+"\'
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			effectLines = query.executeUpdate();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		if(effectLines!=0)
		{
			flag = true;
		}
		return flag;
	}
	
	//新建薪酬发放单
	public Boolean Insertsalary_payment(Payment_form payment_form)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		List<archivesPO> result = new ArrayList<archivesPO>();
	    String hql = null;
	    Long ID;
	    float total = 0;
		
		try
	    {
			hql = "from archivesPO WHERE (mechanism1 = \'"+payment_form.getmechanism1()+"\' and mechanism2 = \'"+payment_form.getmechanism2()+"\' and mechanism3 = \'"+payment_form.getmechanism3()+"\' and state = \'正常\' )";
			
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			result = query.list();
			tx.commit();   //提交事务
			
			if(result.size() == 0){
				flag = false;
				return flag;
			}
			
			payment_formPO payment_formPO = new payment_formPO();
						
			payment_formPO.setmechanism1(payment_form.getmechanism1());
			payment_formPO.setmechanism2(payment_form.getmechanism2());
			payment_formPO.setmechanism3(payment_form.getmechanism3());
			payment_formPO.setnumberall((long) result.size());
			payment_formPO.setstate("新建");
			
	    	tx = session.beginTransaction();   //开始事务
	    	ID = (Long)session.save(payment_formPO);  //返回保存的记录主键ID值
	    	tx.commit();           //提交事务
	    	
	    	if(result != null)
			{
				for (Iterator<archivesPO> i = result.iterator(); i.hasNext();) 
			    {
					archivesPO archivesOne = new archivesPO();
					archivesOne = (archivesPO) i.next();
					
					paymentPO paymentPO = new paymentPO();
					
					paymentPO.setarchivesID(archivesOne.getarchivesID());
					paymentPO.setuers_name(archivesOne.getuers_name());					
					paymentPO.setpaymentID(ID);
					paymentPO.setstate("新建");
					
					List<salary_standardPO> salary_standard = new ArrayList<salary_standardPO>();
					hql = "from salary_standardPO WHERE standardID = \'"+archivesOne.getstandardID()+"\' ";
					
					tx = session.beginTransaction();   //开始事务
					query = session.createQuery(hql);
					salary_standard = query.list();
					tx.commit();   //提交事务
					
					if(salary_standard != null)
					{
						for (Iterator<salary_standardPO> ii = salary_standard.iterator(); ii.hasNext();) 
					    {
							salary_standardPO salary_standardPO = new salary_standardPO();
							salary_standardPO = (salary_standardPO) ii.next();
							paymentPO.setbase_pay(salary_standardPO.getbase_pay());
							paymentPO.settravel_allowance(salary_standardPO.gettravel_allowance());
							paymentPO.setlunch_allowance(salary_standardPO.getlunch_allowance());
							paymentPO.setcommunication_allowance(salary_standardPO.getcommunication_allowance());
							paymentPO.setendowment_insurance(salary_standardPO.getendowment_insurance());
							paymentPO.setmedical_insurance(salary_standardPO.getmedical_insurance());
							paymentPO.setunemployment_insurance(salary_standardPO.getunemployment_insurance());
							paymentPO.sethousing_fund(salary_standardPO.gethousing_fund());
							paymentPO.settotal(salary_standardPO.gettotal());
							total = total+salary_standardPO.gettotal();
					    }
					}
					
			    	tx = session.beginTransaction();   //开始事务
			    	session.save(paymentPO);  //保存
			    	tx.commit();			    				    	
			    }
			}
	    	
			hql = "UPDATE payment_formPO SET total = \'"+total+"\' WHERE paymentID = \'"+ID+"\' ";
	    	
	    	tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			effectLines = query.executeUpdate();
			tx.commit();   //提交事务
	    	
	    }catch (HibernateException he) 
	    {
		      if (tx != null) {
		         tx.rollback();
		      }
		      throw he;
		    }
		finally 
		    {
		       session.close();
		}
		if(effectLines != 0)
		{
			flag = true;
		}
		return flag;
	}
	
	//查询薪酬发放单
	public List<payment_formPO> Seepayment_form(String zl)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
	    List<payment_formPO> result = new ArrayList<payment_formPO>();
	    String hql = null;
		
		try
		{
			if( zl.trim().equals("新建") ){ //查询新建的薪酬发放单
				hql = "from payment_formPO WHERE state = '新建'";				
			}
			else if( zl.trim().equals("待复核") ){ //复核查询
				hql = "from payment_formPO WHERE state = '待复核' ";
			}
			else { //查询指定ID的一份薪酬发放单(ID为zl)
				hql = "from payment_formPO WHERE paymentID = \'"+zl+"\' ";
			}
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			result = query.list();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		return result;
	 }
	
	//登记薪酬发放单、存入复核后的薪酬发放单
	public Boolean Updatepayment_form(List<Payment> paymentPO,Payment_form payment_form,String zl)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
		String state = null;
		String hql = null;
		float total = 0;
		
		try
		{
			if( zl.trim().equals("待复核") ){  //薪酬发放单登记
				state = "待复核";
				if(paymentPO != null)
				{
					for (Iterator<Payment> i = paymentPO.iterator(); i.hasNext();) 
				    {
						Payment paymentOne = new Payment();
						paymentOne = (Payment) i.next();
						float totalOne = paymentOne.gettotal()+paymentOne.getreward()-paymentOne.getfine();
						total = total + totalOne;
						hql = "UPDATE paymentPO SET reward = \'"+paymentOne.getreward()+"\' , fine = \'"+paymentOne.getfine()+"\' , actual_sum = \'"+totalOne+"\' , state = \'"+state+"\' WHERE ID = \'"+paymentOne.getID()+"\' ";
						
						tx = session.beginTransaction();   //开始事务
						query = session.createQuery(hql);
						effectLines = query.executeUpdate();
						tx.commit();   //提交事务
				    }
				}
				
				hql = "UPDATE payment_formPO SET registrar = \'"+payment_form.getregistrar()+"\' , actual_sum = \'"+total+"\' , state = \'"+state+"\' WHERE paymentID = \'"+payment_form.getpaymentID()+"\' ";				
			}
			else if( zl.trim().equals("正常") ){ //薪酬发放单复核
				state = "正常";
				if(paymentPO != null)
				{
					for (Iterator<Payment> i = paymentPO.iterator(); i.hasNext();) 
				    {
						Payment paymentOne = new Payment();
						paymentOne = (Payment) i.next();
						float totalOne = paymentOne.gettotal()+paymentOne.getreward()-paymentOne.getfine();
						total = total + totalOne;
						hql = "UPDATE paymentPO SET reward = \'"+paymentOne.getreward()+"\' , fine = \'"+paymentOne.getfine()+"\' , actual_sum = \'"+totalOne+"\' , state = \'"+state+"\' WHERE ID = \'"+paymentOne.getID()+"\' ";
						
						tx = session.beginTransaction();   //开始事务
						query = session.createQuery(hql);
						effectLines = query.executeUpdate();
						tx.commit();   //提交事务
				    }
				}
				
				hql = "UPDATE payment_formPO SET registrar = \'"+payment_form.getregistrar()+"\' , actual_sum = \'"+total+"\' , state = \'"+state+"\' WHERE paymentID = \'"+payment_form.getpaymentID()+"\' ";				
			}
			// , standardID = \'"+archives.getstandardID()+"\'
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			effectLines = query.executeUpdate();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		if(effectLines!=0)
		{
			flag = true;
		}
		return flag;
	}
	
	//查询薪酬发放明细
	public List<paymentPO> Seepayment(Payment payment,String zl)  throws SQLException, ClassNotFoundException,HibernateException
	{
		Session session = hsp.getSession();   //创建一个会话
	    List<paymentPO> result = new ArrayList<paymentPO>();
	    String hql = null;
		
		try
		{
			if( payment == null && zl != null ){ //查询指定薪酬发放单ID的薪酬发放明细(ID为zl)
				hql = "from paymentPO WHERE paymentID = \'"+zl+"\' ";
			}
			else if( payment != null && zl.trim().equals("正常") ){ //查询指定条件的薪酬发放明细
				
				String paymentID = "is not null";
				String archivesID = "is not null";
				String uers_name = "is not null";
				String timeA = "is not null";
				String timeB = "is not null";
				
				if( payment.getpaymentID()!=null ){
					paymentID = "= \'"+payment.getpaymentID()+"\'";
				}
				if( !payment.getarchivesID().trim().equals("") ){
					archivesID = "= \'"+payment.getarchivesID()+"\'";
				}
				if( !payment.getuers_name().trim().equals("") ){
					uers_name = "= \'"+payment.getuers_name()+"\'";
				}
				if( payment.gettimeA() != null ){
					timeA = ">= \'"+payment.gettimeA()+"\'";
				}
				if( payment.gettimeB() != null ){
					timeB = "<= \'"+payment.gettimeB()+"\'";
				}
				hql = "from paymentPO WHERE paymentID "+paymentID+" and archivesID "+archivesID+" and uers_name "+uers_name+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeA+" and DATE_FORMAT(registration_time,\'%Y-%m-%d\') "+timeB+" and state = '正常' ";
			}
			else{
				//hql = "";
			}
			tx = session.beginTransaction();   //开始事务
			query = session.createQuery(hql);
			result = query.list();
			tx.commit();   //提交事务
		}catch (HibernateException he) 
		{
			if (tx != null) {
				tx.rollback();
			}
			throw he;
		}
		finally 
		{
			session.close();
		}
		return result;
	 }
}
