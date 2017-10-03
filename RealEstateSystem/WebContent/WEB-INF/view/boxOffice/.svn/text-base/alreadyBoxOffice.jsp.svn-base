<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>在办箱</title>

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
<link rel="stylesheet" type="text/css"
	href="${ctx}/Css/bootstrap-responsive.css" />

<script type="text/javascript" src="Js/jquery.sorted.js"></script>
<script type="text/javascript" src="Js/ckform.js"></script>
<script type="text/javascript" src="Js/common.js"></script>

<!-- 新项目新增 -->
<link rel="stylesheet" href="${ctx}/hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
<script language="javascript" type="text/javascript"
	src="${ctx}/My97DatePicker/WdatePicker.js"></script>

<script>
   function selectType(){
      document.location="<%=path%>/DataBaseController/selectAcceptanceProcess.do";
   }
   
   </script>
<style type="text/css">
a:hover {
	color: red;
}
</style>
</head>
<body>
	<div class="form-inline definewidth m20">
		名称： <input type="text" name="menuname" id="menuname"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<button type="submit" class="btn btn-primary">查询</button>
		&nbsp;&nbsp; 
			</div>
	<!-- BEGIN ADVANCED TABLE widget-->
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN EXAMPLE TABLE widget-->
			<div class="widget red">
				<div class="widget-title">
					<h4>
						<i class="icon-reorder"></i> Dynamic Table
					</h4>
					<span class="tools"> <a href="javascript:;"
						class="icon-chevron-down"></a> <a href="javascript:;"
						class="icon-remove"></a> </span>

				</div>
				<div class="widget-body"
					style="width:auto; height:450px; overflow:scroll;">
					<table class="table table-striped table-bordered" id="sample_1">
						<thead>
							<tr>
								<th style="width:8px;"><input type="checkbox"
									class="group-checkable" data-set="#sample_1 .checkboxes" />
								</th>

								<th>状态</th>
								<th>项目名称</th>
								<th class="hidden-phone">流程名称</th>
								<th class="hidden-phone">办理活动</th>
								<th class="hidden-phone">截止时间</th>
								<th class="hidden-phone"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_BoxOffices}" var="item">
								<tr class="odd gradeX">
									<td><input type="checkbox" class="checkboxes"
										value="${item.boxofficeid}" />
									</td>
									<td><input style="color:white;background:#E83F3D"
										type="button" value="${item.statusname}" />
									</td>
									<td style="word-break:break-all">${item.entryname}<BR />
										<h6>
											收件时间:
											<fmt:formatDate pattern="yyyy-MM-dd HH:ss:mm"
												value="${item.receivingtime}" />
										</h6></td>
									<td class="hidden-phone">${item.registertypename}<BR />
										<h6>${item.typeofrightname}-${item.processclassificationname}</h6>
									</td>
									<td class="hidden-phone">${item.managementactivitiesname}</td>
									<td class="center hidden-phone"><c:if
											test="${item.cutOfftime eq ''}"></c:if> <c:if
											test="${item.cutOfftime ne ''}">${item.cutOfftime}</c:if></td>

									<td class="hidden-phone"><a href="<%=path%>/boxOfficeController/box_officeMessage.do?boxofficeid=${item.boxofficeid}+&statusname=${item.statusname}" class="table-actions"><i class="icon-eye-open"></i>查看</a>																													
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- END EXAMPLE TABLE widget-->

		</div>
	</div>
	
	

	<script src="${ctx}/Js/js/jquery.nicescroll.js" type="text/javascript"></script>

	<script src="${ctx}/Js/js/jquery.blockui.js"></script>
	<!-- ie8 fixes -->
	<!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->
	<script type="text/javascript"
		src="${ctx}/assets/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${ctx}/assets/data-tables/DT_bootstrap.js"></script>
	<!--common script for all pages-->
	<script src="${ctx}/Js/js/common-scripts.js"></script>

	<!--script for this page only-->
	<script src="${ctx}/Js/js/dynamic-table.js"></script>
	<script type="text/javascript" src="${ctx}/Js/jquery.js"></script>
	<script type="text/javascript" src="${ctx}/Js/bootstrap.js"></script>
	<!-- END JAVASCRIPTS -->

	<script src="${ctx}/hdialog/js/jquery.hDialog.min.js"></script>
	<!--  隐藏select
   <style type="text/css">
     .show
      {
    display:block;
      }
      .hidden
        {
    display:none;
      }
        ddl = document.getElementById("processclassification");
                              var className = typeof (ddl.getAttribute("className")) == "string" ? "className" : "class";
                             if (typeofrightid == 0) {
                               ddl.setAttribute(className, "hidden");
                              } else {
                                ddl.setAttribute(className, "show");
        }
</style>
-->

	<script type="text/javascript">
   $(function(){
	var $el = $('.dialog');
	
	$el.hDialog(); //默认调用
	
	//页面加载完成后自动执行
	$('#autoShow').hDialog({title:'页面加载完成后自动执行',autoShow: true});
	
	//带标题的
	$('.demo6').hDialog({title: '流程受理',height: 300});
	
	//改变宽度
	$('.demo1').hDialog({width: 500});
	
	//改变高度
	$('.demo2').hDialog({height: 400});
	
	//改变宽和高
	$('.demo6').hDialog({width:830,height: 450});
	
	//改变位置
	$('.demo4').hDialog({positions: 'bottom',effect: 'slideOutDown'});
	
	//不清空表单
	$('.demo5').hDialog({resetForm: false});
	
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});
	
	//改变弹框背景色
	$('.demo7').hDialog({boxBg: '#eeeeee'});
	
	//改变遮罩背景色
	$('.demo8').hDialog({modalBg: 'rgba(255,255,255,0.7)'});
	
	//改变关闭背景色
	$('.demo9').hDialog({closeBg: '#4A74B5'});
	
	//错误文字提示
	$('.demo10').click(function(){
		$.tooltip('My God, 出错啦！！！');
	});
	
	//正确文字提示
	$('#demo11').click(function(){
		$.tooltip('OK, 操作成功！', 2500, true);
	});
	 $('.demo11').click(function(){
	     	$.tooltip('OK, 操作成功！', 2500, true);
	       });
	//显示加载
	$('.demo12').click(function(){
		//自定义文字： $.showLoading('玩命加载中...');
		//自定义宽高： $.showLoading('努力加载中...',140,40);
		$.showLoading();
	});
	
	//显示前的回调方法
	$('.demo14').hDialog({beforeShow: function(){
		alert('显示前执行');
	}});
	
	//隐藏后的回调方法
	$('.demo15').hDialog({afterHide: function(){
		alert('隐藏后执行');
	}});
	
	//fadeOut关闭效果
	$('.demo16').hDialog({effect: 'fadeOut'});
	
	//bounceOut关闭效果
	$('.demo20').hDialog({effect: 'bounceOut'});
	
	//bounceOutDown关闭效果
	$('.demo21').hDialog({effect: 'bounceOutDown'});
	
	//bounceOutLeft关闭效果
	$('.demo22').hDialog({effect: 'bounceOutLeft'});
	
	//bounceOutRight关闭效果
	$('.demo23').hDialog({effect: 'bounceOutRight'});
	
	//bounceOutUp关闭效果
	$('.demo24').hDialog({effect: 'bounceOutUp'});
	
	//fadeOutDown关闭效果
	$('.demo25').hDialog({effect: 'fadeOutDown'});
	
	//fadeOutLeft关闭效果
	$('.demo26').hDialog({effect: 'fadeOutLeft'});
	
	//fadeOutRight关闭效果
	$('.demo27').hDialog({effect: 'fadeOutRight'});
	
	//fadeOutUp关闭效果
	$('.demo28').hDialog({effect: 'fadeOutUp'});
	
	//flipOutX关闭效果
	$('.demo29').hDialog({effect: 'flipOutX'});
	
	//flipOutY关闭效果
	$('.demo30').hDialog({effect: 'flipOutY'});
	
	//lightSpeedOut关闭效果
	$('.demo31').hDialog({effect: 'lightSpeedOut'});
	
	//rotateOut关闭效果
	$('.demo32').hDialog({effect: 'rotateOut'});
	
	//rotateOutDownLeft关闭效果
	$('.demo33').hDialog({effect: 'rotateOutDownLeft'});
	
	//rotateOutDownRight关闭效果
	$('.demo34').hDialog({effect: 'rotateOutDownRight'});
	
	//rotateOutUpLeft关闭效果
	$('.demo35').hDialog({effect: 'rotateOutUpLeft'});
	
	//rotateOutUpRight关闭效果
	$('.demo36').hDialog({effect: 'rotateOutUpRight'});
	
	//slideOutUp关闭效果
	$('.demo37').hDialog({effect: 'slideOutUp'});
	
	//slideOutDown关闭效果
	$('.demo38').hDialog({effect: 'slideOutDown'});
	
	//slideOutLeft关闭效果
	$('.demo39').hDialog({effect: 'slideOutLeft'});
	
	//slideOutRight关闭效果
	$('.demo40').hDialog({effect: 'slideOutRight'});
	
	//zoomOut关闭效果
	$('.demo41').hDialog({effect: 'zoomOut'});
	
	//zoomOutDown关闭效果
	$('.demo42').hDialog({effect: 'zoomOutDown'});
	
	//zoomOutLeft关闭效果
	$('.demo43').hDialog({effect: 'zoomOutLeft'});
	
	//zoomOutRight关闭效果
	$('.demo44').hDialog({effect: 'zoomOutRight'});
	
	//zoomOutUp关闭效果
	$('.demo45').hDialog({effect: 'zoomOutUp'});
	
	//rollOut关闭效果
	$('.demo46').hDialog({effect: 'rollOut'});
	
	//定时关闭
	$('.demo17').hDialog({hideTime: 2000});
	
	//不显示关闭按钮
	$('.demo18').hDialog({closeHide: false});
	
	//不显示遮罩
	$('.demo19').hDialog({isOverlay: false});
	
	//提示后回调
	$('.demo47').click(function(){
		$.tooltip('hello...',1000,true,function(){
			$.tooltip('执行回调...');
		});
	});
	
	//confirm
	$('.demo48').click(function(){
		$.dialog('confirm','提示','您确认要删除么？',0,function(){ 
			$.tooltip('删除成功～',2000,true,function(){ 
				//$.closeDialog(); 
				$.closeDialog(function(){ alert('还可以回调了。'); }); 
			});
		});
	});
	
	//alert
	$('.demo49').click(function(){
		//$.dialog('alert','提示','正在处理中...'); 或者 $.dialog('alert','提示','正在处理中...',0); //不自动关闭
		$.dialog('alert','提示','正在处理中...',2000,function(){ $.tooltip('执行回调...',2000,true); }); //2s自动关闭
	});
	
	//iframe
	$('.demo50').hDialog({types:2,iframeSrc:'http://css.doyoe.com/',iframeId:'iframeHBox',width:960,height:600});
	
	//返回顶部
	$.goTop();	
	
});
 
   </script>
</body>
</html>
