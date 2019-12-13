<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>档案查询</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="archives_querySee">
	  <table>
	  
	      <tr>
	      <td><label for="mechanism1">I级机构：</label></td>
	      <td><s:select name="archives_query.mechanism1" list="{'集团'}" id="mechanism1" headerKey="不选择"  headerValue="不选择" cssStyle="width:349px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="mechanism2">II级机构：</label></td>
	      <td><s:select name="archives_query.mechanism2" list="{'软件公司','生物科技公司'}" headerKey="不选择"  headerValue="不选择" id="mechanism2" cssStyle="width:349px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="mechanism3">III级机构：</label></td>
	      <td><s:select name="archives_query.mechanism3" list="{'外包组','测试组','开发组'}" headerKey="不选择"  headerValue="不选择" id="mechanism3" cssStyle="width:349px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="job_classification">职位分类：</label></td>
	      <td><s:select name="archives_query.job_classification" list="{'软件设计','软件开发','软件分析','软件测试'}" headerKey="不选择"  headerValue="不选择" id="job_classification" cssStyle="width:349px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="job_name">职位名称：</label></td>
	      <td><s:select name="archives_query.job_name" list="{'工程师','项目经理'}" headerKey="不选择"  headerValue="不选择" id="job_name" cssStyle="width:349px"/></td>
	      </tr>
	      
	      <tr>
	      <td>建档时间：</td>
	      <td><s:textfield name="archives_query.timeA"/>至<s:textfield name="archives_query.timeB"/>(YYYY-MM-DD)</td>
	      </tr>
	      
	      </table>
	      <s:submit  value="查询"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>