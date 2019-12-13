package com.action;
import java.sql.SQLException;
import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.*;
public final class archives_registerAction extends ActionSupport
{  
	private Archives archives; 
	private ModelBean service;

	public Archives getArchives() {
		return archives;
	}

	public void setArchives(Archives archives) {
		this.archives = archives;
	}

	public String execute() 
	{
		//return  "success";
		try
		{
			service = new ModelBean();
			
			if (service.Insertarchives(archives)) 
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
