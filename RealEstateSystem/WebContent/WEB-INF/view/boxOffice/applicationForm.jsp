<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>My JSP 'applicationForm.jsp' starting page</title>
    
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
	<script type="text/javascript" src="${ctx}/Js/putasealon/jquery.printarea.js"></script>

	
	<style type="text/css">
.on {
	background: #42D0FF;
	color: white;
}
</style>
  </head>
  
  <body>
    <div style="width:15%;height:100%;float:left;border-right: solid 2px #2fade7;">
		<ul style="background-color:#2fade7;" class="breadcrumb">
			<li>菜单<span class="divider">|</span>&nbsp;&nbsp;
			</li>
			<li><a  href="${ctx}/ApplicationFormController/ApplicationFormTable.do"><button
				class="btn btn-info">返回
				
			</button>
		</a> </li>
		</ul>
		<ul id="coverCatalogue"
			style="position: relative;top:-20px;"
			class="nav nav-pills nav-stacked">
			<li class="active" data-toggle="tab" href="#applicationForm"><a>不动产登记申请表</a></li>
			
			<li data-toggle="tab" href="#attachedListUnit"><a>申请表附表（单元）</a></li>
			<li data-toggle="tab" href="#attachedListApplicant"><a>申请表附表（申请人）</a></li>
		</ul>
		</div>
		
		<div class="tab-content" id="myTabContent" style="width:84%;float:right;">
		
		    <div id="applicationForm" class="tab-pane fade in active">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>不动产登记申请表<span class="divider">|</span>
				</li>
				<li style="float: right;top:-6px;position:relative;"><a onclick="aa()"><button class="btn btn-success">打印
					</button></a>
				</li>
			</ul>
			<div id="ddd">
			   <h3 style="margin: 0 auto;">不动产登记申请表</h3>
			<table style="width:60%;float:left;" class="table table-hover table-condensed table-hover table-bordered">
			   <tr>
			       <td rowspan="2" style="text-align:center;vertical-align:middle;">收件</td>
			       <td style="float:left;;position: relative;">编号:</td>
			       <td><label style="float:left;color:#EE152B">${yw_BoxOffices.identifier}</label></td>
			       <td rowspan="2" style="text-align:center;vertical-align:middle;">收件人</td>
			       <td rowspan="2" style="text-align:center;vertical-align:middle;"><label >${yw_BoxOffices.username}</label></td>
			    </tr>
			    <tr>			     
			       <td style="float:left;position: relative;">日期</td>
			       <td><label style="float:left;position: relative;"><fmt:formatDate pattern="yyyy-MM-dd HH:ss:mm"
						value="${yw_BoxOffices.receivingtime}" /></label></td>			       
			    </tr>
			   
			</table>
			 <div style="width:40%;float:left;position: relative;">
			          <label style="float:left;top:20px;position: relative;margin-left: 50px">单位：</label>
			          <input style="float:left;top:20px;position: relative;margin-left: 10px" type="checkbox"> <label style="float:left;top:20px;position: relative;margin-left: 10px">平方米</label>
			          <input style="float:left;top:20px;position: relative;margin-left: 10px" type="checkbox"> <label style="float:left;top:20px;position: relative;margin-left: 10px">公顷</label>
			  </div>
			  	<table class="table table-hover table-condensed table-hover table-bordered">
			   <tr>
			       <td rowspan="2" style="text-align:center;vertical-align:middle;">申请登记是由</td>
			       <td style="float:left;;position: relative;">
			          <ul list-style="none;">          
			             <li style="list-style:none;" >
			             <c:forEach items="${bs_TypeofRights}" var="item">
			             <input <c:if test="${yw_BoxOffices.typeofrightname eq item.typeofrightname}">checked</c:if> style="float:left;position: relative;margin-left: 20px;" type="checkbox"><label style="float:left;">${item.typeofrightname}</label>
			             </c:forEach>
			            </li>			            
			          </ul>
			       </td>
			       </tr>
			       
			    <tr>			     
			       <td style="float:left;position: relative;">
			         <ul list-style="none;">          
			             <li style="list-style:none;" >
			             <c:forEach items="${bs_RegisterTypes}" var="item">
			             <input <c:if test="${yw_BoxOffices.registertypename eq item.registertypename}">checked</c:if> style="float:left;position: relative;margin-left: 15px;" type="checkbox"><label style="float:left;">${item.registertypename}</label>
			             </c:forEach>
			            </li>			            
			          </ul>
			       </td>			       
			    </tr>
			   </table>
			   
			
			 
			   <table class="table table-hover table-condensed table-hover table-bordered">
			   <c:forEach items="${applicants}" var="item">
			     <tr>
			       <td rowspan="7" style="text-align:center;vertical-align:middle;">申请人情况</td>
			       <td colspan="4" style="text-align:center;vertical-align:middle;">登记申请人</td>
			   </tr>
			   <tr>
			       <td>权利人姓名</td>
			       <td colspan="3">${item.applicantname}</td>
			   </tr>
			   <tr>
			        <td>身份证种类</td>
			       <td>${item.idcardtypename}</td>
			        <td>证件号</td>
			       <td>${item.idcardnumber}</td>
			   </tr>
			   <tr>
			       <td>通讯地址</td>
			       <td colspan="3">${item.address}</td>
			   </tr>
			   <tr>
			        <td>法定代表人或负责人</td>
			       <td>${item.legalrepresentative}</td>
			           <td>联系电话</td>
			       <td>${item.legalphone}</td>
			   </tr>
			   <tr>
			          <td>代理人姓名</td>
			       <td>${item.nameofagent}</td>
			           <td>联系电话</td>
			       <td>${item.agenttelephone}</td>
			   </tr>
			   <tr>
			           <td>代理机构名称</td>
			       <td>${item.agency}</td>
			           <td>邮编</td>
			       <td>${item.postalcode}</td>
			   </tr>
			   </c:forEach>
			  </table>
			   <table class="table table-hover table-condensed table-hover table-bordered">
			     <tr>
			       <td rowspan="4" style="text-align:center;vertical-align:middle;">不动产单元</td>
			      
			   </tr>
			   <tr>
			       <td>坐落</td>
			       <td colspan="3">${rightInformation.sit}</td>
			   </tr>
			   <tr>
			        <td>不动产单元号</td>
			       <td>${rightInformation.realrstateunitnumber}</td>
			        <td>不动产类型</td>
			       <td>${rightInformation.typeofrightname}</td>
			   </tr>
			   <tr>
			       <td>面积</td>
			       <td>${rightInformation.parcelarea}</td>
			        <td>用途</td>
			       <td>${rightInformation.usename}</td>
			   </tr>
			   <tr>
			       <td>申请登记原因</td>
			       <td colspan="4">${rightInformation.registrationreason}</td>			    
			   </tr>
			      <tr>
			       <td>申请证书板式</td>
			       <td colspan="2">${rightInformation.certificateboardname}</td>	
			       <td>申请分别特征</td>
			       <td>${rightInformation.characteristicmethodname}</td>			    
			   </tr>
			    <tr>
			       <td>备注</td>
			       <td colspan="4">${rightInformation.excursus}</td>				       		    
			   </tr>
			   <tr>
			       <td colspan="5" ><lable>本申请人对填写的上述内容及提交的申请材料的真实性负责。如有不实，申请人愿承担法律责任。</lable>
			       <label style="margin-left:25%;margin-top:6%;">申请人（权利人签章）：</label>
			       <label style="margin-left:25%;">代理人（签章）：</label>
			       <label style="margin-left:35%;margin-top:3%;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日</label>
			       </td>			       			       		    
			   </tr>
			   <tr>
			       <td rowspan="2" width="15%">不动产登记审批情况（申请人请勿填写）</td>
			       <td>初审</td><td colspan="2">复审</td><td>核定</td>
			   </tr>
			    <tr>
			    <td><label>${getFirstOpiniont.firstopiniontname}</label><label style="margin-left:35%;margin-top:3%;"><fmt:formatDate pattern="yyyy-MM-dd HH:ss:mm"
												value="${getFirstOpiniont.createtime}"/></label></td>
			    <td colspan="2"><label>${getRecheckOpiniont.recheckopiniontname}</label>
			    <label style="margin-left:35%;margin-top:3%;"><fmt:formatDate pattern="yyyy-MM-dd HH:ss:mm"
												value="${getRecheckOpiniont.createtime}"/></label>
			    </td>
			    <td><label>${getAuditingName.auditingopinionname}</label>
			    <label style="margin-left:35%;margin-top:3%;"><fmt:formatDate pattern="yyyy-MM-dd HH:ss:mm"
												value="${getAuditingName.createtime}"/></label>
			    </td>
			    </tr>
			    <tr>
			        <td>登簿</td>
			        
			        <td colspan="4"><label>登簿人:${DbBoxOffice.username}</label>
			        <label style="margin-left:150px;">登簿时间:${DbBoxOffice.cutOfftime}</label>
			        </td>
			    </tr>
			     <tr>
			        <td>备注</td>
			        
			        <td colspan="4">
			        
			        </td>
			    </tr>
			  </table>
			  	</div>
		</div>
	
		<div id="attachedListUnit" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>申请表附表（单元）<span class="divider">|</span>
				</li>
				<li style="float: right;top:-6px;position:relative;"><a onclick="danyuan()" class="wobble Receiving demo"><button type="button"
				class="btn btn-success">
				<i class="icon-camera"></i>打印
			</button>
		         </a>
				</li>
			</ul>
			<div id="danyuan">
			 <h3 style="margin: 0 auto;">申请表附表（单元）</h3>
			  <table class="table table-hover table-condensed table-hover table-bordered">
			     <tr>
			       <td rowspan="4" style="text-align:center;vertical-align:middle;">不动产单元</td>
			      
			   </tr>
			   <tr>
			       <td>坐落</td>
			       <td colspan="3">${rightInformation.sit}</td>
			   </tr>
			   <tr>
			        <td>不动产单元号</td>
			       <td>${rightInformation.realrstateunitnumber}</td>
			        <td>不动产类型</td>
			       <td>${rightInformation.typeofrightname}</td>
			   </tr>
			   <tr>
			       <td>面积</td>
			       <td>${rightInformation.parcelarea}</td>
			        <td>用途</td>
			       <td>${rightInformation.usename}</td>
			   </tr>
			   <tr>
			       <td>申请登记原因</td>
			       <td colspan="4">${rightInformation.registrationreason}</td>			    
			   </tr>
			      <tr>
			       <td>申请证书板式</td>
			       <td colspan="2">${rightInformation.certificateboardname}</td>	
			       <td>申请分别特征</td>
			       <td>${rightInformation.characteristicmethodname}</td>			    
			   </tr>
			    <tr>
			       <td>备注</td>
			       <td colspan="4">${rightInformation.excursus}</td>				       		    
			   </tr>
			 
			  </table>
			 </div> 
		</div>
			<div id="attachedListApplicant" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>申请表附表（申请人）<span class="divider">|</span>
				</li>
				<li style="float: right;top:-6px;position:relative;"><a onclick="sqr()" class="wobble Receiving demo"><button type="button"
				class="btn btn-success">
				<i class="icon-camera"></i>打印
			</button>
		         </a>
				</li>
			</ul>
			<div id="sqr">
			 <h3 style="margin: 0 auto;">申请表附表（申请人）</h3>
			 <table class="table table-hover table-condensed table-hover table-bordered">
			   <c:forEach items="${applicants}" var="item">
			     <tr>
			       <td rowspan="7" style="text-align:center;vertical-align:middle;">申请人情况</td>
			       <td colspan="4" style="text-align:center;vertical-align:middle;">登记申请人</td>
			   </tr>
			   <tr>
			       <td>权利人姓名</td>
			       <td colspan="3">${item.applicantname}</td>
			   </tr>
			   <tr>
			        <td>身份证种类</td>
			       <td>${item.idcardtypename}</td>
			        <td>证件号</td>
			       <td>${item.idcardnumber}</td>
			   </tr>
			   <tr>
			       <td>通讯地址</td>
			       <td colspan="3">${item.address}</td>
			   </tr>
			   <tr>
			        <td>法定代表人或负责人</td>
			       <td>${item.legalrepresentative}</td>
			           <td>联系电话</td>
			       <td>${item.legalphone}</td>
			   </tr>
			   <tr>
			          <td>代理人姓名</td>
			       <td>${item.nameofagent}</td>
			           <td>联系电话</td>
			       <td>${item.agenttelephone}</td>
			   </tr>
			   <tr>
			           <td>代理机构名称</td>
			       <td>${item.agency}</td>
			           <td>邮编</td>
			       <td>${item.postalcode}</td>
			   </tr>
			   </c:forEach>
			  </table>
			  </div>
		</div>
		</div>
		
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	
  </body>
  <script type="text/javascript">
 
	$("#coverCatalogue li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
  </script>
    <script language="javascript">

function aa(){
   $("#ddd").printArea();
}
function danyuan(){
   $("#danyuan").printArea();
}
function sqr(){
   $("#sqr").printArea();
}
</script>
</html>
