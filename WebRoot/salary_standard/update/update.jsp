<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬标准变更页</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="salary_standard_update">
	      <s:iterator value="salary_standardOne" id="One">
	      <table>
	  
	      <tr>
		  <td><label for="standardID">薪酬标准编号：</label></td>
		  <td><s:textfield name="salary_standard.standardID" value="%{#One.standardID}" id="standardID" readonly="true" /></td>
	      <td><label for="standard_name">薪酬标准名称：</label></td>
		  <td><s:textfield name="salary_standard.standard_name" value="%{#One.standard_name}" id="standard_name" /></td>
		  <td><label for="total">薪酬总额：</label></td>
		  <td><s:textfield name="salary_standard.total" value="%{#One.total}" id="total" readonly="true" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="setter">制定人：</label></td>
		  <td><s:textfield name="salary_standard.setter" value="%{#One.setter}" id="setter" /></td>
	      <td><label for="registrar">登记人：</label></td>
		  <td><s:textfield name="salary_standard.registrar" value="%{#One.registrar}" id="registrar" /></td>
		  <td><label for="registration_time">登记时间：</label></td>
		  <td><s:textfield name="salary_standard.registration_time" value="%{#One.registration_time}" id="registration_time" readonly="true" /></td>
		  </tr>
	      
	      </table>
	      <br>
	      <table>
	      
	      <tr>
	      <td align="center">薪酬项目名称</td>
	      <td align="center">金额</td>
	      </tr>
	      
	      <tr>
	      <td><label for="base_pay">基本工资：</label></td>
	      <td><s:textfield name="salary_standard.base_pay" value="%{#One.base_pay}" id="base_pay" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="travel_allowance">交通补助：</label></td>
	      <td><s:textfield name="salary_standard.travel_allowance" value="%{#One.travel_allowance}" id="travel_allowance" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="lunch_allowance">午餐补助：</label></td>
	      <td><s:textfield name="salary_standard.lunch_allowance" value="%{#One.lunch_allowance}" id="lunch_allowance" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="communication_allowance">通信补助：</label></td>
	      <td><s:textfield name="salary_standard.communication_allowance" value="%{#One.communication_allowance}" id="communication_allowance" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="endowment_insurance">养老保险：</label></td>
	      <td><s:textfield name="salary_standard.endowment_insurance" value="%{#One.endowment_insurance}" id="endowment_insurance" readonly="true" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="medical_insurance">医疗保险：</label></td>
	      <td><s:textfield name="salary_standard.medical_insurance" value="%{#One.medical_insurance}" id="medical_insurance" readonly="true" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="unemployment_insurance">失业保险：</label></td>
	      <td><s:textfield name="salary_standard.unemployment_insurance" value="%{#One.unemployment_insurance}" id="unemployment_insurance" readonly="true" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="housing_fund">住房公积金：</label></td>
	      <td><s:textfield name="salary_standard.housing_fund" value="%{#One.housing_fund}" id="housing_fund" readonly="true" /></td>
	      </tr>	      	      
	
	      </table>
	      </s:iterator>
	      <s:submit  value="变更"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>