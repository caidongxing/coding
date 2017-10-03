<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'box_officeMessage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- begin 3Dbutton -->
<link rel="stylesheet" href="${ctx}/Css/3Dbutton.css" type="text/css"></link>
<!-- begin 3Dbutton -->
<link href="${ctx}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx}/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="${ctx}/assets/css/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link href="${ctx}/Css/css/style.css" rel="stylesheet" />

<link href="${ctx}/Css/css/style-default.css" rel="stylesheet" id="style_color" />

<!--弹出层  -->
<link rel="stylesheet" href="${ctx}/hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
	<script src="${ctx}/Js/js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript"
	src="${ctx}/My97DatePicker/WdatePicker.js"></script>
	<!--下拉树 -->
	
	<link rel="stylesheet" href="${ctx}/assets/tree/css/SimpleTree.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/assets/tree/js/SimpleTree.js"></script>
	
	<!--提示框 -->
	<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
	<style type="text/css">
.on {
	background: #42D0FF;
	color: white;
}
</style>
<script type="text/javascript">
var userId;
var username;
$(function(){
	$(".st_tree").SimpleTree({
		/* 可无视代码部分*/
			click:function(a){	
			  if($(a).attr("hasChild")){
				userId=$(a).attr("ref");	
				username=$(a).attr("alt");
				document.getElementById("selectuser").innerHTML="已选择"+"  "+username;
				if(username==undefined){
				    document.getElementById("selectuser").innerHTML="请选择受理人员";
				}						     	
				}							            
		}
	});	
});

  function sure(){
  if(userId==undefined){
     $.tooltip('My God, 出错啦！！！,请选择开发区相关办理人员。。');
     return;
  }else{
        $.tooltip('提交成功,2秒后刷新',2000,true,function(){	
        window.location="${ctx}/boxOfficeController/updateBoxOfficeByUserid.do?userid="+userId;
        })
     }
  }
</script>
</head>

<body>

	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN INLINE TABS PORTLET-->
			<div class="widget orange">
				<div class="widget-title">
					<h4>
						<i class="icon-reorder"></i> 信息
					</h4>
					<input type="hidden" id="img" value="${filename}"> <span
						class="tools"> <a class="btn icon-long-arrow-left"
						href="<%=path%>/boxOfficeController/selectBoxOffice.do">返回</a> <a
						href="javascript:;" class="icon-chevron-down"></a> <a
						href="javascript:;" class="icon-remove"></a> </span>
				</div>
				<div class="widget-body">
					<div class="bs-docs-example">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active" id="li1"><a data-toggle="tab"
								href="#itemInformation">项目信息</a>
							</li>
							<li id="ReceivingData"><a data-toggle="tab" href="#receivingData">收件资料</a>
							</li>
							<li id="AarcelUnit"><a data-toggle="tab" href="#parcelUnit">单元信息</a>
							</li>
							<li id="Applicant"><a data-toggle="tab" href="#applicant">申请人</a>
							</li>
							<li id="RightInformation"><a data-toggle="tab" href="#rightInformation">权利信息</a>
							</li>
							<li id="ApplicationForm"><a data-toggle="tab" href="#applicationForm">申请审批表</a>
							</li>
							<li id="CollectFees"><a data-toggle="tab" href="#collectFees">收费</a>
							</li>
							<!--  
							<li id="Tax"><a data-toggle="tab" href="#tax">协税</a>
							</li>-->
							<li id="Auditing"><a data-toggle="tab" href="#auditing">审核</a>
							</li>
							<li id="RegisterBook"><a data-toggle="tab" href="#registerBook">登簿</a>
							</li>
							<li id="DocumentInformation"><a data-toggle="tab" href="#documentInformation">证书信息</a>
							</li>
							<li id="GiveCertificate"><a data-toggle="tab" href="#giveCertificate">发证  </a>
							</li>
							<li id="PlaceOnFile"><a data-toggle="tab" href="#placeOnFile">归档  </a>
							</li>
							<li id="Overrule" style="float:right;" class="a_demo_three"><a class="demo_4"><i class=" icon-mail-reply (alias)">驳回</i></a></li>
							
							<li id="Roll_out" style="float:right;" class="a_demo_three"><a class="tada dialog demo6"><i  class="icon-mail-forward (alias)" >转出</i></a></li>																			
							<li id="Banjie" style="float:right;display: none;" class="a_demo_three"><a class="banjie"><i  class="icon-mail-forward (alias)" >办结</i></a></li>																		
							</ul>
						<div class="tab-content" id="myTabContent"
							style="width:auto; height:480px; overflow:scroll;">
							<!-- 项目信息 -->
							<div id="itemInformation" class="tab-pane fade in active">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/boxOfficeController/ItemInformation.do"
									name="ifaborr"> </iframe>
							</div>

							<div id="receivingData" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/ReceivingDataController/ReceivingData.do"
									name="ifaborr"> </iframe>

							</div>
							<div id="parcelUnit" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/ParcelUnitController/ParcelUnit.do"
									name="ifaborr"> </iframe>
							</div>


							<div id="applicant" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/ApplicantController/Applicant.do"
									name="ifaborr"> </iframe>
							</div>

							<!-- begin权利信息 -->
							<div id="rightInformation" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/RightInformationController/RightInformation.do"
									name="ifaborr"> </iframe>
							</div>
							<!-- end权利信息 -->
                           
                              <!-- begin申请审批表 -->
							<div id="applicationForm" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/ApplicationFormController/ApplicationFormTable.do"
									name="ifaborr"> </iframe>
							</div>
							<!-- end申请审批表 -->
                               
							<!-- begin收费 -->
							<div id="collectFees" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/CollectFees/success.do" name="ifaborr">
								</iframe>
							</div>
							<!-- end收费 -->
							<!-- begin协税 
							<div id="tax" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
										class="ifaStyle" scrolling="no"
									src="${ctx}/TaxController/tax.do" name="ifaborr">
								</iframe>
							</div>-->
							<!-- end协税 -->
							<!-- begin审核 -->
							<div id="auditing" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/AuditingController/auditing.do"
									name="ifaborr"> </iframe>

							</div>
							<!-- end审核 -->
							<!-- begin登簿 -->
							<div id="registerBook" class="tab-pane fade">
								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/RegisterBookController/registerBook.do"
									name="ifaborr"> </iframe>

							</div>
							<!-- end登簿-->
							
							<!-- begin证书信息 -->
							<div id="documentInformation" class="tab-pane fade">

								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/DocumentInformationController/documentInformation.do"
									name="ifaborr"> </iframe>
							</div>
							<!-- end证书信息 -->
							<!-- begin发证 -->
							<div id="giveCertificate" class="tab-pane fade">

								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/GiveCertificateController/giveCertificate.do"
									name="ifaborr"> </iframe>
							</div>
							<!-- end发证 -->
							<!-- begin归档 -->
							<div id="placeOnFile" class="tab-pane fade">

								<iframe style="width:100%;height:100%;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/PlaceOnFileController/placeOnFile.do"
									name="ifaborr"> </iframe>
							</div>
							<!-- end归档-->
						</div>
					</div>
				</div>
				<!-- END INLINE TABS PORTLET-->
			</div>
		</div>
         <div id="HBox">
		<h4 style="margin-left: 50px;"><a id="head"></a></h4>
		<div class="st_tree" style="width:450px;margin:0 30;height: 200px;overflow: scroll;overflow-x:hidden;">

	<ul>	
		<li><a id="xlsHead"></a></li>
		<ul show="false">
			<li><a id="xlsBody">开发区</a></li>
			<ul id="user">
			<c:forEach items="${users}" var="item">
				<li><a id="treeli" ref="${item.userid}" alt="${item.username}">${item.username}</a></li>	
						
			</c:forEach>
			</ul>
		</ul>			
	</ul>

</div>
      <div style="margin:0 30;">
     <a onclick="sure()"><button style="float:left;" type="button"
				class="btn btn-success">
				<i class="icon-ok"></i>确认
			</button>
		</a>
		<label style="float:left;" id="selectuser">请选择受理人员</label>
		 <label  style="float:right;" class="checkbox line">
          <input type="checkbox" value="" />发送信息通知他
          </label>
  </div>
  
</div>
	  
		<!-- HBox end -->
		<input type="hidden" id="quarterstypeid" value="${quarterstypeid}">
		<input type="hidden" id="statusName" value="${statusName}">
		<script src="Js/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="Js/js/common-scripts.js"></script>
		<script src="Js/js/jquery.blockui.js"></script>
		<script type="text/javascript"
			src="assets/data-tables/jquery.dataTables.js"></script>
		<script type="text/javascript"
			src="assets/data-tables/DT_bootstrap.js"></script>
		<!--script for this page only-->
		<script src="Js/js/dynamic-table.js"></script>
		<script src="hdialog/js/jquery.hDialog.min.js"></script>
</body>
<script>
	
	$(function(){		
		var quarterstypeid = document.getElementById("quarterstypeid").value;
		var statusName=document.getElementById("statusName").value;
		if(statusName=="已经转出"){
		     document.getElementById("Roll_out").style.display="none";
		      document.getElementById("Overrule").style.display="none";
		      
		}
		if(quarterstypeid == 1){
		    $("#head").html('到开发区复审');
		    $("#xlsHead").html('开发区复审');
		    document.getElementById("RegisterBook").style.display="none";  
		    document.getElementById("GiveCertificate").style.display="none";
		    document.getElementById("PlaceOnFile").style.display="none";
		    document.getElementById("CollectFees").style.display="none";
		    document.getElementById("Overrule").style.display="none";		
		     
		}
		if (quarterstypeid == 2) {
		      $("#head").html('到开发区审核');
		      $("#xlsHead").html('开发区审核');
		     document.getElementById("RightInformation").style.display="none";
		     document.getElementById("RegisterBook").style.display="none";  
		     document.getElementById("ApplicationForm").style.display="none";
		     document.getElementById("CollectFees").style.display="none";
		     //document.getElementById("Tax").style.display="none";
		     document.getElementById("GiveCertificate").style.display="none";
		     document.getElementById("PlaceOnFile").style.display="none";	
		}
		if (quarterstypeid == 3) {
		      $("#head").html('到开发区登簿');
		      $("#xlsHead").html('开发区登簿');
		     document.getElementById("RightInformation").style.display="none";
		     document.getElementById("RegisterBook").style.display="none";  
		     document.getElementById("ApplicationForm").style.display="none";
		     document.getElementById("CollectFees").style.display="none";
		     //document.getElementById("Tax").style.display="none";
		     document.getElementById("GiveCertificate").style.display="none";
		     document.getElementById("PlaceOnFile").style.display="none";	
		}
	 	if (quarterstypeid == 4) {
		      $("#head").html('到开发区缮证');
		      $("#xlsHead").html('开发区缮证');
		     document.getElementById("RegisterBook").style.display="block";  
		    
		     document.getElementById("CollectFees").style.display="none";
		     //document.getElementById("Tax").style.display="none";
		     document.getElementById("DocumentInformation").style.display="none";
		     document.getElementById("Applicant").style.display="none";
		    
		     document.getElementById("ReceivingData").style.display="none";
		     document.getElementById("RightInformation").style.display="none";
		     document.getElementById("Auditing").style.display="none";
	         document.getElementById("GiveCertificate").style.display="none";
	         document.getElementById("PlaceOnFile").style.display="none";	
		}
		if (quarterstypeid == 5) {
		      $("#head").html('到开发区收费');
		      $("#xlsHead").html('开发区收费');
		     document.getElementById("RegisterBook").style.display="none";  
		     document.getElementById("ApplicationForm").style.display="none";
		     document.getElementById("CollectFees").style.display="none";
		    // document.getElementById("Tax").style.display="none";
		     document.getElementById("Applicant").style.display="none";		    
		     document.getElementById("ReceivingData").style.display="none";
		     document.getElementById("RightInformation").style.display="none";
		     document.getElementById("Auditing").style.display="none";
		     document.getElementById("GiveCertificate").style.display="none";
		     document.getElementById("PlaceOnFile").style.display="none";	
		}
		if (quarterstypeid == 6) {
		      $("#head").html('到开发区发证');
		      $("#xlsHead").html('开发区发证');
		     document.getElementById("RegisterBook").style.display="none";  
		     document.getElementById("ApplicationForm").style.display="none";		    
		     //document.getElementById("Tax").style.display="none";		   
		     document.getElementById("Applicant").style.display="none";		    
		     document.getElementById("ReceivingData").style.display="none";
		     document.getElementById("RightInformation").style.display="none";
		     document.getElementById("Auditing").style.display="none";
		      document.getElementById("GiveCertificate").style.display="none";
		      document.getElementById("PlaceOnFile").style.display="none";	
		}
		if (quarterstypeid == 7) {
		      $("#head").html('到开发区归档');
		      $("#xlsHead").html('开发区归档');
		     document.getElementById("RegisterBook").style.display="none";  		  		    
		     //document.getElementById("Tax").style.display="none";	
		     document.getElementById("AarcelUnit").style.display="none";	  		      
		     document.getElementById("Applicant").style.display="none";	
		      document.getElementById("RightInformation").style.display="none";		    		     
		     document.getElementById("DocumentInformation").style.display="none";
		     document.getElementById("Auditing").style.display="none";
		     document.getElementById("PlaceOnFile").style.display="none";		    
		}
		if (quarterstypeid == 8) {		   
		     document.getElementById("RegisterBook").style.display="none";  		  		    
		     //document.getElementById("Tax").style.display="none";	
		     document.getElementById("AarcelUnit").style.display="none";	  		      
		     document.getElementById("Applicant").style.display="none";	
		     document.getElementById("RightInformation").style.display="none";		    		     
		     document.getElementById("DocumentInformation").style.display="none";
		     document.getElementById("Auditing").style.display="none";
		     document.getElementById("ApplicationForm").style.display="none";	
		     
		     document.getElementById("CollectFees").style.display="none";
		     document.getElementById("Roll_out").style.display="none";
		     document.getElementById("Banjie").style.display="block";		      
		}
	})
		$(".demo_4").click(function(){
		 	swal({   
			title: "是否确认驳回？",   
			text: "请在下面输入驳回原因:",   
			type: "input",   
			showCancelButton: true,   
			closeOnConfirm: false,   
			animation: "slide-from-top",   
			inputPlaceholder: "填点东西到这里面吧" 
		}, function(inputValue){   
			if (inputValue === false) return false;      
			if (inputValue === "") {     
				swal.showInputError("请输入!");     
				return false   
			}      
			swal("棒极了!", "您填写的是: " + inputValue, "success"); 
			window.location="${ctx}/boxOfficeController/DeleteBoxOffice.do?inputValue="+inputValue;
		});
	});
	
		$(".banjie").click(function(){
		 swal({
			title: "您确定要办结吗？", 
			text: "您确定要办结这个办箱信息吗？", 			
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要办结",
			confirmButtonColor: "#ec6c62"
			}, function() {
			swal("操作成功!", "已成功办结办箱信息！", "success");
			window.location="${ctx}/boxOfficeController/banjieBoxOffice.do";
			});
	});
</script>

<script type="text/javascript">
   $(function(){
	var $el = $('.dialog');	
	$el.hDialog(); //默认调用			
	//带标题的
	$('.demo6').hDialog({title: '请选择转出目标',height: 300});
		
	//改变宽和高
	$('.demo6').hDialog({width:500,height: 350});	
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});	
	//返回顶部
	$.goTop();
});


   </script>

</html>
