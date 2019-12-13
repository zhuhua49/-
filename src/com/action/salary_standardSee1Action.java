package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class salary_standardSee1Action {
	private ModelBean service;
	private List<salary_standardPO> salary_standardOne; 

	public List<salary_standardPO> getsalary_standardOne() {
		return salary_standardOne;
	}

	public void setsalary_standardOne(List<salary_standardPO> salary_standardOne) {
		this.salary_standardOne = salary_standardOne;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			salary_standardOne = new ArrayList<salary_standardPO>();
			//String ID = ServletActionContext.getRequest().getParameter("archives.uersID");
			salary_standardOne = service.Seesalary_standard(null,ServletActionContext.getRequest().getParameter("salary_standard.standardID"));
			
			if (salary_standardOne != null) 
			{
				return  "success";  //成功
			}
			else
			{
				return "input";     //不成功						
			}
		}catch(SQLException e)
			{
				return  "input";     //不成功	
			}
		 catch(ClassNotFoundException ne)
		 {
		 	return  "input";     //不成功	
		 }
	}

}
