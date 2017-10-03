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
								
								<th class="hidden-phone">用户名</th>
								<th class="hidden-phone">身份证号</th>
								<th class="hidden-phone">电话号码</th>
								<th  class="hidden-phone">性别</th>
								<th  class="hidden-phone">真实姓名</th>
								<th  class="hidden-phone">注册日期</th>
								<th  class="hidden-phone">岗位</th>
							    <th  class="hidden-phone"></th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="item" varStatus="ROW">
								<tr class="odd gradeX">
									<td><input type="checkbox" name="parcelunitid" class="checkboxes" value="${item.userid}"/>					
									</td>
									
									<td>${item.username}</td>
									<td>${item.identitycard}</td>																			
									<td>${item.phone}</td>									
									<td>${item.sex}</td>																			
									<td>${item.realname}</td>		
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.registerdate}"/></td>																			
									<td>${item.quarterstype}</td>								
										<td class="hidden-phone">
										<a onclick="window.parent.location.href='${ctx}/StaffController/selectUserById.do?userid=${item.userid}'" class="table-actions"><i
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
