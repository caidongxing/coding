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
    
    <title>My JSP 'registerInformation.jsp' starting page</title>
    
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
	<script src="${ctx}/assets/bootstrap/js/bootstrap.min.js"></script>
	
	<!--打印插件 -->
	<script type="text/javascript" src="${ctx}/Js/putasealon/jquery.printarea.js"></script>
	
	<style type="text/css">
	   .on {
	background: #42D0FF;
	color: white;
}
	</style>
  </head>
  
  <body>
    <div style="width:20%;height:100%;float:left;">
		<ul style="background-color:#2fade7;" class="breadcrumb">
			<li>登记簿索引<span class="divider">|</span>
			</li>
		</ul>
		<ul id="registerIndex"
			style="position: relative;top:-20px;border-right: solid 2px #2fade7;"
			class="nav nav-pills nav-stacked">
			<li data-toggle="tab" href="#CoverInformation"><a>封面</a></li>
			<li data-toggle="tab" href="#ParcelInformation"><a>宗地基本信息</a></li>
			
		</ul>
	</div>
	
	<div class="tab-content" id="myTabContent"
		style="width:79%;height:100%;float:right;">
		   <div id="CoverInformation" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>封面信息<span class="divider">|</span>
				
				</li>
				<li style="float:right;margin-top: -5px;">
				<a  onclick="aa()"><button
						class="btn btn-success">
						<i></i>打印
					</button>
			</a>
				</li>
			</ul>
			<div id="cover">
			   <div style="width:460px;margin:0 auto;margin-top: 50px;">
                  <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">省(区、市)</label>
                  <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">市(区)</label>
                  <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">县(区、市)</label>
                  <br>
                  <div style="margin-top: 50px;">
                   <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">街道(乡、镇)</label>
                  <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">街坊(村)</label>
                  <lable style="text-decoration:underline">___________</lable><label style="display: inline-block;">组</label>
                  </div>
                   <div style="margin-top: 50px;">
                  <h1 style="letter-spacing: 20px;">不动产登记簿</h1>
                  </div>
                  <div style="margin-top: 88px;">
                  <label style="display: inline-block;">宗地/宗海代码:</label><label style="text-decoration: underline;display: inline-block;">${yw_ParcelUnit.parcelcode}</label>
                   </div>
                    <div style="margin-top: 88px;">
                  <h4 style="display: inline-block;">登记机构：</h4><lable style="text-decoration:underline;display: inline-block;">__________________</lable>
                   </div>
                  </div>
                   </div>
		</div> 
		
		<div id="ParcelInformation" class="tab-pane fade">
			<ul style="background-color:#2fade7;" class="breadcrumb">
				<li>宗地基本信息<span class="divider">|</span>				
				</li>
				<li style="float:right;margin-top: -5px;">
			
			<a  onclick="jiben()"><button
						class="btn btn-success">
						<i></i>打印
					</button>
			</a>
				</li>
			</ul>
			<div id="information">
			<h3 id="warrantnumber"></h3>
			
			<table class="table table-hover definewidth m10">
				
				<tr>
					<td class="tableleft">坐落:</td>
					<td colspan="2" id="sit">${yw_ParcelUnit.sit}</td>
				</tr>
				<tr>
					<td class="tableleft">不动产单元号:</td>
					<td colspan="2" id="realrstateunitnumber">${yw_ParcelUnit.realrstateunitnumber}</td>
				</tr>
				<tr>
					<td class="tableleft">宗地东至:</td>
					<td colspan="2" id="parceleast">${yw_ParcelUnit.parceleast}</td>
				</tr>
				<tr>
					<td class="tableleft">宗地南至:</td>
					<td colspan="2" id="parcelsouth">${yw_ParcelUnit.parcelsouth}</td>
				</tr>
				<tr>
					<td class="tableleft">宗地西至:</td>
					<td colspan="2" id="parcelwest">${yw_ParcelUnit.parcelwest}</td>
				</tr>
				<tr>
					<td class="tableleft">宗地北至:</td>
					<td colspan="2" id="parcelnorth">${yw_ParcelUnit.parcelnorth}</td>
				</tr>
				<tr>
					<td class="tableleft">面积:</td>
					<td colspan="2"  id="parcelarea">${yw_ParcelUnit.parcelarea}</td>
				</tr>
					<tr>
					<td class="tableleft">不动产权证号:</td>
					<td colspan="2"  id="warrantnumber">${yw_ParcelUnit.warrantnumber}</td>
				</tr>
				<tr>
					<td rowspan="6" style="vertical-align:middle; width:15%"
						class="tableleft">其他使用情况</td>                   													
					 <td style="width:15%" class="tableleft">使用权面积:</td>
					<td id="userightarea">${yw_ParcelUnit.userightarea}</td>											
				</tr>
             <tr><td class="tableleft">建筑限高:</td>
					<td id="highbuildinglimit">${yw_ParcelUnit.highbuildinglimit}</td></tr>
             <tr><td class="tableleft">建筑密度:</td>
					<td id="buildingdensity">${yw_ParcelUnit.buildingdensity}</td></tr>
             <tr><td class="tableleft">容积率:</td>
					<td id="plotratio">${yw_ParcelUnit.plotratio}</td></tr>
             <tr><td class="tableleft">宗地特征码:</td>
					<td id="parcelconditioncode">${yw_ParcelUnit.parcelconditioncode}</td></tr>
             <tr><td class="tableleft">图幅号:</td>
					<td id="mapnumber">${yw_ParcelUnit.mapnumber}</td></tr>
			</table>
		</div>
		</div>
		</div>
	<script type="text/javascript">
	$("#registerIndex li").click(function() {
		$(this).addClass("on").siblings("li").removeClass("on");
	});
	

function aa(){
$("#cover").printArea();
}
function jiben(){
$("#information").printArea();
}
</script>
	</script>
  </body>
</html>
