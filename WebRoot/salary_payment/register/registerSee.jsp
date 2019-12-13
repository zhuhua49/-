<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬发放登记</title>
	<style>td {text-align:center;}</style>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	 <center>
	  <table>
		<tr>
			<td>薪酬发放单编号</td>
			<td>I级机构</td>
			<td>II级机构</td>
			<td>III级机构</td>
			<td>人数</td>
			<td>基本薪酬总额</td>
		</tr>
		<s:iterator value="payment_formAll" id="ALL">
		<tr>
			<td><s:property value="#ALL.paymentID"/></td>
			<td><s:property value="#ALL.mechanism1"/></td>
			<td><s:property value="#ALL.mechanism2"/></td>
			<td><s:property value="#ALL.mechanism3"/></td>
			<td><s:property value="#ALL.numberall"/></td>
			<td><s:property value="#ALL.total"/></td>
			<td><a href="salary_payment_registerOne.action?payment_form.paymentID=<s:property value="#ALL.paymentID" />" >登记</a></td>
		</tr>
		</s:iterator>
	  </table>
	  
	  <a href="salary_payment/register/new.jsp">新建薪酬发放单</a><br>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	 </center>
</body>
</html>