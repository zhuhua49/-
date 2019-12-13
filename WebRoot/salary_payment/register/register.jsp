<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬发放登记明细</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="salary_payment_register">
	      <s:iterator value="payment_formOne" id="One">
	      <table>
	  
	      <tr>
		  <td>薪酬发放单编号：</td>
		  <td><s:property value="#One.paymentID" /><s:hidden name="payment_form.paymentID" value="%{#One.paymentID}" /></td>
	      <td><label for="registrar">登记人：</label></td>
		  <td colspan="3"><s:textfield name="payment_form.registrar" id="registrar" /></td>
		  </tr>
		  
		  <tr>
		  <td>机构：</td>
		  <td><s:property value="#One.mechanism1" />/<s:property value="#One.mechanism2" />/<s:property value="#One.mechanism3" /></td>
	      <td>总人数：</td>
		  <td><s:property value="#One.numberall" /></td>
		  <td>基本薪酬总额：</td>
		  <td><s:property value="#One.total" /></td>
		  </tr>
	      
	      </table>
	      </s:iterator>
	      <br>
	      
	      <table>
	      
	      <tr>
	      <td align="center">档案编号</td>
	      <td align="center">姓名</td>
	      <td align="center">基本工资</td>
	      <td align="center">交通补助</td>
	      <td align="center">午餐补助</td>
	      <td align="center">通信补助</td>
	      <td align="center">养老保险</td>
	      <td align="center">医疗保险</td>
	      <td align="center">失业保险</td>
	      <td align="center">住房公积金</td>
	      <td align="center">奖励奖金</td>
	      <td align="center">应扣奖金</td>
	      </tr>
	      
	      <s:iterator value="paymentAll" id="All" status="st">
	      <tr>
		  <td align="center"><s:property value="#All.archivesID" /><s:hidden name="payment[%{#st.index}].ID" value="%{#All.ID}" /></td>
		  <td align="center"><s:property value="#All.uers_name" /></td>
		  <td align="center"><s:property value="#All.base_pay" /><s:hidden name="payment[%{#st.index}].total" value="%{#All.total}" /></td>
		  <td align="center"><s:property value="#All.travel_allowance" /></td>
		  <td align="center"><s:property value="#All.lunch_allowance" /></td>
		  <td align="center"><s:property value="#All.communication_allowance" /></td>
		  <td align="center"><s:property value="#All.endowment_insurance" /></td>
		  <td align="center"><s:property value="#All.medical_insurance" /></td>
		  <td align="center"><s:property value="#All.unemployment_insurance" /></td>
		  <td align="center"><s:property value="#All.housing_fund" /></td>
	      <td><s:textfield name="payment[%{#st.index}].reward" /></td>
	      <td><s:textfield name="payment[%{#st.index}].fine" /></td>
	      </tr>
	      </s:iterator>
	      
	      </table>
	      <s:submit  value="登记"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>