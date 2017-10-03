<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value=" ${pageContext.request.contextPath}" scope="page"
	var="ctx"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改员工</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
  <link href="${ctx}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${ctx}/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
	<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
	<!--提示框 -->
	<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
	
<style>
.spa {
	height: 36px;
	width: 204px;
	font-size: 12px;
	color: #BD362F;
	text-indent: 10px;
	margin-top: 10px;
}
</style>
  </head>
  
  <body>
  
  <div class="widget-body" style="width:auto; height:680px; overflow:scroll;">
  <form style="width:900px;margin:0 auto;margin-top: 28px;" action="${ctx}/StaffController/updateStaff.do" method="post">
    <table class="table table-bordered table-hover m10">
    
			<tr>
				<td class="tableleft">用户名:</td>
				<td><input id="username" name="username" type="text" value="${user.username}"><span class="spa spa1"></span></td>
				<td style="width:10%;" class="tableleft">职位:</td>
				<td>
				  <select name="quarterstypeid" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${quartersTypes}" var="item">
					<option  value="${item.quarterstypeid}" ${user.quarterstypeid eq item.quarterstypeid?"selected='selected'":""}>${item.quarterstype}</option>						
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
			    <td class="tableleft">身份证号:</td>
				<td><input id="identitycard" name="identitycard" type="text" value="${user.identitycard}"><span class="spa spa2"></span></td>
					<td class="tableleft">电话号码:</td>
				<td><input id="phone" name="phone" type="text" value="${user.phone}"><span class="spa spa3"></span></td>
			</tr>									
			<tr>
			<td class="tableleft">性别:</td>
				<td>
				  <select name="sex" value="this.options[this.options.selectedIndex].value">														
				
					<option  value="男" ${user.sex eq '男'?"selected='selected'":""}>男</option>						
				    <option  value="女" ${user.sex eq '女'?"selected='selected'":""}>女</option>	
				</select>
				</td>
				<td class="tableleft">真实姓名:</td>
				<td><input id="realname" name="realname" type="text" value="${user.realname}"><span class="spa spa5"></span></td>
												
			</tr>
				
		</table>
   
			<div style="float:right;position: relative;">
		<button  type="submit" id="subm" class="btn btn-success">
				<i class="icon-plus"></i>添加
			</button>			
		</div>
		
		 </form>
		 	<a style="float:right;margin-right:10px; relative;"  href="${ctx}/StaffController/selectStaff.do"><button
				class="btn btn-info">
				<i class="icon-refresh"></i>返回列表
			</button>
		</a>
		</div>
		<script type="text/javascript">
		/************************  失焦判断  **********************************/
			$("input").blur(function(){
				$(".spa").css("color","#BD362F")
		
				if($(this).is("#identitycard")){ //身份证判断
					var sfz=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/
					if($("#identitycard").val()!=""){
					if(!(sfz.test($("#identitycard").val()))){
						$(".spa2").text("请输入正确的身份证号码");
						$(this).css("border","1px solid #BD362F")
						return false;
					}else if(sfz){
						$(".spa2").text("");
						return true;
					}
					}else{
						$(".spa2").text("");
					}
				}
				
						if($(this).is("#phone")){ //手机号判断
					var sjh= /^((13[0-9])|(15[^4,\D])|(18[0-9]))\d{8}$/;
					if($("#phone").val()!=""){
					if(!(sjh.test($("#phone").val()))){
						$(".spa3").text("请输入正确的手机号码");
						$(this).css("border","1px solid #BD362F")
						return false;
					}else if(sjh){
						$(".spa3").text("");
						return true;
					}
					}else{
						$(".spa3").text("");
					}
				}
						
				if($("#username").val()!=""){
				    $(".spa1").text("");
				}
				if($("#realname").val()!=""){
				    $(".spa5").text("");
				}
				})
		/********************** 聚焦提示 ************************/	
			$("input").focus(function(){
				if($(this).is("#identitycard")){
					$(".spa2").text("请你输入身份证号").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				if($(this).is("#phone")){
					$(".spa3").text("请你输入手机号").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				
			})
		  /*********************** 提交验证 ***************************/
			$("#subm").click(function(){
				var sfz=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;   //身份证正则
				var sjh= /^((13[0-9])|(15[^4,\D])|(18[0-9]))\d{8}$/;		
				
				if(sfz.test($("#identitycard").val()) && sjh.test($("#phone").val()) && $("#username").val()!="" && $("#realname").val()!=""){
		      	return true;				        				
				}else{
				if($("#username").val()==""){
						$(".spa1").text('请你输入用户名')
					} 
					if($("#identitycard").val()==""){
						$(".spa2").text('请你填写身份证号')
					} 
					if($("#phone").val()==""){
						$(".spa3").text('请你填写手机号')
					} 
					if($("#realname").val()==""){
						$(".spa5").text('请你填写真实姓名')
					} 
					
					return false;
				}
			})
			</script>
  </body>

</html>
