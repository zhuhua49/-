<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>档案删除查询结果</title>
	<style>td {text-align:center;}</style>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	   符合条件的档案总数：<s:property value="archivesAll.size()"/>例
	   
	   <center>
	   <table>
		<tr>
			<td>档案编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>一级机构</td>
			<td>二级机构</td>
			<td>三级机构</td>
			<td>职位名称</td>
		</tr>
		<s:iterator value="archivesAll" id="ALL">
		<tr>
			<td><s:property value="#ALL.archivesID"/></td>
			<td><s:property value="#ALL.uers_name"/></td>
			<td><s:property value="#ALL.sex"/></td>
			<td><s:property value="#ALL.mechanism1"/></td>
			<td><s:property value="#ALL.mechanism2"/></td>
			<td><s:property value="#ALL.mechanism3"/></td>
			<td><s:property value="#ALL.job_classification"/><s:property value="#ALL.job_name"/></td>
			<td><a href="archives_querySee1.action?archives.uersID=<s:property value="#ALL.uersID" />">查看详情</a></td>
			<td><a href="archives_delete.action?archives.uersID=<s:property value="#ALL.uersID" />">档案删除</a></td>
		</tr>
		</s:iterator>
	   </table>
	   </center>
	   
	 <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
</body>
</html>