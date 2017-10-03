<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value=" ${pageContext.request.contextPath}" scope="page"
	var="ctx"></c:set>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'receivingData.jsp' starting page</title>

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
<link href="${ctx}/Css/css/style-default.css" rel="stylesheet" id="style_color" />
<link rel="stylesheet" type="text/css" href="${ctx}/Css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/Css/bootstrap.css" />
<!--弹出层  -->
<link rel="stylesheet" href="${ctx}/hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
<style>
.spa {
	height: 36px;
	width: 204px;
	font-size: 12px;
	color: #BD362F;
	text-indent: 10px;
	margin-top: 10px;
}
</style>
</head>

<body>
	<div class="row-fluid">
		<!-- BEGIN 收件资料table-->
		<a href="${ctx}/ReceivingDataController/ReceivingData.do"><button
				class="btn btn-info">
				<i class="icon-refresh"></i>刷新
			</button>
		</a> &nbsp;&nbsp;
		<button type="button" class="btn btn-warning"
			onclick="deleteReceiving()">
			<i class="icon-trash"></i>删除收件
		</button>
		<a class="wobble Receiving demo"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>添加收件
			</button>
		</a>

		<div class="widget-body"
			style="width:auto; height:450px; overflow:scroll;">
			<table class="table table-striped table-bordered" id="sample_1">
				<thead>
					<tr>
						<th style="width:8px;"><input type="checkbox"
							class="group-checkable" data-set="#sample_1 .checkboxes" />
						</th>
						<th>收件名称</th>
						<th>份数</th>

						<th class="hidden-phone">资料类型</th>
						<th class="hidden-phone"></th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${yw_ReceivingData}" var="item">
						<tr class="odd gradeX">
							<td><input type="checkbox" name="receivingdataid"
								class="checkboxes" value="${item.receivingdataid}" /></td>
							<td>${item.recipientname}</td>
							<td>${item.numbercopies}</td>
							<td class="hidden-phone"><c:if
									test="${item.dataTypeName eq '原件'}">
									<input style="color:#F6F2EF;background:#9D1910" type="button"
										value="${item.dataTypeName}" />
								</c:if> <c:if test="${item.dataTypeName eq '复印件'}">
									<input style="color:#FF0000;background: #18BCAC" type="button"
										value="${item.dataTypeName}" />
								</c:if>
							</td>

							<td class="hidden-phone">

								<form action="${ctx}/ReceivingDataController/upload.do"
									method="POST" enctype="multipart/form-data">
									<input type="file" name="file" id="file" value="上传" /> <input
										type="hidden" name="receivingdataid"
										value="${item.receivingdataid}" /> <input id="shangchuan"
										 type="submit" value="上传" />
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
			<!-- BEGIN 收件资料明细table-->
			<h4>收件资料明细:</h4>
			<div class="widget-body"
				style="width:auto; height:450px; overflow:scroll;">
				<table class="table table-striped table-bordered" id="sample_2">
					<thead>
						<tr>
							<th style="width:8px;"><input type="checkbox"
								class="group-checkable" data-set="#sample_2 .checkboxes" />
							</th>
							<th>收件名称</th>
							<th>份数</th>
							<th>日期</th>
							<th class="hidden-phone">资料类型</th>
							<th class="hidden-phone"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${yw_ReceivingDataMxs}" var="item">
							<tr class="odd gradeX">
								<td><input type="checkbox" class="checkboxes" value="1" />
								</td>
								<td>${item.recipientname}</td>
								<td>${item.numbercopies}</td>
								<td class="hidden-phone"><fmt:formatDate
										pattern="yyyy-MM-dd HH:mm:ss" value="${item.uploaddate}" />
								</td>
								<td class="hidden-phone"><c:if
										test="${item.dataTypeName eq '原件'}">
										<input style="color:#F6F2EF;background:#9D1910" type="button"
											value="${item.dataTypeName}" />
									</c:if> <c:if test="${item.dataTypeName eq '复印件'}">
										<input style="color:#FF0000;background: #18BCAC" type="button"
											value="${item.dataTypeName}" />
									</c:if>
								</td>
								<td class="hidden-phone"><a class="flash dialog demo6"><input
										onclick="lookimg(${item.receivingdatamxid})"
										style="color:#2A55F1;" type="button" value="预览" /> </a>
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- END收件资料明细table-->
		</div>
		<!-- END收件资料table-->


	</div>
	<div style="width:auto; height:450px; overflow:scroll;" id="HBox">
		<img id="lookimgid">
	</div>

	<div style="width:600px; height:450px; overflow:scroll;"
		id="insert">
		<form action="${ctx}/ReceivingDataController/insertReceivingData.do" method="post">
		<table class="table table-bordered table-hover m10">
			<tr>
				<td width="30%" class="tableleft">资料名称*:</td>
				<td><input  type="text" id="recipientname" name="recipientname" /></td>
				<td width="30%"><span class="spa spa1"></span></td>
			</tr>
			<tr>
				<td class="tableleft">份数</td>
				<td><input type="text" name="numbercopies" id="numbercopies"/></td>
				<td width="30%"><span class="spa spa2"></span></td>
			</tr>
			<tr>
				<td>资料类型:</td>
				<td><input type="radio" name="datatypeid" id="datatypeid" value="1" checked="true"/>
					<input style="color:#000;" type="button" value="原件" /> <input
					type="radio" name="datatypeid" value="2" /> <input
					style="color:#B48C5B;" type="button" id="datatypeid" value="复印件" /></td>
				
			</tr>

		</table>
		<div style="float:right;position: relative;">
		<button type="submit" id="subm" class="btn btn-success">
				<i class="icon-plus"></i>添加
			</button>
		
		<a href="${ctx}/ReceivingDataController/ReceivingData.do"><button
				class="btn btn-info">
				<i class="icon-refresh"></i>返回列表
			</button>
		</a>
		</div>
		
</form>
	</div>


<script type="text/javascript">
	window.onload=function(){
				$("#recipientname").focus()
			}
/************************  失焦判断  **********************************/
			$("input").blur(function(){
				$(".spa").css("color","#BD362F")
				if($(this).is("#recipientname")){             //姓名判断
					var ra=/^[\u4E00-\u9FA5]{2,20}$/
					if($("#recipientname").val()!=""){
						if(!(ra.test($("#recipientname").val()))){
							$(".spa1").text("请输入2-20个汉字");
							$(this).css("border","1px solid #BD362F")
							return false;
						}else if(ra){
							$(".spa1").text("");
							return true;
						}
					}else{
						$(".spa1").text("");
					}
				}
				if($(this).is("#numbercopies")){            //手机号判断
					var nc=/^[0-9]*$/
					if($("#numbercopies").val()!=""){
					if(!(nc.test($("#numbercopies").val()))){
						$(".spa2").text("请输入正确的，只能是数字");
						$(this).css("border","1px solid #BD362F")
						return false;
					}else if(nc){
						$(".spa2").text("");
						return true;
					}
					}else{
						$(".spa2").text("");
					}
				}
				})
/********************** 聚焦提示 ************************/	
			$("input").focus(function(){
				if($(this).is("#recipientname")){
					$(".spa1").text("2-20个汉字").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				if($(this).is("#numbercopies")){
					$(".spa2").text("请输入数字").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				
			})
			
      /*********************** 提交验证 ***************************/
			$("#subm").click(function(){
				var ra=/^[\u4E00-\u9FA5]{2,20}$/;   //姓名正则
				var nc=/^[0-9]$/;    //只能输入数字
				
				if(ra.test($("#recipientname").val()) && nc.test($("#numbercopies").val())){
			        
					return true;
				}else{
					if($("#recipientname").val()==""){
						$(".spa1").text('请你填写资料名称')
					} 
					if($("#numbercopies").val()==""){
						$(".spa2").text('请你填写份数')
					} 					
					return false;
				}
			})
			
		
		
</script>

	<script src="Js/js/jquery.nicescroll.js" type="text/javascript"></script>

	<script src="Js/js/jquery.blockui.js"></script>

	<script type="text/javascript"
		src="assets/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
	<!--common script for all pages-->
	<script src="Js/js/common-scripts.js"></script>
	<!--script for this page only-->
	<script src="Js/js/dynamic-table.js"></script>
	<!-- END JAVASCRIPTS -->
	<script src="hdialog/js/jquery.hDialog.js"></script>
	<script type="text/javascript" src="Js/bootstrap.js"></script>
	
	
</body>

<script type="text/javascript">
     $(function(){
      var $el = $('.dialog');
      var el=$('.Receiving');	
     el.hDialog({box: '#insert'});
	$el.hDialog({box: '#HBox'}); //默认调用	
	//带标题的
	$('.demo').hDialog({title: '添加资料',height: 300});
	$('.demo6').hDialog({title: '照片资料',height: 300});
		
	//改变宽和高
	$('.demo').hDialog({width:500,height: 350});	
	$('.demo6').hDialog({width:500,height: 350});	
	//遮罩不可关闭
	$('.demo').hDialog({modalHide: false});	
	$('.demo6').hDialog({modalHide: false});	
	//返回顶部
	$.goTop();	
});
function deleteReceiving(){
   var chebookIDs=document.getElementsByName("receivingdataid");
        	  var receivingdataid="";        
        	for(var i=0;i<chebookIDs.length;i++){
        		if(chebookIDs[i].checked){
        			receivingdataid+=chebookIDs[i].value + ";";               			 
        		}       		        		
        	}
        	if(receivingdataid=="")
        		{
        		$.tooltip('请选择至少一条数据进行删除！...'); 
        		return;
        		}
        	else{    	
        		document.location="${ctx}/ReceivingDataController/DeleteReceivingData.do?receivingdataid="+receivingdataid;
        		$.tooltip('删除成功！...'); 
        	}       	   
}
 
  function lookimg(receivingdatamxid) {				
		$.ajax({
			url : "${ctx}/ReceivingDataController/showPicture.do?receivingdatamxid="+receivingdatamxid,
			type : "post",
			dataType : "json",
			success : function(data) {
				var obj = eval(data);
				var str="${ctx}/projectimg/"+obj.path;
				
				document.getElementById("lookimgid").src=str ;
			}
		});
	}	
  </script>
</html>
