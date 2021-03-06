<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>发票查询-日期查询</title>
    <link rel="stylesheet" href="css/response_table/bootstrap.min.css">
    
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css"  />
   	<link rel="stylesheet" href="css/style.css"  />
	<link rel="stylesheet" href="css/common.css" />
	
  	<script type="text/javascript" src="js/response_table/jquery.min.js"></script>
  	<script type="text/javascript" src="js/response_table/bootstrap.min.js"></script>
	<style type="text/css">
		button[type=button],button[type=submit]{
			border-radius: 4px!important;
		}
	</style>
  </head>
  
  <body>
    <div id="main-content">
		<div class="row-fluid">
			<div class="span12">
				<!-- BEGIN EXAMPLE TABLE widget-->
				<div class="widget blue">
					<div class="widget-title">
						<h4>
							<i class="icon-reorder"></i> 发票查询
						</h4>
						<span class="tools"> <a href="javascript:;" class="icon-remove"></a> </span>
					</div>
					<div class="widget-body">
						<div class="panel panel-default" style="border-radius: 4px!important;">
							<div class="panel-heading">
								<h3 class="panel-title">选择查询年月</h3>
							</div>
							<div class="panel-body">
								<p style="float: left;">年份：<select id="sel"   style="padding: 5px;"></select></p>
								<p>月份：<select id="month" style="padding: 5px;"></select></p>
							</div>
							<div class="panel-footer">
								<button type="button" class="btn btn-primary" onclick="btn_confrim()">确定</button>
								<button type="button" class="btn btn-primary" onclick="javascript:window.close()">取消</button>
							</div>
						</div>
					</div>
				</div>
				<!-- END EXAMPLE TABLE widget-->
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('.widget .tools .icon-remove').click(function () {
        		$(this).parents(".widget").parent().remove();
    		});
		
			//年份
			var years = new Date();
			var sel = document.getElementById('sel');
			sel.options.add(new Option('', -1));
			for ( var i = years.getFullYear(); i > 1969; i--) {
				var option = document.createElement('option');
				option.value = i;
				var txt = document.createTextNode(i + "年");
				option.appendChild(txt);
				sel.appendChild(option);
			}
			//月份	
			var mon = document.getElementById('month');
			mon.options.add(new Option('', -1));
			for ( var i = 1; i < 13; i++) {
				var option = document.createElement('option');
				option.value = i;
				var txt = document.createTextNode(i + "月份");
				option.appendChild(txt);
				mon.appendChild(option);
			}
			
		});
		
		function btn_confrim(){
			location="${ctx}/invoiceselectController/list.do";
		}
	</script>
  </body>
</html>
