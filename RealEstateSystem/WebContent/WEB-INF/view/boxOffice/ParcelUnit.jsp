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
    
    <title>My JSP 'ParcelUnit.jsp' starting page</title>
    
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

<link href="assets/css/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
	<!--弹出层  -->
<link rel="stylesheet" href="hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="hdialog/css/animate.css" type="text/css"></link>
<script type="text/javascript" src="hdialog/js/jquery-1.9.1.min.js"></script>
<style>
.on {
	background: #42D0FF;
	color: white;
}
</style>

  </head>
  
  <body>
  
  <!-- BEGIN 宗地单元table-->
   <div style="width:25%;height:100%;float:left;">
								<ul style="background-color:#2fade7;" class="breadcrumb">
										<li>宗地单元列表<span class="divider">|</span></li>									
								</ul>
									<div class="widget-body"
										style="width:auto; height:650px; overflow:scroll;">
										<table class="table table-bordered" id="parcelUnit">
											<thead>
												<tr>
												<th style="width:30px;">id</th>
													<th style="width:150px;">坐落</th>
												</tr>
											</thead>

											<tbody id="parcelUnitTr">												
													<tr onclick="GetCell(this)">
													</tr>	
																						
											</tbody>

										</table>
		<a class="zoomInLeft dialog demo6"><button type="button" class="btn btn-large btn-info"><i class="icon-ok"></i>选择单元</button></a>						
		&nbsp;&nbsp;
		<button type="button" class="btn btn-large btn-warning" onclick="remove()"><a class="icon-trash"></a>删除单元</button>
	

									</div>
									<!-- END宗地单元table-->
								</div>
								<!-- begin宗地单元详细信息列表目录-->
								<div style="width:75%;float:right;">
								<ul style="background-color:#2fade7;" class="breadcrumb">
										<li>宗地单元详细信息</li>									
								</ul>
									<div class="widget-body">
										<div class="bs-docs-example">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active"><a data-toggle="tab" href="#unitInformation">单元信息</a>
												</li>
												<li><a data-toggle="tab" href="#drawing">图形浏览</a></li>

											</ul>
											<div class="tab-content" id="myTabContent">
												<div id="unitInformation" class="tab-pane fade in active">
													<h5 style="color:red;">宗地信息:</h5>
													<table class="table table-hover definewidth m10">
														<tr>
															<td class="tableleft">坐落*:</td>
															<td><input type="button"  class="sit"/>
															</td>

															<td>不动产证号</td>
															<td><input type="button"  class="warrantnumber"/></td>
														</tr>
														<tr>
															<td class="tableleft">不动产单元号:</td>
															<td><input type="button"  class="realrstateunitnumber"/></td>

															<td class="tableleft">宗地代码:</td>
															<td><input type="button"  class="parcelcode"/></td>
														</tr>
														<tr>
															<td>宗地面积*:</td>
															<td><input type="button"  class="parcelarea"/></td>
															<td>权利类型:</td>
															<td><select class="typeofrightid" disabled="disabled"
									value="this.options[this.options.selectedIndex].value"
									onchange="changetip(this.options[this.options.selectedIndex].value)">
										<option value="0">--请选择--</option>
										<c:forEach items="${bs_TypeofRights}" var="item">
											<option value="${item.typeofrightid}">${item.typeofrightname}</option>
										</c:forEach>
								</select>
								</td>
														</tr>
														<tr>
															<td class="tableleft">区县：</td>
															<td><input type="button"  class="districtandcounty"/></td>
															<td class="tableleft">地籍区:</td>
															<td><input type="button"  class="cadastralarea"/></td>
														</tr>
														<tr>
															<td class="tableleft">地籍子区:</td>
															<td><input type="button"  class="cadastralsubarea"/></td>
															<td>用途：</td>
															<td><input type="button"  class="usename"/></td>
														</tr>
														<tr>
															<td class="tableleft">权利设定方式:</td>
															<td><input type="button"  class="rightsettingwayname"/></td>
															<td>权利性质:</td>
															<td><select class="processclassificationid" disabled="disabled"
									value="this.options[this.options.selectedIndex].value"
									onchange="changetip(this.options[this.options.selectedIndex].value)">
										<option value="0">--请选择--</option>
										<c:forEach items="${bs_ProcessClassifications}" var="item">
											<option value="${item.processclassificationid}">${item.processclassificationname}</option>
										</c:forEach>
								</select>
								</td>
														</tr>
														<tr>
															<td class="tableleft">土地等级:</td>
															<td><input type="button"  class="landgradeidname"/></td>
															<td>建筑限高:</td>
															<td><input type="button"  class="highbuildinglimit"/></td>
														</tr>
														<tr>
															<td class="tableleft">建筑密度:</td>
															<td><input type="button"  class="buildingdensity"/></td>
															<td>容积率:</td>
															<td><input type="button"  class="plotratio"/></td>

														</tr>
														<tr>
															<td class="tableleft">宗地东至:</td>
															<td><input type="button"  class="parceleast"/></td>
															<td>宗地南至:</td>
															<td><input type="button"  class="parcelsouth"/></td>
														</tr>

														<tr>
															<td class="tableleft">宗地西至:</td>
															<td><input type="button"  class="parcelwest"/></td>
															<td>宗地北至::</td>
															<td><input type="button"  class="parcelnorth"/></td>
														</tr>

														<tr>
															<td class="tableleft">宗地特征码:</td>
															<td><input type="button"  class="parcelconditioncode"/></td>
															<td>图幅号:</td>
															<td><input type="button"  class="mapnumber"/></td>
														</tr>

														<tr>
															<td class="tableleft">使用权面积:</td>
															<td><input type="button"  class="userightarea"/></td>
															<td></td>
															<td></td>
														</tr>

													</table>

												</div>
												<div id="drawing" class="tab-pane fade">drawing</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end宗地单元详细信息列表目录-->
								
<div id="HBox" style="width: 800px;">
		
	<div class="widget-body"
					style="width:auto; height:300px; overflow:scroll;">
				<table class="table table-striped table-bordered" id="sample_1">
						<thead>
							<tr>
								<th style="width:8px;">选择
								</th>
								
								<th class="hidden-phone">坐落</th>
								<th class="hidden-phone">不动产权证号</th>
								<th class="hidden-phone">不动单元号</th>
								<th  class="hidden-phone">宗地代码</th>
								<th style="display: none" class="hidden-phone">宗地面积</th>
								<th style="display: none" class="hidden-phone">权利类型</th>
								<th  style="display: none" class="hidden-phone">区县</th>
								<th style="display: none"  class="hidden-phone">地籍区</th>
								<th style="display: none" width="100px;" class="hidden-phone">地籍子区</th>
								<th style="display: none" class="hidden-phone">用途</th>
								<th style="display: none" class="hidden-phone">权利设定方式</th>
								<th style="display: none" class="hidden-phone">权利性质</th>
								<th style="display: none" class="hidden-phone">土地等级</th>
								<th style="display: none" class="hidden-phone">建筑限高</th>
								
								<th style="display: none" class="hidden-phone">建筑密度</th>
								<th style="display: none" class="hidden-phone">容积率</th>
								<th style="display: none" class="hidden-phone">宗地东至</th>
								<th style="display: none" class="hidden-phone">宗地南至</th>
								<th style="display: none" class="hidden-phone">宗地西至</th>
								
								<th style="display: none" class="hidden-phone">宗地北至</th>
								<th style="display: none" class="hidden-phone">宗地特征码</th>
								<th style="display: none" class="hidden-phone">图幅号</th>
								<th style="display: none" class="hidden-phone">使用权面积</th>
								<th style="display: none" class="hidden-phone">序号</th>
							
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_ParcelUnits}" var="item" varStatus="ROW">
								<tr class="odd gradeX">
									<td><input type="checkbox" name="parcelunitid" class="checkboxes" value="${item.parcelunitid}"/>					
									</td>
									
									<td>${item.sit}</td>
									<td>${item.warrantnumber}</td>																			
									<td>${item.realrstateunitnumber}</td>									
									<td>${item.parcelcode}</td>																			
									<td style="display: none">${item.parcelarea}</td>
										
									<td style="display: none">${item.typeofrightid}</td>	
								    <td style="display: none"> ${item.districtandcounty}</td>									
									<td style="display: none">${item.cadastralarea}</td>	
									<td style="display: none">${item.cadastralsubarea}</td>									
									<td style="display: none">${item.usename}</td>	
									<td style="display: none">${item.rightsettingwayname}</td>									
									<td style="display: none">${item.processclassificationid}</td>	
									<td style="display: none">${item.landgradeidname}</td>									
									<td style="display: none">${item.highbuildinglimit}</td>	
									<td style="display: none">${item.buildingdensity}</td>									
									<td style="display: none">${item.plotratio}</td>	
									<td style="display: none">${item.parceleast}</td>									
									<td style="display: none">${item.parcelsouth}</td>	
									<td style="display: none">${item.parcelwest}</td>									
									<td style="display: none">${item.parcelnorth}</td>	
									<td style="display: none">${item.parcelconditioncode}</td>									
									<td style="display: none">${item.mapnumber}</td>
									<td style="display: none">${item.userightarea}</td>			
									<td>${ROW.count}</td>														
								</tr>
							</c:forEach>
						</tbody>
					</table>	
		
			</div>	
			<a onclick="selectParcelUnit()"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>选择
			</button>
		
	</div>
	

	<script src="Js/js/jquery.blockui.js"></script>

	<script type="text/javascript"
		src="assets/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
	<!--common script for all pages-->
	<script src="Js/js/common-scripts.js"></script>
	<!--script for this page only-->
	<script src="Js/js/dynamic-table.js"></script>
	<script type="text/javascript" src="Js/bootstrap.js"></script>
	
	    <script src="Js/js/jquery-1.8.3.min.js"></script>		
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="hdialog/js/jquery.hDialog.js"></script>			
  </body>
  <script type="text/javascript">
      $(function(){
      var $el = $('.dialog'); 
	$el.hDialog({box: '#HBox'}); //默认调用	
	//带标题的
	$('.demo6').hDialog({title: '信息',height: 300});
		
	//改变宽和高		
	$('.demo6').hDialog({width:808,height: 400});	
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});	
	//返回顶部
	$.goTop();	
});
function selectParcelUnit(){
  
    var parcelunitid = document.getElementsByName("parcelunitid");
    var value;
    var number=0;var rownum;
    var i=0;var tag=false;
   var unitid; var sit; var warrantnumber;var realrstateunitnumber;var parcelcode;var parcelarea;var typeofrightid;
   var districtandcounty;var cadastralarea;var cadastralsubarea;var usename;var rightsettingwayname;
   var processclassificationid;var landgradeidname;var highbuildinglimit;var buildingdensity;var plotratio;
   var parceleast;var parcelsouth;var parcelwest;var parcelnorth;var parcelconditioncode;var mapnumber;
   var userightarea;
    
    for(checkbox in parcelunitid){
      i++;
     if(parcelunitid[checkbox].checked){
        tag=true;
      
       value=parcelunitid[checkbox].value;
         number++;    
     
     
       sit=document.getElementById("sample_1").rows[i].cells[1].innerHTML; 
        warrantnumber=document.getElementById("sample_1").rows[i].cells[2].innerHTML; 
       realrstateunitnumber=document.getElementById("sample_1").rows[i].cells[3].innerHTML; 
       parcelcode=document.getElementById("sample_1").rows[i].cells[4].innerHTML; 
       
        parcelarea=document.getElementById("sample_1").rows[i].cells[5].innerHTML; 
       typeofrightid=document.getElementById("sample_1").rows[i].cells[6].innerHTML; 
       districtandcounty=document.getElementById("sample_1").rows[i].cells[7].innerHTML; 
       cadastralarea=document.getElementById("sample_1").rows[i].cells[8].innerHTML; 
       
        cadastralsubarea=document.getElementById("sample_1").rows[i].cells[9].innerHTML; 
       usename=document.getElementById("sample_1").rows[i].cells[10].innerHTML; 
       rightsettingwayname=document.getElementById("sample_1").rows[i].cells[11].innerHTML; 
       processclassificationid=document.getElementById("sample_1").rows[i].cells[12].innerHTML; 
       
       landgradeidname=document.getElementById("sample_1").rows[i].cells[13].innerHTML; 
       highbuildinglimit=document.getElementById("sample_1").rows[i].cells[14].innerHTML; 
       buildingdensity=document.getElementById("sample_1").rows[i].cells[15].innerHTML; 
       plotratio=document.getElementById("sample_1").rows[i].cells[16].innerHTML; 
       
        parceleast=document.getElementById("sample_1").rows[i].cells[17].innerHTML; 
       parcelsouth=document.getElementById("sample_1").rows[i].cells[18].innerHTML; 
       parcelwest=document.getElementById("sample_1").rows[i].cells[19].innerHTML; 
       parcelnorth=document.getElementById("sample_1").rows[i].cells[20].innerHTML; 
       
        parcelconditioncode=document.getElementById("sample_1").rows[i].cells[21].innerHTML; 
       mapnumber=document.getElementById("sample_1").rows[i].cells[22].innerHTML; 
       userightarea=document.getElementById("sample_1").rows[i].cells[23].innerHTML; 
      rownum=document.getElementById("sample_1").rows[i].cells[24].innerHTML;      
     if(document.getElementById("parcelUnitTr").rows.length>1){
      var tbodytr= document.getElementById("parcelUnitTr");     
        var siit=document.getElementById("sample_1").rows[rownum].cells[1].innerHTML;
          for(var t=1;t<tbodytr.rows.length;t++){    
         var sitname=document.getElementById("parcelUnitTr").rows[t].cells[1].innerHTML;
          if(siit==sitname){
            alert("已选择  "+siit+"  坐落，请选择其它。。。");
            return;
          }
         
       }
       }
       $("#parcelUnitTr").append('<tr onclick="GetCell(this)"><td></td><td></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td> <td style="display: none"></td><td style="display: none"></td>  </tr>'); 
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[0].innerHTML=value;

       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[1].innerHTML=sit;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[2].innerHTML=warrantnumber;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[3].innerHTML=realrstateunitnumber;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[4].innerHTML=parcelcode;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[5].innerHTML=parcelarea;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[6].innerHTML=typeofrightid;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[7].innerHTML=districtandcounty;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[8].innerHTML=cadastralarea;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[9].innerHTML=cadastralsubarea;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[10].innerHTML=usename;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[11].innerHTML=rightsettingwayname;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[12].innerHTML=processclassificationid;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[13].innerHTML=landgradeidname;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[14].innerHTML=highbuildinglimit;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[15].innerHTML=buildingdensity;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[16].innerHTML=plotratio;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[17].innerHTML=parceleast;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[18].innerHTML=parcelsouth;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[19].innerHTML=parcelwest;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[20].innerHTML=parcelnorth;
       
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[21].innerHTML=parcelconditioncode;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[22].innerHTML=mapnumber;
       document.getElementById("parcelUnit").rows[document.getElementById("parcelUnit").rows.length-1].cells[23].innerHTML=userightarea;
       
       
         $("#parcelUnitTr tr").click(function() {
		$(this).addClass("on").siblings("tr").removeClass("on");
	});              
     }    
    }     
    if(tag==true){
    
     $.tooltip('选择了'+number+'条，1秒后关闭');
			setTimeout(function(){ 
				var $el = $('.dialog');
				//$el.hDialog('close',{box:'#HBox'},'http://smwell.sinaapp.com/');  //也可以加跳转链接哦~
				$el.hDialog('close',{box:'#HBox'}); 
			},1000);
     }
   
    else if(tag==false){
      $.tooltip('请选择...');
    }
}
  $("#parcelUnitTr tr").click(function() {
		$(this).addClass("on").siblings("tr").removeClass("on");
	});
  var xuhaoremove;
  function GetCell(obj){
   xuhaoremove=$(obj).children().eq(0).text();
   $(".sit").val($(obj).children().eq(1).text());
     // $(".sit").val($(obj).children().eq(1).text());//点击行的左边第1个cell
      $(".warrantnumber").val($(obj).children().eq(2).text());
      $(".realrstateunitnumber").val($(obj).children().eq(3).text());
      $(".parcelcode").val($(obj).children().eq(4).text());   
      
       $(".parcelarea").val($(obj).children().eq(5).text());//点击行的左边第1个cell
      $(".typeofrightid").val($(obj).children().eq(6).text());
      $(".districtandcounty").val($(obj).children().eq(7).text());
      $(".cadastralarea").val($(obj).children().eq(8).text());  
      
       $(".cadastralsubarea").val($(obj).children().eq(9).text());//点击行的左边第1个cell
      $(".usename").val($(obj).children().eq(10).text());
      $(".rightsettingwayname").val($(obj).children().eq(11).text());
      $(".processclassificationid").val($(obj).children().eq(12).text());  
      
       $(".landgradeidname").val($(obj).children().eq(13).text());//点击行的左边第1个cell
      $(".highbuildinglimit").val($(obj).children().eq(14).text());
      $(".buildingdensity").val($(obj).children().eq(15).text());
      $(".plotratio").val($(obj).children().eq(16).text());  
      
       $(".parceleast").val($(obj).children().eq(17).text());//点击行的左边第1个cell
      $(".parcelsouth").val($(obj).children().eq(18).text());
      $(".parcelwest").val($(obj).children().eq(19).text());
      $(".parcelnorth").val($(obj).children().eq(20).text());  
      
       $(".parcelconditioncode").val($(obj).children().eq(21).text());//点击行的左边第1个cell
      $(".mapnumber").val($(obj).children().eq(22).text());
      $(".userightarea").val($(obj).children().eq(23).text());      
  }
function remove(){
  
   $('#parcelUnitTr tr:last').remove();
   	
   

}
  </script>
<script type="text/javascript">
 
</script>
  
</html>
