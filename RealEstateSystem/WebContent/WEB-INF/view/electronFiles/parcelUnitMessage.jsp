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
    
    <title>My JSP 'parcelUnitMessage.jsp' starting page</title>
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
  <form action="${ctx}/gyjsParcelController/insertparcelUnit.do" method="post">
    <table class="table table-bordered table-hover m10">
    <input type="hidden" id="parcelCode" name="parcelcode"/>
    <input type="hidden" id="realrstateUnitNumber" name="realrstateunitnumber"/>
    <input type="hidden" id="WarrantNumber" name="warrantnumber"/>
    <input type="hidden" name="registrationno" value="0"/>
    <input type="hidden" id="boxOfficeid" name="boxofficeid"/>
    
    <input type="hidden" id="districtandcounty" name="districtandcounty"/>
    <input type="hidden" id="cadastralarea" name="cadastralarea"/>
    <input type="hidden" id="cadastralsubarea" name="cadastralsubarea"/>
    <input type="hidden" value="宗地" name="landtype"/>
			<tr>
				<td style="width:10%;" class="tableleft">坐落:</td>
				<td><input id="sit" name="sit" style="width:90%;" type="text"><span class="spa spa1"></span></td>
				<td style="width:10%;" class="tableleft">所属办箱:</td>
				<td>
				  <select id="boxofficeid" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${yw_BoxOffice}" var="item">
					<option  value="${item.boxofficeid}">${item.entryname}</option>						
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
			    <td class="tableleft">不动产权证号:</td>
				<td><input onkeyup="onchangeWarrant()" id="Warrant" type="text"><label id="zqhNumber" style="margin-left: 218px;margin-top: -30px;">${WarrantNumber}号</label></td>
					<td class="tableleft">宗地面积:</td>
				<td><input name="parcelarea" type="text"></td>
			</tr>
			<tr>											
				<td class="tableleft">区县:</td>
				<td>
				<select id="test" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_DistrictandCounty}" var="item">
					<option value="${item.districtandcountycode}">${item.districtandcounty}</option>						
				</c:forEach>
				</select>
				</td>
				<td class="tableleft">地籍区:</td>
				<td>
				<select id="test1" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_CadastralArea}" var="item">
					<option value="${item.cadastralareacode}">${item.cadastralarea}</option>						
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
			
				<td class="tableleft">地籍子区:</td>
				<td>
				<select id="test2" value="this.options[this.options.selectedIndex].value">														
				<c:forEach items="${bs_CadastralSubArea}" var="item">
					<option  value="${item.cadastralsubareacode}">${item.cadastralsubarea}</option>						
				</c:forEach>
				</select></td>
				<td class="tableleft">宗地代码:</td>
				<td><label style="display:inline-block;" id="districtAndCountyCode"></label>
				<label style="display: inline-block;" id="cadastralAreaCode"></label>
				<label style="display: inline-block;" id="cadastralSubAreaCode"></label>
				<label style="display: inline-block;" id="parcelConditionCode"></label>
				<label style="display: inline-block;" id="zdsxhNumber">${zdsxhNumber}</label>	
				</td>
				
			</tr>
			<tr>
			    <td class="tableleft">建筑限高:</td>
				<td><input name="highbuildinglimit" type="text"></td>
				<td class="tableleft">权利设定方式:</td>
				<td><select class="rightsettingwayid" name="rightsettingwayid"
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
				<td><select class="landgradeid" name="landgradeid"
					value="this.options[this.options.selectedIndex].value"
					>
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_LandGrade}" var="item">
							<option  value="${item.landgradeid}">${item.landgradeidname}</option>
						</c:forEach>
				</select> </td>
					<td class="tableleft">用途:</td>
				<td><select class="useid" name="useid"
					value="this.options[this.options.selectedIndex].value">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_Use}" var="item">
							<option  value="${item.useid}">${item.usename}</option>
						</c:forEach>
				</select> </td>
				
			</tr>
			<tr>
			<td class="tableleft">建筑密度:</td>
				<td><input name="buildingdensity" type="text"></td>
				<td class="tableleft">容积率:</td>
				<td><input name="plotratio" type="text"></td>
		
			</tr>
			<tr>
				<td class="tableleft">宗地东至:</td>
				<td><input name="parceleast" type="text"></td>
				<td class="tableleft">宗地南至:</td>
				<td><input name="parcelsouth" type="text"></td>
			</tr>
			<tr>
			
				<td class="tableleft">宗地西至:</td>
				<td><input name="parcelwest" type="text"></td>
			<td class="tableleft">宗地北至:</td>
				<td><input name="parcelnorth" type="text"></td>
			</tr>
			
			<tr>
			<td class="tableleft">宗地特征码:</td>
				<td><input name="parcelconditioncode" onkeyup="onchangeClick()" id="PCCode"  type="text"></td>
				<td class="tableleft">图幅号:</td>
				<td><input name="mapnumber" type="text"></td>
			
			</tr>
			<tr>
			<td class="tableleft">使用权面积:</td>
				<td><input name="userightarea" type="text"></td>
				<td class="tableleft">不动产单元号:</td>
				<td><label style="display: inline-block;" id="realRstateUnitNumber"></label>
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
		
		<script type="text/javascript">
		    /*********************** 提交验证 ***************************/
			$("#subm").click(function(){				
				if($("#boxofficeid").getsingleSelectText()!="" && $("#test").getsingleSelectText()!=""
				&& $("#test1").getsingleSelectText()!="" && $("#test2").getsingleSelectText()!=""
				&& $(".landgradeid").val()!="0" && $(".useid").val()!="0" && $(".rightsettingwayid").val()!="0"
				&& $("#sit").val()!=""){
			        
					return true;
				}else{
				    if($("#sit").getsingleSelectText()==""){
				       alert("请选择坐落");
						return false;
				    }
					if($("#boxofficeid").getsingleSelectText()==""){
						alert("请选择办箱");
						return false;
					} 
					if($("#test").getsingleSelectText()==""){
						alert("请选择区县");
						return false;
					} 				
					if($("#test1").getsingleSelectText()==""){
						alert("请选择地籍区");
						return false;
					} 	
					if($("#test2").getsingleSelectText()==""){
						alert("请选择地籍子区");
						return false;
					} 
					if($(".rightsettingwayid").val()=="0"){
						alert("请选择权利设定方式");
						return false;
					} 	
						
					if($(".landgradeid").val()=="0"){
						alert("请选择土地等级");
						return false;
					} 	
					if($(".useid").val()=="0"){
						alert("请选择用途");
						return false;
					} 	
				}
			})
		</script>
		
  </body>

</html>
