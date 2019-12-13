<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬发放查询结果</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	      符合条件的薪酬发放总数：<s:property value="paymentAll.size()"/>例
	  <center>	      	      
	      <s:iterator value="paymentAll" id="All">
	      <table>
	      
	      <tr>
	      <td>薪酬发放单编号：</td>
		  <td colspan="2"><s:property value="#All.paymentID" /></td>
	      <td>档案编号：</td>
		  <td colspan="2"><s:property value="#All.archivesID" /></td>
	      <td>姓名：</td>	      
		  <td colspan="2"><s:property value="#All.uers_name" /></td>
	      <td>发放时间：</td>
		  <td colspan="2"><s:property value="#All.registration_time" /></td>
	      </tr>
	      
	      <tr>
	      <td align="center">基本工资</td>
	      <td align="center">交通补助</td>
	      <td align="center">午餐补助</td>
	      <td align="center">通信补助</td>
	      <td align="center">养老保险</td>
	      <td align="center">医疗保险</td>
	      <td align="center">失业保险</td>
	      <td align="center">住房公积金</td>
	      <td align="center">基本总额</td>
	      <td align="center">奖励奖金</td>
	      <td align="center">应扣奖金</td>
	      <td align="center">实发总额</td>
	      </tr>
	      
	      <tr>
		  <td align="center"><s:property value="#All.base_pay" /></td>
		  <td align="center"><s:property value="#All.travel_allowance" /></td>
		  <td align="center"><s:property value="#All.lunch_allowance" /></td>
		  <td align="center"><s:property value="#All.communication_allowance" /></td>
		  <td align="center"><s:property value="#All.endowment_insurance" /></td>
		  <td align="center"><s:property value="#All.medical_insurance" /></td>
		  <td align="center"><s:property value="#All.unemployment_insurance" /></td>
		  <td align="center"><s:property value="#All.housing_fund" /></td>
		  <td align="center"><s:property value="#All.total" /></td>
		  <td align="center"><s:property value="#All.reward" /></td>
		  <td align="center"><s:property value="#All.fine" /></td>
		  <td align="center"><s:property value="#All.actual_sum" /></td>
	      </tr>
	      
	      </table>
	      </s:iterator>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>