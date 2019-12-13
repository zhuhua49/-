package com.action;
import java.sql.SQLException;
import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.*;
public final class salary_standard_updateAction extends ActionSupport
{  
	private Salary_standard salary_standard; 
	private ModelBean service;

	public Salary_standard getSalary_standard() {
		return salary_standard;
	}

	public void setSalary_standard(Salary_standard salary_standard) {
		this.salary_standard = salary_standard;
	}

	public String execute() 
	{
		//return  "success";
		try
		{
			service = new ModelBean();
			
			if (service.Updatesalary_standard(salary_standard,"待复核",2)) 
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
