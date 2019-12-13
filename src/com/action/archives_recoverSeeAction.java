package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class archives_recoverSeeAction {
	private ModelBean service;
	private List<archivesPO> archivesAll; 

	public List<archivesPO> getarchivesAll() {
		return archivesAll;
	}

	public void setarchivesAll(List<archivesPO> archivesAll) {
		this.archivesAll = archivesAll;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			archivesAll = new ArrayList<archivesPO>();
			archivesAll = service.Seearchives(null,"已删除");
			
			if (archivesAll != null) 
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
