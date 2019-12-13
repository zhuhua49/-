package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class archives_recoverAction {
	private ModelBean service;

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			//String ID = ServletActionContext.getRequest().getParameter("archives.uersID");
			
			if (service.Updatearchives(null, ServletActionContext.getRequest().getParameter("archives.uersID") ,1)) 
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
