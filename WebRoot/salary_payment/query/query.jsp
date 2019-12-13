<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬发放查询</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="salary_payment_query">
	  <table>
	  
	      <tr>
	      <td><label for="paymentID">薪酬发放单编号：</label></td>
	      <td><s:textfield name="payment.paymentID" id="paymentID" cssStyle="width:344px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="archivesID">档案编号：</label></td>
	      <td><s:textfield name="payment.archivesID" id="archivesID" cssStyle="width:344px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="uers_name">姓名：</label></td>
	      <td><s:textfield name="payment.uers_name" id="uers_name" cssStyle="width:344px"/></td>
	      </tr>	      	    
	      
	      <tr>
	      <td>发放时间：</td>
	      <td><s:textfield name="payment.timeA"/>至<s:textfield name="payment.timeB"/>(YYYY-MM-DD)</td>
	      </tr>
	      
	      </table>
	      <s:submit  value="查询"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>