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
    
    <title>宗地/宗海</title>
    
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
	<style type="text/css">
a:hover {
	color: red;
	cursor:pointer;
}
</style>
  </head>
  
  <body>
    					<table class="table table-striped table-bordered" id="sample_1">
						<thead>
							<tr>
							
								<th class="hidden-phone">宗地/宗海</th>
								<th class="hidden-phone">宗地/宗海代码</th>
								<th class="hidden-phone">坐落</th>
								<th  class="hidden-phone">不动产单元号</th>
								
							    <th  class="hidden-phone">登记机构</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_ParcelUnit}" var="item" varStatus="ROW">
								<tr class="odd gradeX">
									
									
									<td>${item.landtype}</td>
									<td>${item.parcelcode}</td>																			
									<td>${item.sit}</td>									
									<td>${item.realrstateunitnumber}</td>																			
									<td class="hidden-phone"><a onclick="window.parent.location.href='${ctx}/RegisterManagementController/registerInformation.do?parcelunitid=${item.parcelunitid}'" class="table-actions">
									<i class="icon-eye-open"></i>登记簿查看</a>
												
								</tr>
							</c:forEach>
						</tbody>
					</table>													
  </body>
  <script type="text/javascript">

  </script>
</html>
