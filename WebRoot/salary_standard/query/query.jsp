<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>薪酬标准查询</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="salary_standard_querySee">
	  <table>
	  
	      <tr>
	      <td><label for="standardID">薪酬标准编号：</label></td>
	      <td><s:textfield name="salary_standard.standardID" id="standardID" cssStyle="width:344px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="standard_name">薪酬标准名称：</label></td>
	      <td><s:textfield name="salary_standard.standard_name" id="standard_name" cssStyle="width:344px"/></td>
	      </tr>
	      
	      <tr>
	      <td>登记时间：</td>
	      <td><s:textfield name="salary_standard.timeA"/>至<s:textfield name="salary_standard.timeB"/>(YYYY-MM-DD)</td>
	      </tr>
	      
	      </table>
	      <s:submit  value="查询"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>