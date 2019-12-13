package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class payment_formSee1Action {
	private ModelBean service;
	private List<payment_formPO> payment_formOne; 
	private List<paymentPO> paymentAll; 

	public List<payment_formPO> getpayment_formOne() {
		return payment_formOne;
	}

	public void setpayment_formOne(List<payment_formPO> payment_formOne) {
		this.payment_formOne = payment_formOne;
	}
	
	public List<paymentPO> getpaymentAll() {
		return paymentAll;
	}

	public void setpaymentAll(List<paymentPO> paymentAll) {
		this.paymentAll = paymentAll;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			payment_formOne = new ArrayList<payment_formPO>();
			paymentAll = new ArrayList<paymentPO>();
			payment_formOne = service.Seepayment_form( ServletActionContext.getRequest().getParameter("payment_form.paymentID") );
			paymentAll = service.Seepayment( null,ServletActionContext.getRequest().getParameter("payment_form.paymentID") );
			
			if (payment_formOne != null && paymentAll != null) 
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
