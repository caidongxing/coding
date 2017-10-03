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
    
    <title>My JSP 'updateparcelUnit.jsp' starting page</title>  
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
	<!-- 拼音查询 -->	
  <link rel="stylesheet" href="${ctx}/assets/fuzzyDropBox/css/selectbox.css" type="text/css"></link>
  <script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
  
  <script type="text/javascript" src="${ctx}/assets/fuzzyDropBox/js/changtopy.js"></script>
  <script type="text/javascript" src="${ctx}/assets/fuzzyDropBox/js/getpyszm.js"></script>
  <script type="text/javascript" src="${ctx}/assets/fuzzyDropBox/js/jquery.singleselect.js"></script>
    <script>

	$(function(){	    		 
	$("#boxofficeid option[value='${yw_ParcelUnit.boxofficeid}']").attr("selected","selected");	
	$("#rightsettingwayid option[value='${yw_ParcelUnit.rightsettingwayid}']").attr("selected","selected");	
	$("#landgradeid option[value='${yw_ParcelUnit.landgradeid}']").attr("selected","selected");
	$("#useid option[value='${yw_ParcelUnit.useid}']").attr("selected","selected");
	//单选下拉列表
		$("#test").singleSelect({width:"200px",changeFunction:"changetip()"});	
        $("#test1").singleSelect({width:"200px",changeFunction:"changetip1()"});	
        $("#test2").singleSelect({width:"200px",changeFunction:"changetip2()"});
        $("#boxofficeid").singleSelect({width:"200px",changeFunction:"changetip3()"});
    	
	});
function changetip(){
   $('#districtandcounty').val($("#test").getsingleSelectText());  
   $('#districtAndCountyCode').text($("#test").getsingleSelectValue());  
   bdcdy();
}
function changetip1(){
  $('#cadastralarea').val($("#test1").getsingleSelectText());  
   $('#cadastralAreaCode').text($("#test1").getsingleSelectValue());  
   bdcdy();
}
function changetip2(){
   $('#cadastralsubarea').val($("#test2").getsingleSelectText()); 
   $('#cadastralSubAreaCode').text($("#test2").getsingleSelectValue()); 
   bdcdy(); 
}
function changetip3(){
 alert($("#boxofficeid").getsingleSelectValue());
  $('#boxOfficeid').val($("#boxofficeid").getsingleSelectValue());
}
function onchangeClick(){
  $('#parcelConditionCode').text($('#PCCode').val());
  bdcdy();
}

function bdcdy(){
    if($('#districtAndCountyCode').text()!="" && $('#cadastralAreaCode').text()!="" && 
  $('#cadastralSubAreaCode').text()!="" && $('#parcelConditionCode').text()!=""){
  
  var bdc=$('#districtAndCountyCode').text()+$('#cadastralAreaCode').text()
      +$('#cadastralSubAreaCode').text()+$('#parcelConditionCode').text()+$('#zdsxhNumber').text();
      $('#realRstateUnitNumber').text(bdc);   
       $('#parcelCode').val(bdc);
       document.getElementById("zdwNumber").style.display="inline-block";
  }
  else{
      $('#realRstateUnitNumber').text("");
      document.getElementById("zdwNumber").style.display="none";
  }
}
    function changebdcdyh(){
       $('#realrstateUnitNumber').val($('#districtAndCountyCode').text()+$('#cadastralAreaCode').text()
      +$('#cadastralSubAreaCode').text()+$('#parcelConditionCode').text()+$('#zdsxhNumber').text()+$('#zdwNumber').val());
    }
    function onchangeWarrant(){
        $('#WarrantNumber').val($('#Warrant').val()+$('#zqhNumber').text());
    }
</script>
  </head>
  
  <body>
  <div class="widget-body" style="width:auto; height:680px; overflow:scroll;">
  <form action="${ctx}/gyjsParcelController/updateparcelUnit.do" method="post">
    <table class="table table-bordered table-hover m10">
    <input type="hidden" id="parcelCode" name="parcelcode"/>
    <input type="hidden" id="realrstateUnitNumber" name="realrstateunitnumber"/>
    <input type="hidden" id="WarrantNumber"/>
    <input type="hidden" name="registrationno" value="0"/>
    <input type="hidden" id="boxOfficeid" name="boxofficeid"/>
    
    <input type="hidden" id="districtandcounty" name="districtandcounty"/>
    <input type="hidden" id="cadastralarea" name="cadastralarea"/>
    <input type="hidden" id="cadastralsubarea" name="cadastralsubarea"/>
    <input type="hidden" id="parcelunitid" name="parcelunitid" value="${parcelunitid}"/>
    
			<tr>
				<td style="width:10%;" class="tableleft">坐落:${yw_ParcelUnit.districtandcounty}</td>
				<td><input name="sit" style="width:90%;" type="text" value="${yw_ParcelUnit.sit}"></td>
				<td style="width:10%;" class="tableleft">所属办箱:</td>
				<td>
				  <select id="boxofficeid" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${ywBoxOffice}" var="item">
					<option  value="${item.boxofficeid}">${item.entryname}</option>						
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
			    <td class="tableleft">不动产权证号:</td>
				<td><input name="warrantnumber" style="width:250px;" onkeyup="onchangeWarrant()" id="Warrant" type="text" value="${yw_ParcelUnit.warrantnumber}"><label id="zqhNumber" style="margin-left: 218px;margin-top: -30px;"></label></td>
					<td class="tableleft">宗地面积:</td>
				<td><input name="parcelarea" type="text" value="${yw_ParcelUnit.parcelarea}"></td>
			</tr>
			<tr>											
				<td class="tableleft">区县:</td>
				<td>
				<select id="test" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_DistrictandCounty}" var="item">
					<option value="${item.districtandcountycode}" ${yw_ParcelUnit.districtandcounty eq item.districtandcounty?"selected='selected'":""}>${item.districtandcounty}</option>						
				</c:forEach>
				</select>
				</td>
				<td class="tableleft">地籍区:</td>
				<td>
				<select  id="test1" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_CadastralArea}" var="item">
					<option value="${item.cadastralareacode}" ${yw_ParcelUnit.cadastralarea eq item.cadastralarea?"selected='selected'":""}>${item.cadastralarea}</option>						
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
			
				<td class="tableleft">地籍子区:</td>
				<td>
				<select  id="test2" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_CadastralSubArea}" var="item">
					<option  value="${item.cadastralsubareacode}" ${yw_ParcelUnit.cadastralsubarea eq item.cadastralsubarea?"selected='selected'":""}>${item.cadastralsubarea}</option>						
				</c:forEach>
				</select></td>
				<td class="tableleft">宗地代码:</td>
				<td><label style="display:inline-block;" id="districtAndCountyCode">${districtAndCountyCode}</label>
				<label style="display: inline-block;" id="cadastralAreaCode">${cadastralAreaCode}</label>
				<label style="display: inline-block;" id="cadastralSubAreaCode">${cadastralSubAreaCode}</label>
				<label style="display: inline-block;" id="parcelConditionCode">${parcelConditionCode}</label>
				<label style="display: inline-block;" id="zdsxhNumber">${zdsxhNumber}</label>	
				</td>
				
			</tr>
			<tr> 
			    <td class="tableleft">建筑限高:</td>
				<td><input name="highbuildinglimit" type="text" value="${yw_ParcelUnit.highbuildinglimit}"></td>
				<td class="tableleft">权利设定方式:</td>
				<td><select class="registertype" id="rightsettingwayid" name="rightsettingwayid" 
					value="this.options[this.options.selectedIndex].value">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_RightSettingway}" var="item">
							<option value="${item.rightsettingwayid}">${item.rightsettingwayname}</option>
						</c:forEach>
				</select>
			</tr>
			<tr>
					
				</td>
				<td class="tableleft">土地等级:</td>
				<td><select class="registertype" id="landgradeid" name="landgradeid"
					value="this.options[this.options.selectedIndex].value"
					>
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_LandGrade}" var="item">
							<option  value="${item.landgradeid}">${item.landgradeidname}</option>
						</c:forEach>
				</select> </td>
					<td class="tableleft">用途:</td>
				<td><select class="registertype" id="useid" name="useid"
					value="this.options[this.options.selectedIndex].value">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_Use}" var="item">
							<option  value="${item.useid}">${item.usename}</option>
						</c:forEach>
				</select> </td>
				
			</tr>
			<tr>
			<td class="tableleft">建筑密度:</td>
				<td><input name="buildingdensity" type="text" value="${yw_ParcelUnit.buildingdensity}"></td>
				<td class="tableleft">容积率:</td>
				<td><input name="plotratio" type="text" value="${yw_ParcelUnit.plotratio}"></td>
		
			</tr>
			<tr>
				<td class="tableleft">宗地东至:</td>
				<td><input name="parceleast" type="text" value="${yw_ParcelUnit.parceleast}"></td>
				<td class="tableleft">宗地南至:</td>
				<td><input name="parcelsouth" type="text" value="${yw_ParcelUnit.parcelsouth}"></td>
			</tr>
			<tr>
			
				<td class="tableleft">宗地西至:</td>
				<td><input name="parcelwest" type="text" value="${yw_ParcelUnit.parcelwest}"></td>
			<td class="tableleft">宗地北至:</td>
				<td><input name="parcelnorth" type="text" value="${yw_ParcelUnit.parcelnorth}"></td>
			</tr>
			
			<tr>
			<td class="tableleft">宗地特征码:</td>
				<td><input name="parcelconditioncode" onkeyup="onchangeClick()" id="PCCode"  type="text" value="${yw_ParcelUnit.parcelconditioncode}"></td>
				<td class="tableleft">图幅号:</td>
				<td><input name="mapnumber" type="text" value="${yw_ParcelUnit.mapnumber}"></td>
			
			</tr>
			<tr>
			<td class="tableleft">使用权面积:</td>
				<td><input name="userightarea" type="text" value="${yw_ParcelUnit.userightarea}"></td>
				<td class="tableleft">不动产单元号:</td>
				<td><label style="display: inline-block;" id="realRstateUnitNumber">${yw_ParcelUnit.realrstateunitnumber}</label>
				<input onkeyup="changebdcdyh()" style="display: none;width:100px;" id="zdwNumber" type="text"/>
				</td>
			</tr>
		</table>
   
			<div style="float:right;position: relative;">
		<button  type="submit" id="subm" class="btn btn-success">
				<i class="icon-plus"></i>添加
			</button>
		
		
		</div>
		 </form>
		 <a style="float:right;margin-right:10px; relative;"  href="${ctx}/gyjsParcelController/selectGyjsParcel.do"><button
				class="btn btn-info">
				<i class="icon-refresh"></i>返回列表
			</button>
		</a>
		</div>
		
  </body>
  <script type="text/javascript">

  </script>
</html>
