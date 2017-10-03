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

<title>My JSP 'documentInformation.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="${ctx}/Css/3Dbutton.css" type="text/css"></link>
<link href="${ctx}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx}/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
	
	<!--弹出层  -->

<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
	<!--提示框 -->
<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css"
	type="text/css"></link>
<script type="text/javascript"
	src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
	<!--打印插件 -->
	
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

	<div
		style="width:20%;height:100%;float:left;border-right: solid 2px #2fade7;">
		<!--  <a href="${ctx}/DocumentInformationController/documentInformation.do"><button class="btn btn-info"><i class="icon-refresh"></i>刷新</button></a> &nbsp;&nbsp;-->
		<ul style="background-color:#2fade7;" class="breadcrumb"
		>
			<li>证书信息<span class="divider">|</span><a style="color: red;" href="${ctx}/DocumentInformationController/documentInformation.do">刷新 </a>	      
			</li>
		</ul>

		<ul id="Applicantname" style="position: relative;top:-20px;"
			class="nav nav-pills nav-stacked">
			<c:forEach items="${yw_RightPersonInformations}" var="item">
			<li><a href="javascript:getli(${item.rightinformationid})" >${item.applicantname}</a></li>	
			
			</c:forEach>
		</ul>
	</div>
	<div style="width:10%;height:100%;float:left;">
		<ul style="background-color:#2fade7;" class="breadcrumb">
			<li>封面目录<span class="divider">|</span>
			</li>
		</ul>
		<ul id="coverCatalogue"
			style="position: relative;top:-20px;border-right: solid 2px #2fade7;"
			class="nav nav-pills nav-stacked">
			<li data-toggle="tab" href="#CoverInformation"><a>封面信息</a></li>
			<li data-toggle="tab" href="#certificateContent"><a>证书内容</a></li>
			<li data-toggle="tab" href="#excursus"><a>附记</a></li>
		</ul>
	</div>

	<div class="tab-content" id="myTabContent"
		style="width:69%;height:100%;float:right;">
		<div id="CoverInformation" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>封面信息<span class="divider">|</span>
				
				</li>
				<li style="float:right;margin-top: -5px;">
				<a id="insertOpinion" onclick="save()"><button
						class="btn btn-success">
						<i class="icon-plus"></i>保存编号
					</button>
			</a>
				</li>
			</ul>
			<img style="float:left;" src="${ctx}/Images/bdczqs.png"></img>
			<button id="readNumber" onclick="select()" style="display:none; float:left;margin-left: 10px;">读取证书编号</button>
			<label id="zsbhNumber" style="float:left;margin-left: 20px;"></label>
		</div>
		
		<div id="certificateContent" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>证书内容<span class="divider">|</span>				
				</li>
				<li style="float:right;margin-top: -5px;">
				<a style="display: inline-block;" id="insertOpinion2" onclick="save()"><button
						class="btn btn-success">
						<i class="icon-plus"></i>保存编号
					</button>
			</a>
			<a style="display: inline-block;" onclick="aa()"><button
						class="btn btn-success">
						打印
					</button>
			</a>
				</li>
			</ul>
			<div id="ddd">
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
					<td rowspan="6" style="vertical-align:middle; width:15%"
						class="tableleft">其他使用情况</td>                   													
					 <td style="width:15%" class="tableleft">使用权面积:</td>
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
			</table>
		</div>
		</div>
	
		<div id="excursus" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>附记<span class="divider">|</span>
				</li>
				<li style="float:right;margin-top: -5px;">
				<a id="insertOpinion3" onclick="save()"><button
						class="btn btn-success">
						<i class="icon-plus"></i>保存编号
					</button>
			</a>
				</li>
			</ul>
			<table class="table table-hover definewidth m10">			
			<tr>
				<td class="tableleft">附记:</td>
				<td ><textarea style="width:630px;"
						id="Excursus"></textarea></td>				
			</tr>
			</table>
		</div>
	</div>
	     
	<input type="hidden" id="quarterstypeid" value="${quarterstypeid}"/>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="hdialog/js/jquery.hDialog.min.js"></script>
</body>
<script type="text/javascript">
    $(function(){	
    var quarterstypeid = document.getElementById("quarterstypeid").value;
        if(quarterstypeid==5){
          document.getElementById("readNumber").style.display="block";  
        }
    });
    
  $("#Applicantname li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
	$("#coverCatalogue li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
	var rightInformationId;
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
		     // if(jsonArray[0].zsbhnumber=="null"){
		     //   document.getElementById("insertOpinion").style.display="block"; 
		     //   document.getElementById("insertOpinion2").style.display="block";
		      //  document.getElementById("insertOpinion3").style.display="block";
		      //  document.getElementById("readNumber").style.display="block";
		    //  }  
		     //  if(jsonArray[0].zsbhnumber=="zsbhNumber"){
		     //   document.getElementById("insertOpinion").style.display="none"; 
		     //   document.getElementById("insertOpinion2").style.display="none";
		     //   document.getElementById("insertOpinion3").style.display="none";
		      //  document.getElementById("readNumber").style.display="none";
		        
		      //}         	          	         	 
		    }   
		  })		
	}
	function select(){
	   	$.ajax({
		     url : "${ctx}/boxOfficeController/selectZsbhNumber.do",
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){
		      var obj=eval(jsonArray).jsonresult;
		      var linumber=$('#Applicantname li').length;
		      if(linumber>0){
		           if(rightInformationId==undefined){
		           
		                 $.tooltip('请选择证书信息');
		            }else
		            {
		               $("#zsbhNumber").text(obj);	
		            }
		      }	
		      else{
		           $.tooltip('生成证书号码失败，因为没有证书');
		      }	  		              	          	         	 
		    }   
		  })
	}
	function save(){

	if($("#zsbhNumber").text()==""){
	      $.tooltip('保存证书编号失败，请先生成证书编号');
	}else{
	    swal({
			title: "您确定要保存吗？", 
			text: "您确定要保存证书编号吗？",
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要保存",
			confirmButtonColor: "#ec6c62"
			}, function() {
				swal("操作成功!", "已成功保存这条权利信息证书编号！", "success");
				window.location="${ctx}/DocumentInformationController/insertCertificate.do?rightInformationId="+rightInformationId+"&zsbhNumber="+$("#zsbhNumber").text();
				
						});
	}
	
	}
	
  </script>
  <script language="javascript">

function aa(){
$("#ddd").printArea();
}
</script>
</html>
