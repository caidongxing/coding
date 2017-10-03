<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath}" scope="page"
	var="ctx"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主界面</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="${ctx}/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/assets/css/main-min.css" rel="stylesheet" type="text/css" />
    <!-- 右下角提示功能 -->
<script type="text/javascript" src="${ctx}/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="${ctx}/hdialog/messager/jquery.messager.js"></script>
<!--提示框 -->
	<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>

<script language="javascript">
function changeColor(){
var color="#F0F7D7|#21F745|yellow|green|gray";
color=color.split("|");
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)];
}
setInterval("changeColor()",800);
</script>
  
  </head>
  
  <body>
  <div class="header">

    <div class="dl-title">
      
    </div>
     
    <marquee scrollamount="10" onmouseout="this.start()" onmouseover="this.stop()"><div style="width: 98%" class="dl-log"><span id="blink">${SESSION_PFUSER},欢迎你登陆不动产登记信息系统</span><a style="cursor: pointer;" onclick="quit()" title="退出系统" class="dl-log-quit">[退出]</a>   
    </div></marquee>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">登记业务办理</div></li>	
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">登记簿册管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">电子档案管理</div></li>
            
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">
    </ul>
</div>

<script type="text/javascript" src="${ctx}/assets/js/bui-min.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/config-min.js"></script>
<script type="text/javascript">
    BUI.use('common/main',function(){
        var config = [{id:'1',homePage:'2',menu:[{text:'登记业务办理',items:[{id:'2',text:'在办箱',href:'<%=path%>/boxOfficeController/selectBoxOffice.do'},{id:'4',text:'已办箱',href:'<%=path%>/boxOfficeController/alreadyBoxOffice.do'}]}]},
		{id:'10',homePage : '11',menu:[{text:'登记簿册管理',items:[{id:'11',text:'登记簿管理',href:'<%=path%>/RegisterManagementController/registerManagement.do'}]}]},
		{id:'12',homePage : '13',menu:[{text:'电子档案管理',items:[{id:'13',text:'国有建设宗地',href:'<%=path%>/gyjsParcelController/selectGyjsParcel.do'},{id:'14',text:'员工管理',href:'<%=path%>/StaffController/selectStaff.do'}
		,{id:'15',text:'修改密码',href:'<%=path%>/StaffController/modifyPassword.do'}]}]}];
        new PageUtil.MainPage({
            modulesConfig : config    
        });
    });
</script>
<div style="text-align:center;">

</div>
	<input type="hidden" id="quarterstypeid" value="${quarterstypeid}">
   <script>

$(function(){
    var quarterstypeid = document.getElementById("quarterstypeid").value;
    if(quarterstypeid!=1){
	$.messager.anim('show', 2000);
	$.messager.show('温馨提示！', '有<lable>${BoxOffices}</lable>个新办箱 ', 0);
	}
	});
	

	function quit(){
		 swal({
			title: "要退出系统吗？", 
			text: "您确定要退出系统吗？", 			
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要退出",
			confirmButtonColor: "#ec6c62"
			}, function() {
			window.location="${ctx}";			
			});
	};
   </script>
  </body>
</html>
