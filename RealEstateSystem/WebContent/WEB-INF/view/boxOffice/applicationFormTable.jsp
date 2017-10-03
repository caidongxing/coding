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
    
    <title>My JSP 'collectFeesTable.jsp' starting page</title>
    
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
  </head>
  
  <body>
   		<table class="table table-striped table-bordered" id="sample_1">
						<thead>
							<tr>
													
								<th class="hidden-phone">受理编号</th>
								<th class="hidden-phone">坐落</th>
								<th class="hidden-phone">不动产权证号</th>
								<th class="hidden-phone">不动单元号</th>
								
								
								<th  class="hidden-phone">不动产类型</th>
							    <th  class="hidden-phone"></th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_RightInformations}" var="item">
								<tr class="odd gradeX">						
									<td>${item.identifier}</td>
									<td>${item.sit}</td>																			
									<td>${item.warrantnumber}</td>									
							    	<td>${item.realrstateunitnumber}</td>																																																											
									<td>${item.usename}</td>							
										<td class="hidden-phone">
										<a onclick="window.location.href='${ctx}/ApplicationFormController/ApplicationForm.do?parcelunitid=${item.parcelunitid}'" class="table-actions"><i
											class="icon-pencil">查看</i>
									    </a>
									</td>
								   							
								</tr>
							</c:forEach>
						</tbody>
					</table>			
  </body>
</html>
