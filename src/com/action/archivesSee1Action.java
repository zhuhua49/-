package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class archivesSee1Action {
	private ModelBean service;
	private List<archivesPO> archivesOne;
	private List<salary_standardPO> salary_standardAll;
	String standardID = null;
	String standard_name = null;

	public List<archivesPO> getarchivesOne() {
		return archivesOne;
	}

	public void setarchivesOne(List<archivesPO> archivesOne) {
		this.archivesOne = archivesOne;
	}
	
	public List<salary_standardPO> getsalary_standardAll() {
		return salary_standardAll;
	}

	public void setsalary_standardAll(List<salary_standardPO> salary_standardAll) {
		this.salary_standardAll = salary_standardAll;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			archivesOne = new ArrayList<archivesPO>();
			archivesPO archivesPO = new archivesPO(); //储存archivesOne
			salary_standardAll = new ArrayList<salary_standardPO>();
			salary_standardPO salary_standardPO = new salary_standardPO();  //储存salary_standardOne
			List<salary_standardPO> salary_standardOne = new ArrayList<salary_standardPO>();  //根据ID储存standard_name
			//String ID = ServletActionContext.getRequest().getParameter("archives.uersID");
			archivesOne = service.Seearchives(null,ServletActionContext.getRequest().getParameter("archives.uersID"));
			salary_standardAll = service.Seesalary_standard(null,"正常");
			
			//获得archivesOne中的standardID
			if(archivesOne != null)
			{
				for (Iterator<archivesPO> i = archivesOne.iterator(); i.hasNext();) 
			    {
					archivesPO = (archivesPO) i.next();
					standardID = String.valueOf( archivesPO.getstandardID() );
			    }
			}
			
			salary_standardOne = service.Seesalary_standard(null,standardID);
			
			//获得salary_standardOne中的standard_name
			if(salary_standardOne != null)
			{
				for (Iterator<salary_standardPO> i = salary_standardOne.iterator(); i.hasNext();) 
			    {
					salary_standardPO = (salary_standardPO) i.next();
					standard_name = salary_standardPO.getstandard_name();
					
					//将archivesOne中的standard_name变成standard_name
					for(int a = 0; a < archivesOne.size();a++){  
						archivesPO archivesPO1 =archivesOne.get(a);  
						archivesPO1.setstandard_name(standard_name);  
					}
			    }
			}
			
			if (archivesOne != null) 
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
