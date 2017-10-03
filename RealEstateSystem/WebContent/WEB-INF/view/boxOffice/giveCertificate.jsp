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
    
    <title>My JSP 'giveCertificate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
	
	
	<link rel="stylesheet" href="${ctx}/hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
<script language="javascript" type="text/javascript"
	src="${ctx}/My97DatePicker/WdatePicker.js"></script>
	<!--提示框 -->
	<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
	
	<style type="text/css">
a:hover {
	color: red;
}
</style>
  </head>

 
  <body>
    <ul style="background-color:#2fade7;" class="breadcrumb">
			<li>发证记录<span class="divider">|</span>
			</li>
		</ul>
		<table class="table table-striped table-bordered" id="sample_1">
		
						<thead>
							<tr>
								<th style="width:50px;">选择</th>								
								<th class="hidden-phone">证书编号</th>
								<th class="hidden-phone">不动产权证号</th>
								<th class="hidden-phone">权利人</th>
								<th class="hidden-phone">不动单元号</th>							
								<th class="hidden-phone">是否已发</th>
								<th class="hidden-phone">领证人</th>
								<th class="hidden-phone">领证时间</th>
							    <th style="width:50px;" class="hidden-phone">操作</th>								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${certificates}" var="item" varStatus="ROW">
								<tr class="odd gradeX">
									<td><input type="checkbox" name="parcelunitid" class="checkboxes" value="${item.certificateid}"/></td>									
									<td>${item.zsbhnumber}</td>
									<td><h6>${item.warrantnumber}</h6></td>																			
									<td>${item.landuserights}</td>									
									<td>${item.realrstateunitnumber}</td>																			
									<td>${item.pfeiffer}</td>	
									<td>${item.licensingofpeople}</td>																			
									<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${item.licensingoftime}" /></td>							
										<td class="hidden-phone">
										<c:if test="${empty item.licensingofpeople}">									
										<a href="javascript:selectCertificateId(${item.certificateid})" class="slideInDown dialog demo6"><i
											class="icon-pencil"></i>发证</a>	
											</c:if>	
											
											<c:if test="${!empty item.licensingofpeople}">									
										<a href="javascript:deleteCertificateId(${item.certificateid})"><i
											class="icon-pencil"></i>撤销</a>	
											</c:if>								    
									</td>		   							
								</tr>
							</c:forEach>
						</tbody>
	
					</table>
				<div id="HBox">
		<form action="${ctx}/GiveCertificateController/updateGiveCertificate.do" method="post">		
		<table class="table table-bordered table-hover m10">
		<input type="hidden" id="CertificateId" name="certificateid"/>
			<tr>
				<td width="18%" class="tableleft">领证人姓名*:</td>
				<td><input type="text" name="licensingofpeople" /></td>
				<td width="18%" class="tableleft">领证人证件类型*:</td>
				<td><select name="idcardtypeid"
					value="this.options[this.options.selectedIndex].value">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_IdCardTypes}" var="item">
							<option value="${item.idcardtypeid}">${item.idcardtypename}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td class="tableleft">领证人证件号*:</td>
				<td><input type="text" name="idcardnumber" />
				</td>
				<td class="tableleft">领证人邮箱:</td>
				<td><input type="text" name="email" />
				</td>
			</tr>
			<tr>
				<td class="tableleft">领证人电话:</td>
				<td><input type="text" name="phone" />
				</td>
				<td class="tableleft">领证人地址:</td>
				<td><input type="text" name="address" />
				</td>			</tr>
			
			<tr>
				<td class="tableleft">发证人员</td>
				<td><input style="color:#FF0000;" type="button"
					value="${username}" />
				</td>
				<td class="tableleft">发证时间</td>
				<td><input 
					type="text" name="licensingoftime"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /></td>
			</tr>

			<tr>
				<td class="tableleft"></td>
				<td>
					<button class="btn btn-primary" type="submit">保存</button>
					
				</td>
			</tr>
		</table>
		
		</form>
	</div>
	
	<!-- HBox end -->	
<script src="${ctx}/hdialog/js/jquery.hDialog.min.js"></script>
<script type="text/javascript">
   $(function(){
	var $el = $('.dialog');
	
	$el.hDialog(); //默认调用	
	//带标题的
	$('.demo6').hDialog({title: '发证信息',height: 300});		
	//改变宽和高
	$('.demo6').hDialog({width:830,height: 300});		
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});
	//返回顶部
	$.goTop();	
	
});	

  function selectCertificateId(CertificateId){
       document.getElementById("CertificateId").value=CertificateId;
  }

function deleteCertificateId(CertificateId){
       swal({
			title: "请确认下面信息。。", 
			text: "将要撤销？？ ", 
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "确认",
			confirmButtonColor: "#ec6c62"
			}, function() {
			   window.location="<%=path%>/GiveCertificateController/deleteGiveCertificate.do?certificateid="+CertificateId;			    				
		});
  }
 
 </script>								
  </body>
</html>
