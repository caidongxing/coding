<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath}" scope="page"
	var="ctx"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registerBook.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="Css/3Dbutton.css" type="text/css"></link>
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />	
	<!--弹出层  -->

<link rel="stylesheet" href="hdialog/css/animate.css" type="text/css"></link>

	<script type="text/javascript"
	src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
	<!--提示框 -->
<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css"
	type="text/css"></link>
<script type="text/javascript"
	src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
	<style type="text/css">
.on {
	background: #42D0FF;
	color: white;
}
</style>
  </head>
  
  <body>
    <div
		style="width:20%;height:100%;float:left;border-right: solid 2px #2fade7;">
		<!--  <a href="${ctx}/DocumentInformationController/documentInformation.do"><button class="btn btn-info"><i class="icon-refresh"></i>刷新</button></a> &nbsp;&nbsp;-->
		<ul style="background-color:#2fade7;" class="breadcrumb"
		>
			<li>宗地单元列表<span class="divider">|</span>
			</li>
		</ul>

		<ul id="haha" style="position: relative;top:-20px;"
			class="nav nav-pills nav-stacked">
			<c:forEach items="${registerBookSit}" var="item">
			<li><a href="javascript:getli(${item.rightinformationid})" >坐落《${item.sit}》</a></li>	
			
			</c:forEach>
		</ul>
	</div>
	<div 
		style="width:79%;height:100%;float:right;overflow: scroll;">
		
		<div id="certificateContent" >
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>国有建设登记信息<span class="divider">|</span>
				</li>
			</ul>
			<h3 id="warrantnumber"></h3>
			<table class="table table-hover definewidth m10">
				<tr>
					<td width="100px;" class="tableleft">权利人:</td>
					<td colspan="2" class="tableleft" id="landuserights"></td>
				</tr>
				<tr>
					<td>共用情况:</td>
					<td colspan="2" id="commonwayname"></td>
				</tr>
				<tr>
					<td class="tableleft">坐落:</td>
					<td colspan="2" id="sit"></td>
				</tr>
				<tr>
					<td class="tableleft">不动产单元号:</td>
					<td colspan="2" id="realrstateunitnumber"></td>
				</tr>
				<tr>
					<td class="tableleft">权利类型:</td>
					<td colspan="2" id="typeofrightname"></td>
				</tr>
				<tr>
					<td class="tableleft">权利性质:</td>
					<td colspan="2" id="processclassificationname"></td>
				</tr>
				<tr>
					<td class="tableleft">用途:</td>
					<td colspan="2" id="usename"></td>
				</tr>
				<tr>
					<td class="tableleft">面积:</td>
					<td colspan="2"  id="parcelarea"></td>
				</tr>
				<tr>
					<td class="tableleft" >使用期限:</td>
					<td colspan="2" id="endtime"></td>
				</tr>
				<tr>
				              													
					 <td  class="tableleft">使用权面积:</td>
					<td id="userightarea"></td>											
				</tr>
             <tr><td class="tableleft">建筑限高:</td>
					<td id="highbuildinglimit"></td></tr>
             <tr><td class="tableleft">建筑密度:</td>
					<td id="buildingdensity"></td></tr>
             <tr><td class="tableleft">容积率:</td>
					<td id="plotratio"></td></tr>
             <tr><td class="tableleft">宗地特征码:</td>
					<td id="parcelconditioncode"></td></tr>
             <tr><td class="tableleft">图幅号:</td>
					<td id="mapnumber"></td></tr>
			<tr>
					<td class="tableleft">登簿时间</td>
					<td id="date" colspan="2"></td>
				</tr>
				<tr>
					<td class="tableleft">登簿人</td>
					<td colspan="2"  id="parcelarea">${username}</td>
				</tr>
				<tr>
				<td class="tableleft">附记:</td>
				<td ><textarea style="width:630px;"
						id="Excursus"></textarea></td>				
			</tr>
			</table>
			<div style="margin-left: 300px;">
			<a href="${ctx}/RegisterBookController/registerBook.do"><button
						class="btn btn-info">
						<i class="icon-refresh"></i>刷新
					</button>
			</a>
			<a onclick="insertRegister()"><button class="btn btn-info">
				<i class="icon-search"></i>写入登记簿
			</button> </a> 
			</div>
		</div>

	</div>
	
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="hdialog/js/jquery.hDialog.min.js"></script>
  </body>
  <script type="text/javascript">
  var rightInformationId=0;
  
   var time = document.getElementById("date");
  window.onload=function(){
      setTime(time);
  }
  
  $("#haha li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
	$("#coverCatalogue li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
	
	function getli(rightinformationid){	
	rightInformationId=rightinformationid;
	$.ajax({
		     url : "${ctx}/DocumentInformationController/selectDocumentInformation.do?rightinformationid="+rightinformationid,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){				  
		      $('h3').html(jsonArray[0].warrantnumber);
		      $('#landuserights').text(jsonArray[0].landuserights);	
		      $('#commonwayname').text(jsonArray[0].commonwayname);
		      $('#sit').text(jsonArray[0].sit);	
		      $('#realrstateunitnumber').text(jsonArray[0].realrstateunitnumber);		      	
		      $('#typeofrightname').text(jsonArray[0].typeofrightname);	
		      $('#processclassificationname').text(jsonArray[0].processclassificationname);
		      $('#usename').text(jsonArray[0].usename);	
		      $('#parcelarea').text(jsonArray[0].parcelarea);			      
		      $('#userightarea').text(jsonArray[0].userightarea);
		      $('#highbuildinglimit').text(jsonArray[0].highbuildinglimit);	
		      $('#buildingdensity').text(jsonArray[0].buildingdensity);	
		      $('#plotratio').text(jsonArray[0].plotratio);		       	
		  	  $('#parcelconditioncode').text(jsonArray[0].parcelconditioncode);	
		      $('#mapnumber').text(jsonArray[0].mapnumber); 
		      $('#Excursus').text(jsonArray[0].excursus);		   
		      $('#endtime').text(jsonArray[0].enddata);  		        	          	         	 
		    }   
		  })		
	}
	var riqi;
	function setTime(time) {
   
    var CurrentTime = new Date();;
    var Year = CurrentTime.getFullYear();
    var Month = CurrentTime.getMonth() + 1;
    var Day = CurrentTime.getDate();
    var week = CurrentTime.getDay();
    var Hours=CurrentTime.getHours();
    var Minutes=CurrentTime.getMinutes();
    var Milliseconds=CurrentTime.getMilliseconds();
     riqi = Year + "年" + Month + "月" + Day + "日";
    time = document.getElementById("date");

    var dayWeek = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    time.textContent = riqi+","+dayWeek[week];
    
}
function insertRegister(){
   	if(rightInformationId==0){
   	     $.tooltip('请选择登簿信息保存！！'); 
  
   	}else{
		 swal({
			title: "您确定要保存吗？", 
			text: "您确定要保存这条登簿信息吗？",
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要保存",
			confirmButtonColor: "#ec6c62"
			}, function() {
				swal("操作成功!", "已成功保存登簿信息！", "success");
				window.location="${ctx}/RegisterBookController/insertRegisterBook.do?rightInformationId="+rightInformationId+"&time="+riqi;
			});
			}
	};
  </script>

</html>
