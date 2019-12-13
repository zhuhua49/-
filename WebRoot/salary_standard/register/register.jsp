<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬标准登记</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="salary_standard_register">
	  <table>
	  
	      <tr>
	      <td><label for="standard_name">薪酬标准名称：</label></td>
	      <td><s:textfield name="salary_standard.standard_name" id="standard_name" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="setter">制定人：</label></td>
	      <td><s:textfield name="salary_standard.setter" id="setter" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="registrar">登记人：</label></td>
	      <td><s:textfield name="salary_standard.registrar" id="registrar" /></td>
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
	      <td><s:textfield name="salary_standard.base_pay" id="base_pay" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="travel_allowance">交通补助：</label></td>
	      <td><s:textfield name="salary_standard.travel_allowance" id="travel_allowance" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="lunch_allowance">午餐补助：</label></td>
	      <td><s:textfield name="salary_standard.lunch_allowance" id="lunch_allowance" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="communication_allowance">通信补助：</label></td>
	      <td><s:textfield name="salary_standard.communication_allowance" id="communication_allowance" /></td>
	      </tr>
	      
	  </table>
	      <s:submit  value="提交"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>