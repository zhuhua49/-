package com.action;
import java.sql.SQLException;
import java.util.List;

import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.*;
public final class salary_payment_reviewAction extends ActionSupport
{  
	private List<Payment> payment;
	private Payment_form payment_form; 
	private ModelBean service;

	public List<Payment> getPayment() {
		return payment;
	}
 
	public void setPayment(List<Payment> payment) {
		this.payment = payment;
	}
	
	public Payment_form getPayment_form() {
		return payment_form;
	}

	public void setPayment_form(Payment_form payment_form) {
		this.payment_form = payment_form;
	}

	public String execute() 
	{
		//return  "success";
		try
		{
			service = new ModelBean();
			
			if (service.Updatepayment_form(payment,payment_form,"正常")) 
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
