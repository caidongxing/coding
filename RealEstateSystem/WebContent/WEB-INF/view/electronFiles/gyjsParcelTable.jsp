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
    
    <title>My JSP 'gyjsParcelTable.jsp' starting page</title>
    
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
								<th style="width:50px;">选择
								</th>
								
								<th class="hidden-phone">坐落</th>
								<th class="hidden-phone">不动产权证号</th>
								<th class="hidden-phone">不动单元号</th>
								<th  class="hidden-phone">宗地代码</th>
								<th  class="hidden-phone">宗地面积</th>
							    <th  class="hidden-phone"></th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_ParcelUnits}" var="item" varStatus="ROW">
								<tr class="odd gradeX">
									<td><input type="checkbox" name="parcelunitid" class="checkboxes" value="${item.parcelunitid}"/>					
									</td>
									
									<td>${item.sit}</td>
									<td>${item.warrantnumber}</td>																			
									<td>${item.realrstateunitnumber}</td>									
									<td>${item.parcelcode}</td>																			
									<td>${item.parcelarea}</td>							
										<td class="hidden-phone">
										<a onclick="window.parent.location.href='${ctx}/gyjsParcelController/selectParcelUnitById.do?parcelunitid=${item.parcelunitid}'" class="table-actions"><i
											class="icon-pencil"></i>
									    </a>
									</td>
								   							
								</tr>
							</c:forEach>
						</tbody>
					</table>													
  </body>
  <script type="text/javascript">

  </script>
</html>
