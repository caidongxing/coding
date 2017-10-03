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

<title>My JSP 'ItemInformation.jsp' starting page</title>

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
<link href="Css/css/timeline-component.css" rel="stylesheet"
	type="text/css" />

<style type="text/css">
#max {
	width: 800px;
	float: left;
	box-shadow: 1px 1px 5px #333;
	-webkit-box-shadow: 1px 1px 5px #333;
	background-color: #ffffff;
}

@media ( max-width : 760px) {
	#max {
		width: 760px !important;
		height: 790px !important;
	}
}

@media ( max-width : 567px) {
	#max {
		width: 420px !important;
		height: 880px !important;
	}
}

@media ( max-width : 400px) {
	#max {
		width: 390px !important;
		height: 900px !important;
	}
}

#RegisterBookImg {
	transform: rotate(45deg) translate(15px, 25px);
}

#bottomPosition {
	float: right;
	position: relative;
	top: 24px;
	left: -80px;
}

#RegisterBook {
	float: right;
	position: relative;
	top: 77px;
	left: -28px;
}

#timeaxis {
	float: right;
	width: 365px;
	position: relative;
}
</style>
</head>
<body>
	<div id="max" style="width:70%">
		<h2>${box_officeMessage.entryname}</h2>
		<table class="table table-hover definewidth m10">
			<tr>
				<td class="tableleft">状态*:</td>
				<td><input style="color:#2A55F1;background:#20F127"
					type="button" value="${box_officeMessage.statusname}" />
				</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="tableleft">受理编号:</td>
				<td><label style="color:#EE152B;">${box_officeMessage.identifier}</label>
				</td>
				<td class="tableleft">受理时间:</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
						value="${box_officeMessage.receivingtime}" />
				</td>
			</tr>
			<tr>
				<td>登记类型:</td>
				<td>${box_officeMessage.registertypename}</td>
				<td>流程类型类型:</td>
				<td>
					${box_officeMessage.typeofrightname}-${box_officeMessage.processclassificationname}
				</td>
			</tr>
			<tr>
				<td class="tableleft">活动环节</td>
				<td>${box_officeMessage.managementactivitiesname}</td>
				<td class="tableleft">截止时间:</td>
				<td>${box_officeMessage.cutOfftime}</td>
			</tr>
			<tr>
				<td class="tableleft">受理人员:</td>
				<td>${box_officeMessage.username}</td>
				<td class="tableleft">紧急程度:</td>
				<td><c:if test="${box_officeMessage.urgencylevel eq '正常'}">
						<input style="color:#000;" type="button"
							value="${box_officeMessage.urgencylevel}" />
					</c:if> <c:if test="${box_officeMessage.urgencylevel eq '紧急'}">
						<input style="color:#B48C5B;" type="button"
							value="${box_officeMessage.urgencylevel}" />
					</c:if> <c:if test="${box_officeMessage.urgencylevel eq '特急'}">
						<input style="color:#FF0000;" type="button"
							value="${box_officeMessage.urgencylevel}" />
					</c:if>
				</td>
			</tr>
			<tr>
				<td class="tableleft">备注:</td>
				<td>${box_officeMessage.projectnotes}</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<h2>流程图：<h6 style="color:red;">灰色表示已办理过的，黄色表示正在办理的，蓝色表示尚未办理的</h6></h2>
		<c:if test="${empty timeaxis_one.cutOfftime}">
		<button style="margin-left: 185px;background:#E8DA40" class="btn" type="button">申请受理</button>
		</c:if>	
		<c:if test="${!empty timeaxis_one.cutOfftime}">
		<button style="margin-left: 185px;background:#A3A7A8" class="btn" type="button">申请受理</button>
		</c:if>
	
		<img width="120px;" src="Images/kaifaqufushen.jpg"></img>
		<c:if test="${!empty timeaxis_two}">
			<c:if test="${empty timeaxis_two.cutOfftime}">
		<button style="background:#E8DA40" class="btn" type="button">开发区复审</button>
		</c:if>
		<c:if test="${!empty timeaxis_two.cutOfftime}">
		<button style="background:#A3A7A8" class="btn" type="button">开发区复审</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_two eq null}">				
		<button style="background:#39BAE8" class="btn" type="button">开发区复审</button>			
		</c:if>
			
		<img width="120px;" src="Images/ToAudit.jpg"></img>
		<c:if test="${!empty timeaxis_three}">
			<c:if test="${empty timeaxis_three.cutOfftime}">
		<button style="background:#E8DA40" class="btn" type="button">审核</button>
		</c:if>
		<c:if test="${!empty timeaxis_three.cutOfftime}">
		<button style="background:#A3A7A8" class="btn" type="button">审核</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_three eq null}">				
		<button style="background:#39BAE8" class="btn" type="button">审核</button>			
		</c:if>
		<img src="Images/RegisterBook.jpg" id="RegisterBookImg"></img>
		<c:if test="${!empty timeaxis_four}">
			<c:if test="${empty timeaxis_four.cutOfftime}">
		<button style="background:#E8DA40" id="RegisterBook" class="btn" type="button">登簿</button>
		</c:if>
		<c:if test="${!empty timeaxis_four.cutOfftime}">
		<button style="background:#A3A7A8" id="RegisterBook" class="btn" type="button">登簿</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_four eq null}">				
		<button style="background:#39BAE8" id="RegisterBook" class="btn" type="button">登簿</button>			
		</c:if>
		<img src="Images/Certificate.jpg" id="bottomPosition"></img>
		<c:if test="${!empty timeaxis_five}">
			<c:if test="${empty timeaxis_five.cutOfftime}">
		<button style="background:#E8DA40" id="bottomPosition" class="btn" type="button">缮证</button>
		</c:if>
		<c:if test="${!empty timeaxis_five.cutOfftime}">
		<button style="background:#A3A7A8" id="bottomPosition" class="btn" type="button">缮证</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_five eq null}">				
		<button style="background:#39BAE8" id="bottomPosition" class="btn" type="button">缮证</button>			
		</c:if>
		
		<img src="Images/collectfees.jpg" id="bottomPosition"></img>
		<c:if test="${!empty timeaxis_six}">
			<c:if test="${empty timeaxis_six.cutOfftime}">
		<button style="background:#E8DA40" id="bottomPosition" class="btn" type="button">收费</button>
		</c:if>
		<c:if test="${!empty timeaxis_six.cutOfftime}">
		<button style="background:#A3A7A8" id="bottomPosition" class="btn" type="button">收费</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_six eq null}">				
		<button style="background:#39BAE8" id="bottomPosition" class="btn" type="button">收费</button>			
		</c:if>
		<img src="Images/ToIssue.jpg" id="bottomPosition"></img>
		<c:if test="${!empty timeaxis_seven}">
			<c:if test="${empty timeaxis_seven.cutOfftime}">
		<button style="background:#E8DA40" id="bottomPosition" class="btn" type="button">发证</button>
		</c:if>
		<c:if test="${!empty timeaxis_seven.cutOfftime}">
		<button style="background:#A3A7A8" id="bottomPosition" class="btn" type="button">发证</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_seven eq null}">				
		<button style="background:#39BAE8" id="bottomPosition" class="btn" type="button">发证</button>			
		</c:if>
		<img src="Images/ToFile.jpg" id="bottomPosition"></img>
		
		<c:if test="${!empty timeaxis_eight}">
			<c:if test="${empty timeaxis_eight.cutOfftime}">
		<button style="background:#E8DA40" id="bottomPosition" class="btn" type="button">归档</button>
		</c:if>
		<c:if test="${!empty timeaxis_eight.cutOfftime}">
		<button style="background:#A3A7A8" id="bottomPosition" class="btn" type="button">归档</button>
		</c:if>
		</c:if>
		
		<c:if test="${timeaxis_eight eq null}">				
		<button style="background:#39BAE8" id="bottomPosition" class="btn" type="button">归档</button>			
		</c:if>
	</div>
	<!-- BEGIN PAGE CONTENT-->
	<div id="timeaxis" style="width:30%">
		<div class="row-fluid">
			<ul class="metro_tmtimeline">
				<li class="green">

					<div class="metro_tmicon">
					<i>
					      <c:if test="${timeaxis_one.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_one.overrule ne '1'}">
						<c:if test="${empty timeaxis_one.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_one.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
						<h5 style="color: black;">申请受理</h5>
						<p style="width:220px;">办理人员:${timeaxis_one.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_one.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_one.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_one.cutOfftime}">${timeaxis_one.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_one.overrule eq '1'}">驳回原因：${timeaxis_one.overrulereason}</c:if>
						<c:if test="${timeaxis_one.overrule ne '1'}"></c:if>
						</p>
						
					</div></li>
				<li class="purple" id="fushen">
					<div class="metro_tmtime"></div>
					<div class="metro_tmicon">
						<i>
					      <c:if test="${timeaxis_two.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_two.overrule ne '1'}">
						<c:if test="${empty timeaxis_two.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_two.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
					<h5 style="color: black;">开发区复审</h5>
							<p style="width:220px;">办理人员:${timeaxis_two.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_two.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_two.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_two.cutOfftime}">${timeaxis_two.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_two.overrule eq '1'}">驳回原因：${timeaxis_two.overrulereason}</c:if>
						<c:if test="${timeaxis_two.overrule ne '1'}"></c:if>
						</p>
					</div></li>
				<li class="red" id="shenhe">
					<div class="metro_tmtime"></div>
					<div class="metro_tmicon">
							<i>
					      <c:if test="${timeaxis_three.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_three.overrule ne '1'}">
						<c:if test="${empty timeaxis_three.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_three.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
					<h5 style="color: black;">审核</h5>
							<p style="width:220px;">办理人员:${timeaxis_three.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_three.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_three.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_three.cutOfftime}">${timeaxis_three.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_three.overrule eq '1'}">驳回原因：${timeaxis_three.overrulereason}</c:if>
						<c:if test="${timeaxis_three.overrule ne '1'}"></c:if>
						
						</p>
					</div></li>
				<li class="yellow" id="dengbu">
					<div class="metro_tmtime" datetime="2013-04-15 13:15"></div>
					<div class="metro_tmicon">
						<i>
					      <c:if test="${timeaxis_four.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_four.overrule ne '1'}">
						<c:if test="${empty timeaxis_four.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_four.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
					<h5 style="color: black;">登簿</h5>
						<p style="width:220px;">办理人员:${timeaxis_four.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_four.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_four.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_four.cutOfftime}">${timeaxis_four.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_four.overrule eq '1'}">驳回原因：${timeaxis_four.overrulereason}</c:if>
						<c:if test="${timeaxis_four.overrule ne '1'}"></c:if>
						</p>
					</div></li>
				<li class="blue" id="shanzheng">
					<div class="metro_tmtime" datetime="2013-04-16 21:30"></div>
					<div class="metro_tmicon">
					<i>
					      <c:if test="${timeaxis_five.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_five.overrule ne '1'}">
						<c:if test="${empty timeaxis_five.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_five.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
					<h5 style="color: black;">缮证</h5>
						<p style="width:220px;">办理人员:${timeaxis_five.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_five.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_five.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_five.cutOfftime}">${timeaxis_five.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_five.overrule eq '1'}">驳回原因：${timeaxis_five.overrulereason}</c:if>
						<c:if test="${timeaxis_five.overrule ne '1'}"></c:if>
						</p>
					</div></li>
				<li class="orange" id="shoufei">
					<div class="metro_tmtime" datetime="2013-04-17 12:11"></div>
					<div class="metro_tmicon">
					<i>
					      <c:if test="${timeaxis_six.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_six.overrule ne '1'}">
						<c:if test="${empty timeaxis_six.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_six.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
					<h5 style="color: black;">收费</h5>
						<p style="width:220px;">办理人员:${timeaxis_six.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_six.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_six.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_six.cutOfftime}">${timeaxis_six.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_six.overrule eq '1'}">驳回原因：${timeaxis_six.overrulereason}</c:if>
						<c:if test="${timeaxis_six.overrule ne '1'}"></c:if>
						
						</p>					</div></li>
				<li class="gray" id="fazheng">
					<div class="metro_tmtime" datetime="2013-04-18 09:56"></div>
					<div class="metro_tmicon">
							<i>
					      <c:if test="${timeaxis_seven.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_seven.overrule ne '1'}">
						<c:if test="${empty timeaxis_seven.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_seven.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
						<h5 style="color: black;">发证</h5>
						<p style="width:220px;">办理人员:${timeaxis_seven.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_seven.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_seven.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_seven.cutOfftime}">${timeaxis_seven.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_seven.overrule eq '1'}">驳回原因：${timeaxis_seven.overrulereason}</c:if>
						<c:if test="${timeaxis_seven.overrule ne '1'}"></c:if>
						</p>
					</div></li>
						<li class="blue" id="guidang">
					<div class="metro_tmtime" datetime="2013-04-18 09:56"></div>
					<div class="metro_tmicon">
								<i>
					      <c:if test="${timeaxis_eight.overrule eq '1'}">驳回</c:if>
					<c:if test="${timeaxis_eight.overrule ne '1'}">
						<c:if test="${empty timeaxis_eight.cutOfftime}">正常</c:if>
					   <c:if test="${!empty timeaxis_eight.cutOfftime}">完成</c:if>
				    </c:if>
						</i>
					</div>
					<div class="metro_tmlabel">
						<h5 style="color: black;">归档</h5>
						<p style="width:220px;">办理人员:${timeaxis_eight.username}
						  <br/>开始：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${timeaxis_eight.receivingtime}" />
						  <br/>办结：<c:if test="${empty timeaxis_eight.cutOfftime}">待定</c:if>
						  <c:if test="${!empty timeaxis_eight.cutOfftime}">${timeaxis_eight.cutOfftime}
						</c:if>
						<br/><c:if test="${timeaxis_eight.overrule eq '1'}">驳回原因：${timeaxis_eight.overrulereason}</c:if>
						<c:if test="${timeaxis_eight.overrule ne '1'}"></c:if>
						</p>
					</div></li>
			</ul>
		</div>

	</div>
	<!-- END PAGE CONTENT-->
     <input type="hidden" id="quarterstypeid" value="${quarterstypeid}">
     <input type="hidden" id="statusid" value="${statusid}">
</body>
<script type="text/javascript">
   window.onload=function(){
        var quarterstypeid=document.getElementById("quarterstypeid").value;
          var statusid=document.getElementById("statusid").value;      
   }
 </script>
</html>
