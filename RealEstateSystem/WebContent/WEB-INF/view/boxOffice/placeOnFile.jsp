<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value=" ${pageContext.request.contextPath}" scope="page"
	var="ctx"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'placeOnFile.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript"
	src="${ctx}/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>

	<style>
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
      <ul style="background-color:#2fade7;" class="breadcrumb">
			<li style="color:black;">归档信息<span class="divider">|</span>
			</li>
		</ul>
		
		<table style="width:900px;margin:0 auto;" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>收件名称</th>
							<th>收件人员</th>
							<th>收件日期</th>						
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${yw_ReceivingDataMxs}" var="item">
							<tr class="odd gradeX">
							
								<td>${item.recipientname}</td>
								<td>${item.username}</td>
								<td class="hidden-phone"><fmt:formatDate
										pattern="yyyy-MM-dd HH:mm:ss" value="${item.uploaddate}" />
								</td>							
								</tr>
						</c:forEach>
					</tbody>
				</table>
				
				
				<form action="${ctx}/PlaceOnFileController/insertPlaceOnFile.do" method="post">
				<table style="width:900px;margin:0 auto;margin-top: 50px;" class="table table-bordered table-hover m10">
		<input type="hidden" id="CertificateId" name="certificateid"/>
			<tr>
				<td width="18%" class="tableleft">登记大类:</td>
				<td>${box_officeMessage.registertypename}</td>
				<td width="18%" class="tableleft">登记小类:</td>
				<td>${box_officeMessage.processclassificationname}</td>
			</tr>
			<tr>
				<td class="tableleft">卷宗号*:</td>
				<c:if test="${empty placeOnFile.fileno}">
				<td ><input type="text" name="fileno" value="${zjNumber}"> 
				</td></c:if>
				
				<c:if test="${!empty placeOnFile.fileno}">
				<td>${placeOnFile.fileno}
				</td></c:if>
			<td class="tableleft">文件件数:</td>
				<td>${dataSize}
				</td>
			</tr>
			<tr>
				
				<td class="tableleft">总页数:</td>
				<c:if test="${empty placeOnFile.fileno}">
				<td><input type="text" id="numbercopies" name="pagecount" /><span class="spa spa1"></span>
				</td></c:if>
				
				<c:if test="${!empty placeOnFile.fileno}">
				<td><input type="text" id="numbercopies" name="pagecount" value="${placeOnFile.pagecount}">
				<span class="spa spa1"></span>
				</td>		
				</c:if>
				
				<td class="tableleft">归档人员:</td>
				<td><input style="color:#FF0000;" type="button"
					value="${username}" />
				</td>
					</tr>
			
			<tr>
				
				<td class="tableleft">归档时间:</td>
				<c:if test="${empty placeOnFile.fileno}">
				<td  colspan="3"><input 
					type="text" name="filingtime"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><span class="spa spa2"></span></td>
						</c:if>
						<c:if test="${!empty placeOnFile.fileno}">
						<td  colspan="3" name="filingtime"><fmt:formatDate pattern="yyyy-MM-dd"
												value="${placeOnFile.filingtime}" />
												<span class="spa spa2"></span>
												</td>
		                </c:if>
			</tr>
           <tr>
				<td class="tableleft">备注:</td>
				<c:if test="${empty placeOnFile.fileno}">
				<td colspan="3"><textarea 
					style="width:500px;max-width: 700px;" name="remarks"></textarea>
				</td>
				</c:if>
					<c:if test="${!empty placeOnFile.fileno}">
					<td colspan="3"><textarea  id="remarks"
					style="width:500px;max-width: 700px;" name="remarks">${placeOnFile.remarks}</textarea>
				</td>
					</c:if>
		</tr>
			<tr>
				<td class="tableleft"></td>
				<td colspan="3">
				<c:if test="${empty placeOnFile.fileno}">
					<button id="subm" class="btn btn-primary" type="submit">保存</button>
				</c:if>					
				</td>
			</tr>
		</table>
		</form>
			<c:if test="${!empty placeOnFile.fileno}">
					<button style="margin-left: 200px;" onclick="change()" class="btn btn-primary">修改</button>
				</c:if>
     			<script src="${ctx}/hdialog/js/jquery.hDialog.min.js"></script>
		<script type="text/javascript">
		
		/************************  失焦判断  **********************************/
			$("input").blur(function(){
				$(".spa").css("color","#BD362F")		
				if($(this).is("#numbercopies")){            //手机号判断
					var nc=/^[0-9]*$/;
					if($("#numbercopies").val()!=""){
					if(!(nc.test($("#numbercopies").val()))){
						$(".spa1").text("请输入正确的，只能是数字");
						$(this).css("border","1px solid #BD362F")
						return false;
					}else if(nc){
						$(".spa1").text("");
						return true;
					}
					}else{
						$(".spa1").text("");
					}
				}
				})
				
				/********************** 聚焦提示 ************************/	
			$("input").focus(function(){
			
				if($(this).is("#numbercopies")){
					$(".spa1").text("请输入数字").css("color","#aaa")
					$(this).css("border","1px solid #aaa")
				}
				
			})
		 /*********************** 提交验证 ***************************/
			$("#subm").click(function(){	
			
			 		 	      
		        var nc=/^[0-9]*$/;
		          //只能输入数字
		         	if(nc.test($("#numbercopies").val())){
			       
			          return true;
				}else{
					if($("#numbercopies").val()==""){
						$(".spa1").text('请你填写份数')
					} 		
					if($("#filingtime").val()==undefined){
						$(".spa2").text('请你填写归档日期')
					} 			
					return false;
				}
				
			})
			
			function change(){
			$.dialog('confirm','提示','您确认要修改么？',0,function(){
			$.tooltip('修改成功～',2000,true,function(){ 
				//$.closeDialog(); 
				$.closeDialog(function(){ 
				      var pagecount=document.getElementById("numbercopies").value;
			          var remarks=document.getElementById("remarks").value;
		              window.location="<%=path%>/PlaceOnFileController/updatePlaceOnFile.do?pagecount="+pagecount+"&remarks="+remarks;
				 
				    });
			});
		});	
		 			}
			
			</script>
			
  </body>
</html>
