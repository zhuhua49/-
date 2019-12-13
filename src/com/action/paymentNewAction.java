package com.action;
import java.sql.SQLException;
import com.service.*;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.*;
public final class paymentNewAction extends ActionSupport
{  
	private Payment_form payment_form; 
	private ModelBean service;

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
			
			if (service.Insertsalary_payment(payment_form)) 
			{
				return  "success";  //成功
			}
			else
			{
				return "error";     //失败						
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
