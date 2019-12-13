<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>档案登记复核详情页</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="archives_review">
	      <table>
	      <s:iterator value="archivesOne" id="One">
	  
	      <tr>
	      <td><label for="archivesID">档案编号：</label></td>
	      <td colspan="7"><s:textfield name="archives.archivesID" value="%{#One.archivesID}" readonly="true" id="archivesID" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="mechanism1">I级机构：</label></td>
	      <td><s:textfield value="%{#One.mechanism1}" readonly="true" id="mechanism1" cssStyle="width:165px"/></td>
	      <td><label for="mechanism2">II级机构：</label></td>
	      <td><s:textfield value="%{#One.mechanism2}" readonly="true" id="mechanism2" cssStyle="width:165px"/></td>
	      <td><label for="mechanism3">III级机构：</label></td>
	      <td colspan="2"><s:textfield value="%{#One.mechanism3}" readonly="true" id="mechanism3" cssStyle="width:165px"/></td>
	      <td rowspan="4">这里是照片</td>
	      </tr>
	      
	      <tr>
	      <td><label for="job_classification">职位分类：</label></td>
	      <td><s:textfield value="%{#One.job_classification}" readonly="true" id="job_classification" cssStyle="width:165px"/></td>
	      <td><label for="job_name">职位名称：</label></td>
	      <td><s:textfield value="%{#One.job_name}" readonly="true" id="job_name" cssStyle="width:165px"/></td>
	      <td><label for="job_title">职称：</label></td>
	      <td colspan="2"><s:select name="archives.job_title" list="{'工程师','高级工程师'}" headerKey="%{#One.job_title}"  headerValue="%{#One.job_title}" id="job_title" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="uers_name">姓名：</label></td>
		  <td><s:textfield name="archives.uers_name" value="%{#One.uers_name}" id="uers_name" /></td>
		  <td><label for="sex">性别：</label></td>
	      <td><s:select name="archives.sex" list="{'男','女'}" headerKey="%{#One.sex}"  headerValue="%{#One.sex}" id="sex" cssStyle="width:165px"/></td>
	      <td><label for="Email">Email：</label></td>
		  <td colspan="2"><s:textfield name="archives.Email" value="%{#One.Email}" id="Email"  size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="address">住址：</label></td>
		  <td colspan="3"><s:textfield name="archives.address" value="%{#One.address}" id="address" cssStyle="width:431px"/></td>
	      <td><label for="postcode">邮编：</label></td>
		  <td colspan="2"><s:textfield name="archives.postcode" value="%{#One.postcode}" id="postcode" size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="telephone">电话：</label></td>
		  <td><s:textfield name="archives.telephone" value="%{#One.telephone}" id="telephone" /></td>
	      <td><label for="QQ">QQ：</label></td>
		  <td><s:textfield name="archives.QQ" value="%{#One.QQ}" id="QQ" /></td>
	      <td><label for="phone">手机：</label></td>
		  <td><s:textfield name="archives.phone" value="%{#One.phone}" id="phone" /></td>
		  <td><label for="registrar">复核人：</label></td>
		  <td><s:textfield name="archives.registrar" value="%{#One.registrar}" id="registrar" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="nationality">国籍：</label></td>
	      <td><s:select name="archives.nationality" list="{'中国','美国','日本'}" headerKey="%{#One.nationality}"  headerValue="%{#One.nationality}" id="nationality" cssStyle="width:165px"/></td>
	      <td><label for="homeplace">出生地：</label></td>
		  <td><s:textfield name="archives.homeplace" value="%{#One.homeplace}" id="homeplace" /></td>
	      <td><label for="date_of_birth">生日：</label></td>
		  <td><s:textfield name="archives.date_of_birth" value="%{#One.date_of_birth}" id="date_of_birth" /></td>
		  <td><label for="nation">民族：</label></td>
	      <td><s:select name="archives.nation" list="{'汉族','满族','回族'}" headerKey="%{#One.nation}"  headerValue="%{#One.nation}" id="nation" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="religion">宗教信仰：</label></td>
		  <td><s:select name="archives.religion" list="{'无','基督教','伊斯兰教','佛教'}" headerKey="%{#One.religion}"  headerValue="%{#One.religion}" id="religion" cssStyle="width:165px"/></td>
		  <td><label for="political">政治面貌：</label></td>
	      <td><s:select name="archives.political" list="{'群众','党员','其他'}" headerKey="%{#One.political}"  headerValue="%{#One.political}" id="political" cssStyle="width:165px"/></td>
	      <td><label for="IDcard">身份证号码：</label></td>
		  <td><s:textfield name="archives.IDcard" value="%{#One.IDcard}" id="IDcard" /></td>
	      <td><label for="social_card">社会保障号码：</label></td>
		  <td><s:textfield name="archives.social_card" value="%{#One.social_card}" id="social_card" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="age">年龄：</label></td>
		  <td><s:textfield name="archives.age" value="%{#One.age}" id="age" /></td>
		  <td><label for="education">学历：</label></td>
	      <td><s:select name="archives.education" list="{'本科及以上','小学','初中','高中'}" headerKey="%{#One.education}"  headerValue="%{#One.education}" id="education" cssStyle="width:165px"/></td>
	      <td><label for="major">学历专业：</label></td>
	      <td><s:select name="archives.major" list="{'软件工程','计算机科学与技术','信息管理与信息系统'}" headerKey="%{#One.major}"  headerValue="%{#One.major}" id="major" cssStyle="width:165px"/></td>
	      <td><label for="standardID">薪酬标准：</label></td>
	      <td><s:select name="archives.standardID" list="salary_standardAll" listKey="standardID"  listValue="standard_name" headerKey="%{#One.standardID}"  headerValue="%{#One.standard_name}"  id="standardID" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="bank">开户银行：</label></td>
	      <td><s:select name="archives.bank" list="{'中国农业银行','中国建设银行','中国工商银行','中国人民银行'}" headerKey="%{#One.bank}"  headerValue="%{#One.bank}" id="bank" cssStyle="width:165px"/></td>
	      <td><label for="account">银行卡帐号：</label></td>
		  <td><s:textfield name="archives.account" value="%{#One.account}" id="account" /></td>
		  <td><label for="specialty">技术特长：</label></td>
	      <td><s:select name="archives.specialty" list="{'前端','后台','数据库'}" id="specialty" headerKey="%{#One.specialty}"  headerValue="%{#One.specialty}" cssStyle="width:165px"/></td>
	      <td><label for="hobby">爱好：</label></td>
	      <td><s:select name="archives.hobby" list="{'篮球','足球','乒乓球','其他'}" id="hobby" headerKey="%{#One.hobby}"  headerValue="%{#One.hobby}" cssStyle="width:165px"/></td>
	      </tr>
		  
		  <tr>
		  <td><label for="record">个人履历：</label></td>
		  <td colspan="7"><s:textarea name="archives.record" value="%{#One.record}" id="record" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="family">家庭关系信息：</label></td>
		  <td colspan="7"><s:textarea name="archives.family" value="%{#One.family}" id="family" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="note">备注：</label></td>
		  <td colspan="7"><s:textarea name="archives.note" value="%{#One.note}" id="note" cols="146" cssStyle="resize:none"/></td>
		  </tr>
	      
	      </s:iterator>
	      </table>
	      <s:submit  value="复核通过"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>