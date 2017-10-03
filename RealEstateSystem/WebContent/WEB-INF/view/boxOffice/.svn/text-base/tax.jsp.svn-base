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
    
    <title>My JSP 'tax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="Css/3Dbutton.css" type="text/css"></link>	 
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" /> 
	
   <script type="text/javascript" src="hdialog/js/jquery-1.9.1.min.js"></script>
  </head>
  
  <body>
   <h5 style="color:red;">协税信息:</h5>
											<table class="table table-hover definewidth m10">
												<tr>
													<td class="tableleft">契税:</td>
													<td><input type="text">
													</td>

													<td>营业税:</td>
													<td><input type="text"></td>
												</tr>

												<tr>
													<td>个人所得税:</td>
													<td><input type="text"></td>
													<td>印花税:</td>
													<td><input type="text"></td>
												</tr>
												<tr>
													<td class="tableleft">土地增值税:</td>
													<td><input colspan="3"  type="text"></td>
													<td></td>
													<td></td>
												</tr>
												
											</table>
										<div style="float:right;left: -600px;position: relative;">
												<a style="color:blue;" class="button">保存</a>										
										</div>	
  </body>
</html>
