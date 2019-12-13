<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>档案查询详情页</title>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	      <table>
	      <s:iterator value="archivesOne" id="One">
	  
	      <tr>
	      <td><label for="archivesID">档案编号：</label></td>
	      <td colspan="7"><s:textfield value="%{#One.archivesID}" readonly="true" id="archivesID" cssStyle="width:165px"/></td>
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
	      <td colspan="2"><s:textfield value="%{#One.job_title}" readonly="true" id="job_title" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="uers_name">姓名：</label></td>
		  <td><s:textfield name="archives.uers_name" value="%{#One.uers_name}" readonly="true" id="uers_name" /></td>
		  <td><label for="sex">性别：</label></td>
	      <td><s:textfield value="%{#One.sex}" readonly="true" id="sex" cssStyle="width:165px"/></td>
	      <td><label for="Email">Email：</label></td>
		  <td colspan="2"><s:textfield name="archives.Email" value="%{#One.Email}" readonly="true" id="Email"  size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="address">住址：</label></td>
		  <td colspan="3"><s:textfield name="archives.address" value="%{#One.address}" readonly="true" id="address" cssStyle="width:431px"/></td>
	      <td><label for="postcode">邮编：</label></td>
		  <td colspan="2"><s:textfield name="archives.postcode" value="%{#One.postcode}" readonly="true" id="postcode" size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="telephone">电话：</label></td>
		  <td><s:textfield name="archives.telephone" value="%{#One.telephone}" readonly="true" id="telephone" /></td>
	      <td><label for="QQ">QQ：</label></td>
		  <td><s:textfield name="archives.QQ" value="%{#One.QQ}" readonly="true" id="QQ" /></td>
	      <td><label for="phone">手机：</label></td>
		  <td><s:textfield name="archives.phone" value="%{#One.phone}" readonly="true" id="phone" /></td>
		  <td><label for="registrar">复核人：</label></td>
		  <td><s:textfield name="archives.registrar" value="%{#One.registrar}" readonly="true" id="registrar" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="nationality">国籍：</label></td>
	      <td><s:textfield value="%{#One.nationality}" readonly="true" id="nationality" cssStyle="width:165px"/></td>
	      <td><label for="homeplace">出生地：</label></td>
		  <td><s:textfield name="archives.homeplace" value="%{#One.homeplace}" id="homeplace" /></td>
	      <td><label for="date_of_birth">生日：</label></td>
		  <td><s:textfield name="archives.date_of_birth" value="%{#One.date_of_birth}" readonly="true" id="date_of_birth" /></td>
		  <td><label for="nation">民族：</label></td>
	      <td><s:textfield value="%{#One.nation}" readonly="true" id="nation" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="religion">宗教信仰：</label></td>
		  <td><s:textfield value="%{#One.religion}" readonly="true" id="religion" cssStyle="width:165px"/></td>
		  <td><label for="political">政治面貌：</label></td>
	      <td><s:textfield value="%{#One.political}" readonly="true" id="political" cssStyle="width:165px"/></td>
	      <td><label for="IDcard">身份证号码：</label></td>
		  <td><s:textfield name="archives.IDcard" value="%{#One.IDcard}" readonly="true" id="IDcard" /></td>
	      <td><label for="social_card">社会保障号码：</label></td>
		  <td><s:textfield name="archives.social_card" value="%{#One.social_card}" readonly="true" id="social_card" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="age">年龄：</label></td>
		  <td><s:textfield name="archives.age" value="%{#One.age}" readonly="true" id="age" /></td>
		  <td><label for="education">学历：</label></td>
	      <td><s:textfield value="%{#One.education}" readonly="true" id="education" cssStyle="width:165px"/></td>
	      <td><label for="major">学历专业：</label></td>
	      <td><s:textfield value="%{#One.major}" readonly="true" id="major" cssStyle="width:165px"/></td>
	      <td><label for="standardID">薪酬标准：</label></td>
	      <td><s:textfield value="%{#One.standard_name}" readonly="true" id="standardID" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="bank">开户银行：</label></td>
	      <td><s:textfield value="%{#One.bank}" readonly="true" id="bank" cssStyle="width:165px"/></td>
	      <td><label for="account">银行卡帐号：</label></td>
		  <td><s:textfield name="archives.account" value="%{#One.account}" readonly="true" id="account" /></td>
		  <td><label for="specialty">技术特长：</label></td>
	      <td><s:textfield value="%{#One.specialty}" readonly="true" id="specialty" cssStyle="width:165px"/></td>
	      <td><label for="hobby">爱好：</label></td>
	      <td><s:textfield value="%{#One.hobby}" readonly="true" id="hobby" cssStyle="width:165px"/></td>
	      </tr>
		  
		  <tr>
		  <td><label for="record">个人履历：</label></td>
		  <td colspan="7"><s:textarea name="archives.record" value="%{#One.record}" readonly="true" id="record" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="family">家庭关系信息：</label></td>
		  <td colspan="7"><s:textarea name="archives.family" value="%{#One.family}" readonly="true" id="family" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="note">备注：</label></td>
		  <td colspan="7"><s:textarea name="archives.note" value="%{#One.note}" readonly="true" id="note" cols="146" cssStyle="resize:none"/></td>
		  </tr>
	      
	      </s:iterator>
	      </table>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
</body>
</html>