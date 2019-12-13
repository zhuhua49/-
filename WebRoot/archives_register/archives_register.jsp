<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<s:head theme="ajax"/>
	<title>档案登记</title>
	<script src="${pageContext.request.contextPath}/archives_register/archives_register.js" type="text/javascript"></script>
</head>
<body vLink="#006666" link="#003366" bgColor="#E0F0F8">
	  <center>
	  <s:form action="archives_register">
	  
	  <style> 
	  .nobr br{display:none}   
	  </style>
	  <s:datetimepicker name="starttime" id="starttime" displayFormat="yyyy-MM-dd HH:mm:ss"></s:datetimepicker>
	  <s:set name="area" 
	  value="#{      '北京':{'北京'}, 
                     '河北':{'石家庄','唐山','秦皇岛','邯郸','邢台','保定','张家口','承德','沧州','廊坊','衡水'}, 
                     '四川':{'成都','自贡','攀枝花','德阳','绵阳','广元','遂宁','内江','乐山','南充','眉山'} 
                 }" /> 
      <div class="nobr">
      <s:doubleselect label="地域" list="#area.keySet()" name="province"
      doubleName="city" doubleList="#area[top]" />
      </div>
	  
	  <table>
	  
	      <tr>
	      <td><label for="mechanism1">I级机构：</label></td>
	      <td><s:select name="archives.mechanism1" list="{'集团'}" id="mechanism1" cssStyle="width:165px"/></td>
	      <td><label for="mechanism2">II级机构：</label></td>
	      <td><s:select name="archives.mechanism2" list="{'软件公司','生物科技公司'}" id="mechanism2" cssStyle="width:165px"/></td>
	      <td><label for="mechanism3">III级机构：</label></td>
	      <td colspan="2"><s:select name="archives.mechanism3" list="{'外包组','测试组','开发组'}" id="mechanism3" cssStyle="width:165px"/></td>
	      <td rowspan="4">这里是照片</td>
	      </tr>
	      
	      <tr>
	      <td><label for="job_classification">职位分类：</label></td>
	      <td><s:select name="archives.job_classification" list="{'软件设计','软件开发','软件分析','软件测试'}" id="job_classification" onchange="getname()" cssStyle="width:165px"/></td>
	      <td><label for="job_name">职位名称：</label></td>
	      <td><s:select name="archives.job_name" list="{'工程师','项目经理'}" id="job_name" cssStyle="width:165px"/></td>
	      <td><label for="job_title">职称：</label></td>
	      <td colspan="2"><s:select name="archives.job_title" list="{'工程师','高级工程师'}" id="job_title" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="uers_name">姓名：</label></td>
		  <td><s:textfield name="archives.uers_name" id="uers_name" /></td>
		  <td><label for="sex">性别：</label></td>
	      <td><s:select name="archives.sex" list="{'男','女'}" id="sex" cssStyle="width:165px"/></td>
	      <td><label for="Email">Email：</label></td>
		  <td colspan="2"><s:textfield name="archives.Email" id="Email"  size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="address">住址：</label></td>
		  <td colspan="3"><s:textfield name="archives.address" id="address" cssStyle="width:431px"/></td>
	      <td><label for="postcode">邮编：</label></td>
		  <td colspan="2"><s:textfield name="archives.postcode" id="postcode" size="37"/></td>
		  </tr>
		  
		  <tr>
		  <td><label for="telephone">电话：</label></td>
		  <td><s:textfield name="archives.telephone" id="telephone" /></td>
	      <td><label for="QQ">QQ：</label></td>
		  <td><s:textfield name="archives.QQ" id="QQ" /></td>
	      <td><label for="phone">手机：</label></td>
		  <td><s:textfield name="archives.phone" id="phone" /></td>
		  <td><label for="registrar">登记人：</label></td>
		  <td><s:textfield name="archives.registrar" id="registrar" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="nationality">国籍：</label></td>
	      <td><s:select name="archives.nationality" list="{'中国','美国','日本'}" id="nationality" cssStyle="width:165px"/></td>
	      <td><label for="homeplace">出生地：</label></td>
		  <td><s:textfield name="archives.homeplace" id="homeplace" /></td>
	      <td><label for="date_of_birth">生日：</label></td>
		  <td><s:textfield name="archives.date_of_birth" id="date_of_birth" /></td>
		  <td><label for="nation">民族：</label></td>
	      <td><s:select name="archives.nation" list="{'汉族','满族','回族'}" id="nation" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="religion">宗教信仰：</label></td>
		  <td><s:select name="archives.religion" list="{'无','基督教','伊斯兰教','佛教'}" id="religion" cssStyle="width:165px"/></td>
		  <td><label for="political">政治面貌：</label></td>
	      <td><s:select name="archives.political" list="{'群众','党员','其他'}" id="political" cssStyle="width:165px"/></td>
	      <td><label for="IDcard">身份证号码：</label></td>
		  <td><s:textfield name="archives.IDcard" id="IDcard" /></td>
	      <td><label for="social_card">社会保障号码：</label></td>
		  <td><s:textfield name="archives.social_card" id="social_card" /></td>
		  </tr>
		  
		  <tr>
		  <td><label for="age">年龄：</label></td>
		  <td><s:textfield name="archives.age" id="age" /></td>
		  <td><label for="education">学历：</label></td>
	      <td><s:select name="archives.education" list="{'本科及以上','小学','初中','高中'}" id="education" cssStyle="width:165px"/></td>
	      <td><label for="major">学历专业：</label></td>
	      <td><s:select name="archives.major" list="{'软件工程','计算机科学与技术','信息管理与信息系统'}" id="major" cssStyle="width:165px"/></td>
	      <td><label for="standardID">薪酬标准：</label></td>
	      <td><s:select name="archives.standardID" list="salary_standardAll" listKey="standardID"  listValue="standard_name" id="standardID" cssStyle="width:165px"/></td>
	      </tr>
	      
	      <tr>
	      <td><label for="bank">开户银行：</label></td>
	      <td><s:select name="archives.bank" list="{'中国农业银行','中国建设银行','中国工商银行','中国人民银行'}" id="bank" cssStyle="width:165px"/></td>
	      <td><label for="account">银行卡帐号：</label></td>
		  <td><s:textfield name="archives.account" id="account" /></td>
		  <td><label for="specialty">技术特长：</label></td>
	      <td><s:select name="archives.specialty" list="{'前端','后台','数据库'}" id="specialty" cssStyle="width:165px"/></td>
	      <td><label for="hobby">爱好：</label></td>
	      <td><s:select name="archives.hobby" list="{'篮球','足球','乒乓球','其他'}" id="hobby" cssStyle="width:165px"/></td>
	      </tr>
		  
		  <tr>
		  <td><label for="record">个人履历：</label></td>
		  <td colspan="7"><s:textarea name="archives.record" id="record" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="family">家庭关系信息：</label></td>
		  <td colspan="7"><s:textarea name="archives.family" id="family" cols="146" cssStyle="resize:none"/></td>
		  </tr>
		  
	      <tr>
	      <td><label for="note">备注：</label></td>
		  <td colspan="7"><s:textarea name="archives.note" id="note" cols="146" cssStyle="resize:none"/></td>
		  </tr>
	      
	      </table>
	      <s:submit  value="提交"/>
	      <s:reset  value="重置"/>
	  </s:form>
	  <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
	  </center>
	  <script src="${pageContext.request.contextPath}/archives_register/archives_register.js" type="text/javascript"></script>
</body>
</html>