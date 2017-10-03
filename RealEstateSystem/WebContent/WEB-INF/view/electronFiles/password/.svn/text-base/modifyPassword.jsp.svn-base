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
    
    <title>修改密码</title>  
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
  <form style="width:450px;margin:0 auto;margin-top: 88px;" action="${ctx}/StaffController/updatePassword.do" method="post">
    <table class="table table-bordered table-hover m10">
    
			<tr>
				<td class="tableleft">原密码:</td>
				<td><input id="oldpassword" name="username" type="text"><span class="spa spa1"></span></td>
				
			</tr>
			<tr>
			    <td class="tableleft">新密码:</td>
				<td><input id="Password" name="Password" type="text"><span class="spa spa2"></span></td>
				</tr>									
			<tr>
			
				<td class="tableleft">确认密码:</td>
				<td><input id="password" name="password" type="text"><span class="spa spa3"></span></td>
									
			</tr>						
		</table>
   
			<div style="float:right;position: relative;">
		<button  type="submit" id="subm" class="btn btn-success">
				<i class="icon-plus"></i>保存
			</button>			
		</div>
		
		 </form>
		 	
		</div>
<script type="text/javascript">
var obj;
     	/************************  失焦判断  **********************************/
			$("input").blur(function(){
				$(".spa").css("color","#BD362F")		
				if($(this).is("#oldpassword")){ //原密码验证
				  if($("#oldpassword").val()!=""){
				  var password=document.getElementById("oldpassword").value;		
					      $.ajax({           
                 type:"post",
                 url: "<%=path%>/StaffController/selectPasswordByUserId.do?password="+password,     
                 //data : $("#loginform").serialize(),
				 dataType:"json",          
                 success : function(result){              
                   obj=eval(result).jsonResult;
                     if(obj=="passwordError"){
                        $(".spa1").text("与原密码不一致");
                        $("#oldpassword").css("border","1px solid #BD362F")
                        return false;
                     }
                     else if(obj=="isok"){
                        $(".spa1").text("");
                         return true;
                     }                    
                   }
                 }); 			
                 
                 }					
				}
				
				if($(this).is("#Password")){ //密码判断
					var mm= /^\d{6}$/;
					if($("#Password").val()!=""){
					if(!(mm.test($("#Password").val()))){
						$(".spa2").text("请输入6位纯数字密码");
						$(this).css("border","1px solid #BD362F")
						return false;
					}else if(mm){
						$(".spa2").text("");
						return true;
					}
					}else{
						$(".spa2").text("");
					}
				}
				
					if($(this).is("#password")){ 
				
				if($("#password").val()!=""){
				
				if($("#Password").val()!=$("#password").val()){
				   $(".spa3").text("和登陆密码不一致");
				   $(this).css("border","1px solid #BD362F")
				   return false;
				   }
				   else{
				   $(".spa3").text("");
				   return true;
				   }
				   }
				   else{
				   $(".spa3").text("");
				   }
				}
				
				});
				
		/********************** 聚焦提示 ************************/	
			$("input").focus(function(){
				if($(this).is("#oldpassword")){
					$(".spa1").text("请你输入原密码").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				if($(this).is("#Password")){
					$(".spa2").text("请你输入新密码").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				if($(this).is("#password")){
					$(".spa3").text("请你再次输入密码").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				
			})		
			
			  /*********************** 提交验证 ***************************/
			$("#subm").click(function(){					
				var mm=	/^\d{6}$/;
				if($("#oldpassword").val()!="" && obj=="isok" && mm.test($("#Password").val()) && $("#Password").val()==$("#password").val()){
			     return true;					        				
			    	}else{
				if($("#oldpassword").val()==""){
						$(".spa1").text('请你填写原密码')
					} 
					if($("#Password").val()==""){
						$(".spa2").text('请你填写新密码')
					} 
					
					if($("#password").val()==""){
						$(".spa3").text('请你再次输入密码')
					} 				
					return false;
				}
			})
</script>
  </body>

</html>
