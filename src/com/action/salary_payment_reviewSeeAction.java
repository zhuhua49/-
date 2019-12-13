package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class salary_payment_reviewSeeAction {
	private ModelBean service;
	private List<payment_formPO> payment_formAll; 

	public List<payment_formPO> getpayment_formAll() {
		return payment_formAll;
	}

	public void setpayment_formAll(List<payment_formPO> payment_formAll) {
		this.payment_formAll = payment_formAll;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			payment_formAll = new ArrayList<payment_formPO>();
			payment_formAll = service.Seepayment_form("待复核");
			
			if (payment_formAll != null) 
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
