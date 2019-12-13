<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬标准登记复核</title>
	<style>td {text-align:center;}</style>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	   当前等待复核的薪酬标准总数：<s:property value="salary_standardAll.size()"/>例
	   
	   <center>
	   <table>
		<tr>
			<td>薪酬标准编号</td>
			<td>薪酬标准名称</td>
			<td>基本工资</td>
			<td>薪酬总额</td>
		</tr>
		<s:iterator value="salary_standardAll" id="ALL">
		<tr>
			<td><s:property value="#ALL.standardID"/></td>
			<td><s:property value="#ALL.standard_name"/></td>
			<td><s:property value="#ALL.base_pay"/></td>
			<td><s:property value="#ALL.total"/></td>
			<td><a href="salary_standard_reviewSee1.action?salary_standard.standardID=<s:property value="#ALL.standardID" />" >复核</a></td>
		</tr>
		</s:iterator>
	   </table>
	   </center>
	   
	 <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
</body>
</html>