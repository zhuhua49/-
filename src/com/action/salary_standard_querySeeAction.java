package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class salary_standard_querySeeAction {
	private ModelBean service;
	private List<salary_standardPO> salary_standardAll; 
	public Salary_standard salary_standard;

	public List<salary_standardPO> getsalary_standardAll() {
		return salary_standardAll;
	}

	public void setsalary_standardAll(List<salary_standardPO> salary_standardAll) {
		this.salary_standardAll = salary_standardAll;
	}
	
	public Salary_standard getSalary_standard() {
		return salary_standard;
	}

	public void setSalary_standard(Salary_standard salary_standard) {
		this.salary_standard = salary_standard;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			salary_standardAll = new ArrayList<salary_standardPO>();
			salary_standardAll = service.Seesalary_standard(salary_standard,"正常");
			
			if (salary_standardAll != null) 
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
