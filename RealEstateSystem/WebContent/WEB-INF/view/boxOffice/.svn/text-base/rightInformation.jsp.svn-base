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

<title>My JSP 'rightInformation.jsp' starting page</title>

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
<script language="javascript" type="text/javascript"
	src="My97DatePicker/WdatePicker.js"></script>
	<!--弹出层  -->
<link rel="stylesheet" href="hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="hdialog/css/animate.css" type="text/css"></link>
<script type="text/javascript" src="hdialog/js/jquery-1.9.1.min.js"></script>
<style type="text/css">
 .on {
	background: #42D0FF;
	color: white;
}
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
		
	<div style="width:25%;height:100%;float:left;">
		<ul style="background-color:#2fade7;" class="breadcrumb">
			<li>宗地单元列表<span class="divider">|</span>
			</li>
		</ul>

		<div class="widget-body"
			style="width:auto; height:650px; overflow:scroll;">
			<table class="table table-bordered" id="">
				<thead>
					<tr>
						<th style="display: none;">id</th>
						<th style="width:150px;">宗地单元</th>
						<th style="display: none;">权利类型</th>
						<th style="display: none;">宗地面积</th>
						<th style="display: none;">用途</th>
						<th style="display: none;">权利设定方式</th>
						<th style="display: none;">权利类型</th>
						<th style="display: none;">土地等级</th>
						<th style="display: none;">建筑限高</th>
						<th style="display: none;">建筑密度</th>
						<th style="display: none;">容积率</th>
					</tr>
				</thead>

				<tbody id="parcelUnitTr">
					<c:forEach items="${yw_ParcelUnits}" var="item">
						<tr onclick="getCell(this)">
							<td style="display: none;">${item.parcelunitid}</td>
							<td>${item.sit}</td>
							<td style="display: none;">${item.typeofrightid}</td>
							<td style="display: none;">${item.parcelarea}</td>
							<td style="display: none;">${item.usename}</td>
							<td style="display: none;">${item.rightsettingwayname}</td>
							<td style="display: none;">${item.processclassificationid}</td>
							<td style="display: none;">${item.landgradeidname}</td>
							<td style="display: none;">${item.highbuildinglimit}</td>
							<td style="display: none;">${item.buildingdensity}</td>
							<td style="display: none;">${item.plotratio}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
		<!-- END宗地单元table-->
	</div>
	<!-- begin宗地单元详细信息列表目录-->
	<div style="width:75%;float:right;">
		<ul style="background-color:#2fade7;" class="breadcrumb">
			<li>宗地单元详细信息<span class="divider">|</span>
			</li>
		</ul>

		<h5 style="color:red;">宗地信息:</h5>
		<table class="table table-hover definewidth m10">
		<input type="hidden" class="id">
	
			<tr>
				<td class="tableleft">坐落:</td>
				<td><input type="button" class="sit" /></td>

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
				<td>宗地面积*:</td>
				<td><input type="button" class="parcelarea" />
				</td>
				<td>用途*:</td>
				<td><input type="button" class="usename" />
				</td>
			</tr>
			<tr>
				<td class="tableleft">权利设定方式:</td>
				<td><input type="button" class="rightsettingwayname" />
				</td>
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
				<td><input type="button" class="landgradeidname" />
				</td>
				<td>建筑限高:</td>
				<td><input type="button" class="highbuildinglimit" />
				</td>
			</tr>
			<tr>
				<td class="tableleft">建筑密度:</td>
				<td><input type="button" class="buildingdensity" />
				</td>
				<td>容积率:</td>
				<td><input type="button" class="plotratio" />
				</td>
			</tr>
		</table>

		<h5 style="color:red;">权利信息:</h5>
		<form action="${ctx}/RightInformationController/InsertRightInformation.do" method="post">
		<table class="table table-hover definewidth m10">
		<input type="hidden" id="ParcelUnitId" name="parcelunitid">
		<input type="hidden" id="applicantid" name="applicantid">
			<tr>
				<td class="tableleft">土地使用权起始时间:</td>
				<td><input type="text" id="startingTime" name="startingtime"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" />
					 <br/><span class="spa spa1"></span>
					</td>

				<td>土地使用权结束时间:</td>
				<td><input onchange="change()" type="text" id="endTime" name="endtime"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" />
					<br/><span class="spa spa2"></span></td>
			</tr>
			<tr>
				<td>取得价格(元):</td>
				<td><input type="text" id="obtainPrice" name="obtainprice" /><br/><span class="spa spa3"></span></td>
				<td>土地使用权人:</td>
				<td><input type="text" id="landUseRights" name="landuserights" /><br/><span class="spa spa4"></span></td>
			</tr>
			<tr>
				<td class="tableleft">证书板式*:</td>
				<td><select name="certificateboardid"
					value="this.options[this.options.selectedIndex].value" id="certificateboardid">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_CertificateBoards}" var="item">
							<option value="${item.certificateboardid}">${item.certificateboardname}</option>
						</c:forEach>
				</select>
				<br/><span class="spa spa5"></span></td>
				<td>特征方式*:</td>
				<td><select name="characteristicmethodid"
					value="this.options[this.options.selectedIndex].value" id="characteristicmethodid">
						<option value="0">--请选择--</option>
						<c:forEach items="${bs_CharacteristicMethods}" var="item">
							<option value="${item.characteristicmethodid}">${item.characteristicmethodname}</option>
						</c:forEach>
				</select><br/><span class="spa spa6"></span>
				</td>
			</tr>
			<tr>
				<td class="tableleft">登记原因:</td>
				<td colspan="3"><textarea style="width:630px;"
						id="registrationreason" name="registrationreason"></textarea></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="tableleft">附记:</td>
				<td colspan="3"><textarea style="width:630px;"
						id="projectnotes" name="excursus"></textarea></td>
				<td></td>
				<td></td>
			</tr>

		</table>
	
		<div style="float:right;left: -40px;position: relative;">			
			&nbsp;&nbsp;			
			<a><button id="subm" type="submit" class="btn btn-primary" name="backid"
				>保存</button></a>
		</div>		
			</form>
			<div style="float:right;left: -40px;position: relative;">
			<a class="bounceIn RegistrationReason demo"><button class="btn btn-info"><i class="icon-check"></i>登记原因模板</button></a>
			<a href="${ctx}/RightInformationController/RightInformation.do"><button
				class="btn btn-info">
				<i class="icon-refresh"></i>刷新
			</button>
		</a>
			</div>	
		<h5 style="color:red;">权利人列表:</h5>
		<table class="table table-bordered" id="applicant">
			<thead>
				<tr>
				    <th style="display: none">id</th>
					<th>权利人姓名</th>
					<th>权利人类型</th>
					<th>权利人证件种类</th>
					<th>权利人证件号码</th>
					<th>共有方式</th>
					<th>共有比例</th>
				</tr>
			</thead>
			<tbody id="applicantTr">
					<tr onclick="GetCell(this)">
				</tr>	
			</tbody>

		</table>
		<div style="float:right;left: -40px;position: relative;">
		
			<a class="bounceIn dialog demo6"><button class="btn btn-inverse">添加</button></a>
			&nbsp;&nbsp;
			<a onclick="remove()"><button type="button" class="btn btn-primary" name="backid"
				id="backid">移除</button></a>
		</div>
	</div>
	<!-- end宗地单元详细信息列表目录-->
	</div>
	
	<div id="HBox" style="width: 800px;">
		
	<div class="widget-body"
					style="width:auto; height:300px; overflow:scroll;">
				<table class="table table-striped table-bordered" id="sample_1">
						<thead>
							<tr>
								<th style="width:8px;">选择
								</th>
								<th class="hidden-phone">权利人姓名</th>
								<th class="hidden-phone">权利人类型</th>
								<th class="hidden-phone">权利人证件种类</th>
								<th class="hidden-phone">证件号码</th>
								<th class="hidden-phone">共有方式</th>
								<th class="hidden-phone">共有比例</th>
								<th style="display: none;" class="hidden-phone">序号</th>
								</tr>
						</thead>
						<tbody>
							<c:forEach items="${yw_Applicants}" var="item">
								<tr class="odd gradeX">
									<td><input type="checkbox" name="applicantId" class="checkboxes" value="${item.applicantid}"/>					
									</td>
									<td>${item.applicantname}</td>
									<td>${item.applicationforhumanname}</td>																			
									<td>${item.idcardtypename}</td>									
									<td>${item.idcardnumber}</td>																			
									<td>${item.commonwayname}</td>										
									<td>${item.proportionofrights}</td>
									<td style="display: none;">${item.rownum}</td>	
							</tr>
							</c:forEach>
						</tbody>
					</table>	
		
			</div>	
			<a onclick="selectApplicant()"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>选择
			</button>
		
	</div>
	
	<div id="insert">
		
		<a onclick="edit()"><button
				class="btn btn-info">
				<i class="icon-edit"></i>编辑
			</button>
		</a> &nbsp;&nbsp;
			<a onclick="addTable()"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>新增
			</button>
		</a>
		<button type="button" class="btn btn-warning"
			onclick="Delete()">
			<i class="icon-trash"></i>删除
		</button>
		<a onclick="selected()"><button type="button" class="btn btn-danger">			
			<i class="icon-ok"></i>选定
		</button></a>
	 <input type="text" name="menuname" id="menuname"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<a onclick="select()"><button type="button" class="btn btn-primary"><i class="icon-search"></i>查询</button></a>	
		<div style="width:700px; height:300px; overflow:scroll;">		
				<table class="table table-bordered" id="ReasonTemplate" >
					<thead>
						<tr>		
						   
						    <th>序号</th>				
							<th>登记原因</th>		
						    <th style="display: none;">id</th>					
						</tr>
					</thead>
					<tbody id="reasontemplatenameTr">	
								<c:forEach items="${bs_ReasonTemplates}" var="item" varStatus="number">							
							<tr class="odd gradeX" id="tbodytr" onclick="GetCell(this)">				   
							     <td id="count">${number.count}</td>							
								<td id="reasontemplatename">${item.reasontemplatename}</td>
								 <td id="reasontemplateid" style="display: none;">${item.reasontemplateid}</td>
							</tr>	
					</c:forEach>	
												
					</tbody>
				</table>		
				</div>	 
	</div>   
	<script>
	    /*********************** 提交验证 ***************************/
			$("#subm").click(function(){			
			if($(".id").val() != "" || $(".id").val() !=null) {
               $("#ParcelUnitId").val($(".id").val());    
               }         	        	
               if (document.getElementById("applicantTr").rows.length > 1) {
				var applicants=document.getElementById("applicantTr").rows.length;		
						
				var applicantID="";		
				for(var i=1;i<applicants;i++){
				    applicantID+=document.getElementById("applicant").rows[i+1].cells[0].innerHTML+";";		   
				}
		   		  $("#applicantid").val(applicantID);
		  	 }
							if ($("#startingTime").val() != "") {
								$(".spa1").text('');
							}
							if ($("#endTime").val() != "") {
							   
								$(".spa2").text('');
							}
							if ($("#obtainPrice").val() != "") {
								$(".spa3").text('');
							}
							if ($("#landUseRights").val() != "") {
								$(".spa4").text('');
							}
							if ($("#certificateboardid").val() != 0) {
								$(".spa5").text('');
							}
							if ($("#characteristicmethodid").val() != 0) {
								$(".spa6").text('');
							}
							if ($("#startingTime").val() != ""
									&& $("#endTime").val() != ""
									&& $("#obtainPrice").val() != ""
									&& $("#landUseRights").val() != ""
									&& $("#certificateboardid").val() != 0
									&& $("#characteristicmethodid").val() != 0) {
								
								return true;
							} else {
							if ($(".id").val() == "" || $(".id").val() ==null) {
									
									 $.tooltip('请在左边选择宗地单元...'); 									
								}
								if (document.getElementById("applicantTr").rows.length == 1) {
								
                                       $.tooltip('还没有添加权利人呢...');
								}
								if ($("#startingTime").val() == "") {
									$(".spa1").text('请填写土地使用权起始时间')
								}
								if ($("#endTime").val() == "") {
									$(".spa2").text('请填写土地使用权结束时间')
								}
								if ($("#obtainPrice").val() == "") {
									$(".spa3").text('请填写取得价格')
								}
								if ($("#landUseRights").val() == "") {
									$(".spa4").text('请填写土地所有权人')
								}
								if ($("#certificateboardid").val() == "0") {
									$(".spa5").text('请选择证书板式')
								}
								if ($("#characteristicmethodid").val() == "0") {
									$(".spa6").text('请选择特征方式')
								}

								return false;
							}
						})
	</script>
		<script src="Js/js/jquery.blockui.js"></script>

	<script type="text/javascript"
		src="assets/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
	<!--common script for all pages-->
	<script src="Js/js/common-scripts.js"></script>
	<!--script for this page only-->
	<script src="Js/js/dynamic-table.js"></script>
	<script type="text/javascript" src="Js/bootstrap.js"></script>
	<script src="hdialog/js/jquery.hDialog.js"></script>	
</body>
<script>

   
</script>
<script>

   $(function(){
      var $el = $('.dialog'); 
      var el=$('.RegistrationReason');
      
	$el.hDialog({box: '#HBox'}); 
	el.hDialog({box: '#insert'}); 
	//带标题的
	$('.demo6').hDialog({title: '信息',height: 300});
	$('.demo').hDialog({title: '信息',height: 300});	
	//改变宽和高		
	$('.demo6').hDialog({width:808,height: 400});
	$('.demo').hDialog({width:808,height: 400});	
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});
	$('.demoo').hDialog({modalHide: false});		
	//返回顶部
	$.goTop();	
});

   function getCell(obj){
       $(".id").val($(obj).children().eq(0).text());
        $(".sit").val($(obj).children().eq(1).text());//点击行的左边第1个cell  
        $(".typeofrightid").val($(obj).children().eq(2).text());
       $(".parcelarea").val($(obj).children().eq(3).text());
      $(".usename").val($(obj).children().eq(4).text());
      $(".rightsettingwayname").val($(obj).children().eq(5).text());
      $(".processclassificationid").val($(obj).children().eq(6).text());       
       $(".landgradeidname").val($(obj).children().eq(7).text());
      $(".highbuildinglimit").val($(obj).children().eq(8).text());
      $(".buildingdensity").val($(obj).children().eq(9).text());
      $(".plotratio").val($(obj).children().eq(10).text());  
   }
   
    $("#parcelUnitTr tr").click(function() {
		$(this).addClass("on").siblings("tr").removeClass("on");
	});
	
	
	function selectApplicant(){
	      var applicantid = document.getElementsByName("applicantId");
    var value;
    var number=0;var rownum;
    var i=0;var tag=false;
   var id; var applicantname; var applicationforhumanname;var idcardtypename;var idcardnumber;var commonwayname;var proportionofrights;

    
    for(checkbox in applicantid){
      i++;
     if(applicantid[checkbox].checked){
        tag=true;
      
       value=applicantid[checkbox].value;
      
         number++;           
       applicantname=document.getElementById("sample_1").rows[i].cells[1].innerHTML; 
        applicationforhumanname=document.getElementById("sample_1").rows[i].cells[2].innerHTML; 
       idcardtypename=document.getElementById("sample_1").rows[i].cells[3].innerHTML; 
       idcardnumber=document.getElementById("sample_1").rows[i].cells[4].innerHTML;      
        commonwayname=document.getElementById("sample_1").rows[i].cells[5].innerHTML; 
       proportionofrights=document.getElementById("sample_1").rows[i].cells[6].innerHTML; 
       rownum=document.getElementById("sample_1").rows[i].cells[7].innerHTML; 
          
      if(document.getElementById("applicantTr").rows.length>1){
      var tbodytr= document.getElementById("applicantTr");     
        var siit=document.getElementById("sample_1").rows[rownum].cells[1].innerHTML;
          for(var t=1;t<tbodytr.rows.length;t++){    
         var sitname=document.getElementById("applicantTr").rows[t].cells[1].innerHTML;
          if(siit==sitname){
            alert("已选择  "+siit+"  ，请选择其它。。。");
            return;
          }
         
       }
       }
       $("#applicantTr").append('<tr onclick="GetCell(this)"><td style="display: none"></td><td></td><td></td><td></td> <td></td><td></td><td></td></tr>');
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[0].innerHTML=value;

       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[1].innerHTML=applicantname;
       
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[2].innerHTML=applicationforhumanname;
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[3].innerHTML=idcardtypename;
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[4].innerHTML=idcardnumber;
       
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[5].innerHTML=commonwayname;
       document.getElementById("applicant").rows[document.getElementById("applicant").rows.length-1].cells[6].innerHTML=proportionofrights;
       
        $("#applicantTr tr").click(function() {
		$(this).addClass("on").siblings("tr").removeClass("on");
	});              
     }    
    }     
    if(tag==true){
       $.tooltip('选择了'+number+'条，2秒后关闭！', 2000, true);  
			setTimeout(function(){ 
				var $el = $('.dialog');
				//$el.hDialog('close',{box:'#HBox'},'http://smwell.sinaapp.com/');  //也可以加跳转链接哦~
				$el.hDialog('close',{box:'#HBox'}); 
			},2000);
     }
         
    else if(tag==false){
   $.tooltip('请选择。。。');
    }
	}
	
	function remove(){
	if(document.getElementById("applicantTr").rows.length==0){
	   $.tooltip('还没有添加权利人呢,你移除谁？...'); 
	}
	else{
	   $('#applicantTr tr:last').remove();
	}
	}
	
	function saveRightInformation(){
	  
	   if($(".sit").val()=="" || $(".sit").val()==null){
	     $.tooltip('请在左边选择宗地单元...'); 
	   return;
	   }	   
	   if(document.getElementById("applicantTr").rows.length==0){
	   $.tooltip('还没有添加权利人呢...'); 
	   return;
	}
	
	
	}
	 function addTable(){
   var cell=document.getElementById("ReasonTemplate").rows[document.getElementById("ReasonTemplate").rows.length-1].cells[1].innerHTML;
    var rownumber=document.getElementById("reasontemplatenameTr").rows.length;   
        rownumber++;
         if(document.getElementById("ReasonTemplate").rows[document.getElementById("ReasonTemplate").rows.length-1].cells[1].innerHTML==""){
              $.tooltip('请先保存第'+(rownumber-1)+'行'); 
             return;
         }     
         var innerTD = "<tr><td></td><td  id='Td2' onDblClick='editCell(this)'></td></tr>"
        $(innerTD).appendTo("#ReasonTemplate");
        document.getElementById("ReasonTemplate").rows[document.getElementById("ReasonTemplate").rows.length-1].cells[0].innerHTML=rownumber;              
      }
       $("#reasontemplatenameTr tr").click(function() {
	$(this).addClass("on").siblings("tr").removeClass("on");
	});
       function editCell(obj){
    if(obj.innerText==""){
      obj.innerHTML="<input value='' onblur='insert(this.value)'>";               
//插入输入框，失去焦点时更新
    }else{
      obj.innerHTML="<input value="+obj.innerText+ " onblur='insert(this.value)'>";//插入文本框，且指定内容    
    }
}
function insert(reasontemplatename){     
     $.tooltip('保存成功,2秒后刷新',2000,true,function(){		 
		  $.ajax({
		     url : "${ctx}/RightInformationController/insertReasonTemplate.do?reasontemplatename="+reasontemplatename,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		     $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#reasontemplatename").text(jsonArray[i].reasontemplatename);	
		          row.find("#reasontemplateid").text(jsonArray[i].reasontemplateid);		          
		          row.appendTo("#ReasonTemplate");//添加到模板的容器中		
		          
		     }
		     $('#reasontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#reasontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
      
		     	 	     	 
		    }   
		  })		  
		  });  		  		  

}
  var id=0;
  var reasontemplateid=0;
  var reasontemplateId=0;
   function GetCell(obj){
    id=$(obj).children().eq(0).text();
     
   }
    function edit(){
   if(id==0){
      $.tooltip('请选择要修改的一行编辑...');
      return;
   }
    var editcell=document.getElementById("ReasonTemplate").rows[id].cells[1]; 
        reasontemplateid=document.getElementById("ReasonTemplate").rows[id].cells[2].innerHTML; 
       
          if(editcell.innerText==""){
      editcell.innerHTML="<input value='' onblur='update(this.value)'>";               
//插入输入框，失去焦点时更新
    }
    else{
       editcell.innerHTML="<input style='width:500px;' value="+editcell.innerHTML+" onblur='update(this.value)'>";    
     }
   }
   
   function update(txt){
   $.tooltip('修改成功,2秒后刷新',2000,true,function(){		 
		  $.ajax({
		     url : "${ctx}/RightInformationController/updateReasonTemplate.do?reasontemplatename="+txt+"&reasontemplateid="+reasontemplateid,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		     		  $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#reasontemplatename").text(jsonArray[i].reasontemplatename);	
		          row.find("#reasontemplateid").text(jsonArray[i].reasontemplateid);		          
		          row.appendTo("#ReasonTemplate");//添加到模板的容器中		
		          
		     }
		     $('#reasontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#reasontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
          	 	     	 
		    }   
		  })		  
		  });  		  		  
   }
   
   function selected(){
    if(id==0){
      $.tooltip('请选定一条数据...');
      return;
   }
   else{
    var selectcell=document.getElementById("ReasonTemplate").rows[id].cells[1].innerHTML; 
    
      $(registrationreason).val(selectcell);
      $.tooltip('提交成功，1秒后自动关闭',1000,true);
			setTimeout(function(){ 
			var $el = $('.dialog');
				//$el.hDialog('close',{box:'#HBox'},'http://smwell.sinaapp.com/');  //也可以加跳转链接哦~
				$el.hDialog('close',{box:'#insert'}); 
			},1000);
   }
   }
   
    function select(){
      var menuname=$('#menuname').val();   
      $.ajax({
		     url : "${ctx}/RightInformationController/selectReasonTemplate.do?reasontemplatename="+menuname,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		    	  $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#reasontemplatename").text(jsonArray[i].reasontemplatename);	
		          row.find("#reasontemplateid").text(jsonArray[i].reasontemplateid);		          
		          row.appendTo("#ReasonTemplate");//添加到模板的容器中		
		          
		     }
		     $('#reasontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#reasontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
      	     	 	     	 
		    }   
		  })		
	
   }
   
   function Delete(){
        if(id==0){
      $.tooltip('请选定一条数据进行删除...');
      return;
   }else{
   var Reasonid=document.getElementById("ReasonTemplate").rows[id].cells[2].innerHTML; 
  
     $.tooltip('删除成功,2秒后刷新',2000,true,function(){		 
		  $.ajax({
		 
		     url : "${ctx}/RightInformationController/deleteReasonTemplate.do?reasontemplateid="+Reasonid,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		     		  $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#reasontemplatename").text(jsonArray[i].reasontemplatename);	
		          row.find("#reasontemplateid").text(jsonArray[i].reasontemplateid);		          
		          row.appendTo("#ReasonTemplate");//添加到模板的容器中		
		          
		     }
		     $('#reasontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#reasontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
         	 	     	 
		    }   
		  })		  
		  });  
   }
       
   }
   
      function change() {     
            var startingTime = $('#startingTime').val();
            var endTime = $('#endTime').val();
            var start = new Date(startingTime.replace("-", "/").replace("-", "/"));
            var end = new Date(endTime.replace("-", "/").replace("-", "/"));
            if (end < start) {
              $.tooltip('结束日期不能小于开始日期！');
            
                $('#endTime').val('');
                return false;
            }
          
            else {
                return true;
            }

        }
             
  </script>
</html>
