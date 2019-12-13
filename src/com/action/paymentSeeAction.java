package com.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.po.*;
import com.vo.*;
public class paymentSeeAction {
	private ModelBean service;
	private List<paymentPO> paymentAll; 
	public Payment payment;

	public List<paymentPO> getpaymentAll() {
		return paymentAll;
	}

	public void setpaymentAll(List<paymentPO> paymentAll) {
		this.paymentAll = paymentAll;
	}
	
	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public String execute() 
	{
		try
		{
			service = new ModelBean();
			paymentAll = new ArrayList<paymentPO>();
			paymentAll = service.Seepayment(payment,"正常");
			
			if (paymentAll != null) 
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
