<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>新建薪酬发放单</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="paymentNew">
	      <table>
	  
	      <tr>
	      <td><label for="mechanism1">I级机构：</label></td>
	      <td><s:select name="payment_form.mechanism1" list="{'集团'}" id="mechanism1" cssStyle="width:165px" /></td>
	      </tr>
	      
	      <tr>	      	     
	      <td><label for="mechanism2">II级机构：</label></td>
	      <td><s:select name="payment_form.mechanism2" list="{'软件公司','生物科技公司'}" id="mechanism2" cssStyle="width:165px" /></td>
	      </tr>
	      
	      <tr>
	      <td><label for="mechanism3">III级机构：</label></td>
	      <td><s:select name="payment_form.mechanism3" list="{'外包组','测试组','开发组'}" id="mechanism3" cssStyle="width:165px" /></td>
	      </tr>
	      
	      </table>
	      <s:submit  value="新建"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>