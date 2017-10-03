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
    
    <title>My JSP 'applicant.jsp' starting page</title>
    
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
   <script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>
<style type="text/css">
 
.on {
	background: #42D0FF;
	color: white;
}
</style>

  </head>
  
  <body>
    	<!-- BEGIN 申请人table-->
						
								<div style="width:25%;height:100%;float:left;">
									<ul style="background-color:#2fade7;" class="breadcrumb">
										<li>申请人列表<span class="divider">|</span><a href="${ctx}/ApplicantController/Applicant.do">刷新</a><li>									
								</ul>
						     		  <div class="form-inline definewidth m20">
		                                                                        姓名： <input style="width:150px;" type="text" name="menuname" id="menuname"
			                         class="abc input-default">
		                            <button onclick="select()" class="btn btn-primary">查询</button>
		
			                         </div>
									<div class="widget-body"
										style="width:auto; height:650px; overflow:scroll;">
										<table class="table table-bordered" id="sample_3">
											<thead>
												<tr>
													<th style="width:150px;">姓名</th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
												</tr>
											</thead>

											<tbody id="applicantMx">
												<c:forEach items="${yw_Applicants}" var="item">
													<tr onclick="GetCell(this)" id="tbodytr">
														<td style="display: none;"  value="">${item.applicantid}</td>
														<td id="applicantName" >${item.applicantname}</td>
														<td style="display: none;">${item.sexid}</td>
														<td style="display: none;">${item.applicationforhumanid}</td>
														<td style="display: none;">${item.applicanttypeid}</td>

														<td style="display: none;">${item.idcardtypeid}</td>
														<td style="display: none;">${item.idcardnumber}</td>
														<td style="display: none;">${item.phonenumber}</td>
														<td style="display: none;">${item.commonwayid}</td>

														<td style="display: none;">${item.address}</td>
														<td style="display: none;">${item.legalrepresentative}</td>
														<td style="display: none;">${item.legalphone}</td>
														<td style="display: none;">${item.countryid}</td>

														<td style="display: none;">${item.provinceid}</td>
														<td style="display: none;">${item.ownedindustryid}</td>
														<td style="display: none;">${item.postalcode}</td>
														<td style="display: none;">${item.workunit}</td>

														<td style="display: none;">${item.email}</td>
														<td style="display: none;">${item.areaofright}</td>
														<td style="display: none;">${item.proportionofrights}</td>
														<td style="display: none;">${item.licenceissuingauthority}</td>

														<td style="display: none;">${item.agency}</td>
														<td style="display: none;">${item.nameofagent}</td>
														<td style="display: none;">${item.agenttelephone}</td>

													</tr>
												</c:forEach>
											</tbody>

										</table>
									</div>
									<!-- END申请人table-->
								</div>
								<!-- BEGIN 申请人详细信息table-->
								<div style="width:75%;float:right;">
										<ul style="background-color:#2fade7;" class="breadcrumb">
										<li>申请人详细信息<span class="divider">|</span></li>									
								</ul>
								
									<table class="table table-hover definewidth m10" id="applicant">
									<input type="hidden" class="applicantId">
										<tr>
											<td class="tableleft">申请人姓名*:</td>
											<td><input class="applicantName" type="text" />
											</td>

											<td>性别*:</td>
											<td><select class="sex"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_Sexs}" var="item">
														<option value="${item.sexid}">${item.sexname}</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr>
											<td class="tableleft">申请人类别*:</td>
											<td><select class="applicationForHuman"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_ApplicationForHumans}" var="item">
														<option value="${item.applicationforhumanid}">${item.applicationforhumanname}</option>
													</c:forEach>
											</select></td>

											<td class="tableleft">申请人类型*:</td>
											<td><select class="applicantType"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_ApplicantTypes}" var="item">
														<option value="${item.applicanttypeid}">${item.applicanttypename}</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr>
											<td>证件种类*:</td>
											<td><select class="IdCardType"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_IdCardTypes}" var="item">
														<option value="${item.idcardtypeid}">${item.idcardtypename}</option>
													</c:forEach>
											</select>
											</td>
											<td>证件号码*:</td>
											<td><input class="IdCardNumber" type="text" />
											</td>
										</tr>
										<tr>
											<td class="tableleft">电话号码：</td>
											<td><input class="phoneNumber" type="text" /></td>
											<td class="tableleft">共有方式*:</td>
											<td><select class="commonWay"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_CommonWays}" var="item">
														<option value="${item.commonwayid}">${item.commonwayname}</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr>
											<td class="tableleft">地址:</td>
											<td><input colspan="4" style="width:100%;"
												class="address" type="text" /></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td class="tableleft">法定代表人:</td>
											<td><input class="legalRepresentative" type="text" /></td>
											<td>法定电话号码:</td>
											<td><input class="legalPhone" type="text" /></td>
										</tr>
										<tr>
											<td class="tableleft">国家/地区:</td>
											<td><select class="country"
												value="this.options[this.options.selectedIndex].value"
												onchange="changetip(this.options[this.options.selectedIndex].value)">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_Countries}" var="item">
														<option value="${item.countryid}">${item.countryname}</option>
													</c:forEach>
											</select>
											</td>
											<td>户籍所在省市:</td>
											<td><select class="province" id="province"
												value="this.options[this.options.selectedIndex].value">
													<option value="0"></option>

											</select>
											</td>
										</tr>
										<tr>
											<td class="tableleft">所属行业:</td>
											<td><select class="ownedIndustry"
												value="this.options[this.options.selectedIndex].value">
													<option value="0">--请选择--</option>
													<c:forEach items="${bs_OwnedIndustries}" var="item">
														<option value="${item.ownedindustryid}">${item.ownedindustryname}</option>
													</c:forEach>
											</select>
											</td>
											<td>邮政编码:</td>
											<td><input class="postalcode" type="text" /></td>

										</tr>
										<tr>
											<td class="tableleft">工作单位:</td>
											<td><input class="workUnit" type="text" /></td>
											<td>电子邮件:</td>
											<td><input class="email" type="text" /></td>
										</tr>

										<tr>
											<td class="tableleft">权利面积:</td>
											<td><input class="areaOfRight" type="text" /></td>
											<td>权利比例:</td>
											<td><input class="proportionOfRights" type="text" /></td>
										</tr>

										<tr>
											<td class="tableleft">发证机关:</td>
											<td><input class="licenceIssuingAuthority" type="text" />
											</td>
											<td>代理机构名称:</td>
											<td><input class="agency" type="text" /></td>
										</tr>

										<tr>
											<td class="tableleft">代理人姓名:</td>
											<td><input class="nameOfAgent" type="text" /></td>
											<td>代理人电话:</td>
											<td><input class="agentTelephone" type="text" /></td>
										</tr>
										<tr>
											<td class="tableleft"></td>
											<td>
												<button class="btn btn-large btn-inverse"
													onclick="submitBtn();return false;">新增</button>
												&nbsp;&nbsp;
												<button type="button" class="btn btn-large btn-primary"
												onclick="submitUpdate();return false;"	name="backid" id="update">更新</button>
											</td>
											<td>
												<a class="demo48"><button style="display:inline-block;" type="button" class="btn btn-large btn-danger"
													>删除</button></a>
												<button type="button" class="btn btn-large btn-info"
													onclick="empty()">清空</button>
											</td>
										</tr>
									</table>

								</div>
								<!-- end 申请人详细信息table-->
								 <script type="text/javascript" src="hdialog/js/jquery-1.9.1.min.js"></script>
									<script src="hdialog/js/jquery.hDialog.min.js"></script>
							
  </body>
  <script type="text/javascript">
   $(function(){
      var $el = $('.dialog'); 
	//confirm
	$('.demo48').click(function(){
	    if($('.applicantId').val()=="" || $('.applicantId').val()==null)
	    {
	         $.tooltip('请选择申请人再删除...');	       		
		}
		else{
		$.dialog('confirm','提示','您确认要删除么？',0,function(){ 
			$.tooltip('删除成功～',1000,true,function(){ 
				//$.closeDialog(); 
				$.closeDialog(function(){ 
				var applicantid=$('.applicantId').val();
				document.location="<%=path%>/ApplicantController/deleteApplicant.do?applicantid="+applicantid;
				 }); 
			});
		});}
	});
	
	$.goTop();	
});
  
  window.onload=function(){//用window的onload事件，窗体加载完毕的时候
  $('#update').css("display", "none");
 // $('#update').attr('disabled',"true");//添加disabled属性 
 // $('#update').css("background-color", "#C2BAC0");
}
  
  $("#applicantMx tr").click(function() {
		$(this).addClass("on").siblings("tr").removeClass("on");
	});
  </script>
  
  <script type="text/javascript">

	
	function GetCell(obj) {
	      $('#update').css("display", "inline-block");	      
	      $(".applicantId").val($(obj).children().eq(0).text());//点击行的左边第1个cell
          $(".applicantName").val($(obj).children().eq(1).text());
          $(".sex").val($(obj).children().eq(2).text());$(".applicationForHuman").val($(obj).children().eq(3).text());
          $(".applicantType").val($(obj).children().eq(4).text());$(".IdCardType").val($(obj).children().eq(5).text());
          $(".IdCardNumber").val($(obj).children().eq(6).text());$(".phoneNumber").val($(obj).children().eq(7).text());
          $(".commonWay").val($(obj).children().eq(8).text());$(".address").val($(obj).children().eq(9).text());
          
          $(".legalRepresentative").val($(obj).children().eq(10).text());$(".legalPhone").val($(obj).children().eq(11).text());
          $(".country").val($(obj).children().eq(12).text());$(".province").val($(obj).children().eq(13).text());
          $(".ownedIndustry").val($(obj).children().eq(14).text());$(".postalcode").val($(obj).children().eq(15).text());
          $(".workUnit").val($(obj).children().eq(16).text());$(".email").val($(obj).children().eq(17).text());
             
           $(".areaOfRight").val($(obj).children().eq(18).text());$(".proportionOfRights").val($(obj).children().eq(19).text());
          $(".licenceIssuingAuthority").val($(obj).children().eq(20).text());$(".agency").val($(obj).children().eq(21).text());
          $(".nameOfAgent").val($(obj).children().eq(22).text());$(".agentTelephone").val($(obj).children().eq(23).text());
      
	}
	 function changetip(countryid){    
       $.ajax({     
          type:"post",
          url: "<%=path%>/DataBaseController/selectProvince.do?countryid="+countryid,   
          dataType:"json",
          success: function(jsonArray){       
                    var str = "";  
                    $("#province").html("");  
                      for ( var i = 0; i < jsonArray.length; i++) {  
                                str += "<option value='" + jsonArray[i].provinceid  
                                        + "'>" + jsonArray[i].provincename  
                                        + "</option>";  
                            }  
                          
                           $("#province").append(str);                            
            }
       })
    }    
    
    
	 function submitBtn(){
   //提交并验证表单     
		var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
		var PhoneReg = /^0{0,1}(13[0-9]|15[0-9]|153|156|18[7-9])[0-9]{8}$/ ; //手机正则
		var phoneNumber = $('.phoneNumber');
		var applicantName=$('.applicantName');
		var sex=$('.sex');
		var applicationForHuman=$('.applicationForHuman');
		var applicantType=$('.applicantType');
		var IdCardType=$('.IdCardType');
		var IdCardNumber=$('.IdCardNumber');
		var commonWay=$('.commonWay');
		var address=$('.address');
		var legalRepresentative=$('.legalRepresentative');
		var legalPhone=$('.legalPhone');
		var country=$('.country');
		var province=$('.province');
		var ownedIndustry=$('.ownedIndustry');
		var postalcode=$('.postalcode');
		var workUnit=$('.workUnit');
		var email=$('.email');
		var areaOfRight=$('.areaOfRight');
		var proportionOfRights=$('.proportionOfRights');
		var licenceIssuingAuthority=$('.licenceIssuingAuthority');
		var agency=$('.agency');
		var nameOfAgent=$('.nameOfAgent');
		var agentTelephone=$('.agentTelephone');
		if(applicantName.val()==""){
		 $.tooltip('申请人姓名为必填项...'); applicantName.focus();
		}		
	   else if(sex.val()=="0"){
		 $.tooltip('请选性别...'); sex.focus();
		}
		  else if(applicationForHuman.val()=="0"){
		 $.tooltip('请填选申请人类别...'); applicationForHuman.focus();
		}	
		  else if(applicantType.val()=="0"){
		 $.tooltip('请填选申请人类型...'); applicantType.focus();
		}
		  else if(IdCardType.val()=="0"){
		 $.tooltip('请填选证件种类...'); IdCardType.focus();
		}
		 else if(IdCardNumber.val()==""){
		 $.tooltip('请填选证件号码...'); IdCardNumber.focus();
		}	
					
	    else if(!PhoneReg.test(phoneNumber.val())){
		   $.tooltip('手机格式错咯...'); phoneNumber.focus();
		}
		  else if(commonWay.val()=="0"){
		 $.tooltip('请填选共有方式...'); commonWay.focus();
		}
		 else if(country.val()=="0"){
		 $.tooltip('请填选国家...'); country.focus();
		}	
		 else if(province.val()=="0"){
		 $.tooltip('请填选省份...'); province.focus();
		}	
		 else if(ownedIndustry.val()=="0"){
		 $.tooltip('请填选所属行业...'); ownedIndustry.focus();
		}							
		else{				 		  		   		    
		  $.tooltip('新增成功,2秒后刷新',2000,true,function(){
		 
		  $.ajax({
		     url : "${ctx}/ApplicantController/insertApplicant.do?applicantName="+applicantName.val()+"&sex="+sex.val()+"&applicationForHuman="+applicationForHuman.val() +"&applicantType="+applicantType.val()+"&IdCardType="+IdCardType.val()+"&IdCardNumber="+IdCardNumber.val()+"&phoneNumber="+phoneNumber.val()+"&commonWay="+commonWay.val() +"&address="+address.val()+"&legalRepresentative="+legalRepresentative.val()+"&legalPhone="+legalPhone.val() +"&country="+country.val()+"&province="+province.val()+"&ownedIndustry="+ownedIndustry.val()+"&postalcode="+postalcode.val()+"&workUnit="+workUnit.val()+"&email="+email.val()+"&areaOfRight="+areaOfRight.val()+"&proportionOfRights="+proportionOfRights.val()+"&licenceIssuingAuthority="+licenceIssuingAuthority.val()+"&agency="+agency.val()+"&nameOfAgent="+nameOfAgent.val()+"&agentTelephone="+agentTelephone.val(),	    
		     type:"post",	
		     dataType:"json",
		     success:function(jsonArray){
		      $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#applicantName").text(jsonArray[i].applicantname);
		          row.appendTo("#sample_3");//添加到模板的容器中		
		          
		     }
		     $('#applicantMx tr:first').remove();//移除第一行          
		     	$("#applicantMx tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
		     	 	     	 
		    }   
		  })		  
		  });  		  		  		  
		  		  		  		 		  
		}		
	};
	
	//申请人清空
	function empty(){
	
	  $("#applicant input").val("");
	  $("#applicant select").val("0");
	}
	function submitUpdate(){
	  //提交并验证表单     
		var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
		var PhoneReg = /^0{0,1}(13[0-9]|15[0-9]|153|156|18[7-9])[0-9]{8}$/ ; //手机正则
		var applicantid=$('.applicantId');
		var phoneNumber = $('.phoneNumber');
		var applicantName=$('.applicantName');
		var sex=$('.sex');
		var applicationForHuman=$('.applicationForHuman');
		var applicantType=$('.applicantType');
		var IdCardType=$('.IdCardType');
		var IdCardNumber=$('.IdCardNumber');
		var commonWay=$('.commonWay');
		var address=$('.address');
		var legalRepresentative=$('.legalRepresentative');
		var legalPhone=$('.legalPhone');
		var country=$('.country');
		var province=$('.province');
		var ownedIndustry=$('.ownedIndustry');
		var postalcode=$('.postalcode');
		var workUnit=$('.workUnit');
		var email=$('.email');
		var areaOfRight=$('.areaOfRight');
		var proportionOfRights=$('.proportionOfRights');
		var licenceIssuingAuthority=$('.licenceIssuingAuthority');
		var agency=$('.agency');
		var nameOfAgent=$('.nameOfAgent');
		var agentTelephone=$('.agentTelephone');
		if(applicantName.val()==""){
		 $.tooltip('申请人姓名为必填项...'); applicantName.focus();
		}		
	   else if(sex.val()=="0"){
		 $.tooltip('请选性别...'); sex.focus();
		}
		  else if(applicationForHuman.val()=="0"){
		 $.tooltip('请填选申请人类别...'); applicationForHuman.focus();
		}	
		  else if(applicantType.val()=="0"){
		 $.tooltip('请填选申请人类型...'); applicantType.focus();
		}
		  else if(IdCardType.val()=="0"){
		 $.tooltip('请填选证件种类...'); IdCardType.focus();
		}
		 else if(IdCardNumber.val()==""){
		 $.tooltip('请填选证件号码...'); IdCardNumber.focus();
		}	
					
	    else if(!PhoneReg.test(phoneNumber.val())){
		   $.tooltip('手机格式错咯...'); phoneNumber.focus();
		}
		  else if(commonWay.val()=="0"){
		 $.tooltip('请填选共有方式...'); commonWay.focus();
		}
		 else if(country.val()=="0"){
		 $.tooltip('请填选国家...'); country.focus();
		}	
		 else if(province.val()=="0"){
		 $.tooltip('请填选省份...'); province.focus();
		}	
		 else if(ownedIndustry.val()=="0"){
		 $.tooltip('请填选所属行业...'); ownedIndustry.focus();
		}							
		else{				 		  		   		    		  		 
		$.dialog('confirm','提示','您确认要修改么？',0,function(){ 
			$.tooltip('修改成功～',2000,true,function(){ 
				//$.closeDialog(); 
				$.closeDialog(function(){    document.location="<%=path%>/ApplicantController/updateApplicant.do?applicantName="+applicantName.val()+"&sex="+sex.val()+"&applicationForHuman="+applicationForHuman.val() +"&applicantType="+applicantType.val()+"&IdCardType="+IdCardType.val()+"&IdCardNumber="+IdCardNumber.val()+"&phoneNumber="+phoneNumber.val()+"&commonWay="+commonWay.val() +"&address="+address.val()+"&legalRepresentative="+legalRepresentative.val()+"&legalPhone="+legalPhone.val() +"&country="+country.val()+"&province="+province.val()+"&ownedIndustry="+ownedIndustry.val()+"&postalcode="+postalcode.val()+"&workUnit="+workUnit.val()+"&email="+email.val()+"&areaOfRight="+areaOfRight.val()+"&proportionOfRights="+proportionOfRights.val()+"&licenceIssuingAuthority="+licenceIssuingAuthority.val()+"&agency="+agency.val()+"&nameOfAgent="+nameOfAgent.val()+"&agentTelephone="+agentTelephone.val()+"&applicantid="+applicantid.val();   
 }); 
			});
		});			  				  				  		  		  		  		  		  		 		  
		}		
	}
	
	 function select(){
	
		      var menuname=$('#menuname').val();
		
		      window.location="${ctx}/ApplicantController/selectMhApplicant.do?menuname="+menuname;			
		   }
</script>
</html>
