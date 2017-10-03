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
    
    <title>员工信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx}/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="${ctx}/assets/css/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
	
	<link href="${ctx}/Css/css/style.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="${ctx}/Css/bootstrap.css" />


<!-- 分页 -->
<link rel="stylesheet" href="${ctx}/assets/page/paging-master/paging.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/assets/page/paging-master/query.js"></script>
 <script type="text/javascript" src="${ctx}/assets/page/paging-master/paging.js"></script>
 
    
  <body>	
   
 <div class="form-inline definewidth m20">
		名称： <input type="text" name="menuname" id="menuname"
			class="abc input-default">&nbsp;&nbsp;
		<button onclick="select()" class="btn btn-primary">查询</button>
															
		</div>
			<!-- BEGIN EXAMPLE TABLE widget-->
			<div class="widget red">
				<div class="widget-title">
					<h4>
						<i class="icon-reorder"></i>宗地
					</h4>
				
				</div>
			
				 <iframe style="width:99.5%;height:430px;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/RegisterManagementController/registerManagementTable.do"
									name="ifaborr"> </iframe> 					
			</div>
			<!-- END EXAMPLE TABLE widget-->
		
		<div id="pageToolbar"></div>
		  <input style="display: none;" id="line" value="${lines}"/>
		   <input style="display: none;" id="pageSize" value="${pageSize}"/>	
	  <script>
           var lines=document.getElementById("line").value;
            var pageSize= document.getElementById("pageSize").value;        
	       $('#pageToolbar').Paging({pagesize:pageSize,count:lines,toolbar:true,callback:function(page,size,count){	
	       window.ifaborr.location="${ctx}/RegisterManagementController/registerManagementByLimit.do?page="+page+"&size="+size;			
			}});
		 
		</script>
		<script type="text/javascript">
		   function select(){
		      var menuname=$('#menuname').val();
		     window.ifaborr.location="${ctx}/RegisterManagementController/selectMhParcelunitByRegistrationNo.do?menuname="+menuname;			
		   }
		</script>
		
	  </body>
</html>
