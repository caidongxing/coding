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
    
    <title>My JSP 'collectFees.jsp' starting page</title>
    
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
<link rel="stylesheet" href="${ctx}/hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/hdialog/css/animate.css" type="text/css"></link>
<!--提示框 -->
	<link rel="stylesheet" href="${ctx}/hdialog/sweetalert/sweetalert.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/hdialog/sweetalert/sweetalert.min.js"></script>
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
  <div class="b1">
      <h3 style="width:400px;margin:0 auto;">广州市不动产登记收费明细表</h3>
							      	<table style="width:900px;margin:0 auto;" class="table table-hover definewidth m10">
							      	<input style="display: none;" id="rightinformationid" value="${SfRightInformation.rightinformationid}"/>
												<tr>
													<td style="width:100px;" class="tableleft">受理编号:</td>
													<td id="realrstateunitnumber">${SfRightInformation.identifier}
													</td>													
												</tr>
												<tr>
													<td>登记类型:</td>
													<td>${SfRightInformation.typeofrightname}</td>													
												</tr>

												<tr>
													<td class="tableleft">申请人:</td>
													<td>${SfRightInformation.landuserights}</td>
													
												</tr>
													<tr>
													<td class="tableleft">不动产坐落:</td>
													<td>${SfRightInformation.sit}</td>													
												</tr>											
											</table>
											<c:if test="${empty collectFeesById}">
											<table style="width:900px;margin:0 auto;" class="table table-bordered" id="collectfeesinformation">
												<thead>
													<tr>
													    <th style="display: none;">id</th>
														<th>序号</th>
														<th>收费项目</th>
														<th>金额（元）</th>
														<th>备注</th>												
													</tr>
												</thead>
												<tbody id="collectfeesinformationTr">													
														<tr>										
														</tr>													
												</tbody>

											</table>	
											</c:if>
											<c:if test="${!empty collectFeesById}">
											
											<table style="width:900px;margin:0 auto;" class="table table-bordered" id="collectfeesinformation">
												<thead>
													<tr>
													    <th style="display: none;">id</th>
														<th>序号</th>
														<th>收费项目</th>
														<th>金额（元）</th>
														<th>备注</th>												
													</tr>
												</thead>
					<tbody>
					<c:forEach items="${collectFeesInformations}" var="item" varStatus="number">			
						<tr class="odd gradeX">						
						    <td style="display: none;"><input type="hidden" value="${item.collectfeesinformationid}"/></td>									
							<td>${number.count}</td>
							<td>${item.chargingitemname}</td>
							<td>${item.chargeamount}</td>
							<td>${item.remarks}</td>						
						</tr>
					</c:forEach>												
					</tbody>

						          </table>	
											
											</c:if>
								<table style="width:900px;margin:0 auto;" class="table table-hover definewidth m10">
									<tr>
										<td class="tableleft">合计:</td>
										<c:if test="${empty collectFeesById}">
										<td colspan="3" id="Totalmoney">0</td>
										</c:if>
										<c:if test="${!empty collectFeesById}">
										<td colspan="3" id="Totalmoney">${collectFeesById.charge}</td>
										</c:if>
										<td></td><td></td>
									</tr>
									<tr>
										<td class="tableleft">开单人:</td>
										<td>${username}</td>
										<td class="tableleft">开单日期:</td>
										<c:if test="${empty collectFeesById}">
										<td id="date"></td>
										</c:if>
										<c:if test="${!empty collectFeesById}">
										<td>${collectFeesById.billingdate}</td>
										</c:if>
									</tr>
									</table>
									</div>
									
									<table style="margin:0 auto;margin-top: 20px;">
										<tr>
											<td class="tableleft"></td>
											
											<td>
											   <c:if test="${empty collectFeesById}">
												<a onclick="dialog()" class="swing dialog demo6"><button class="btn  btn-inverse"
													>添加收费项</button></a>
												&nbsp;&nbsp;
											
												<button type="button" class="btn  btn-danger"
													onclick="remove()">移除</button>
														<a href="${ctx}/CollectFees/success.do"><button class="btn  btn-inverse"
													>刷新</button></a>
												&nbsp;&nbsp;
												<a onclick="sureCollectFees()"><button class="btn  btn-inverse"
													>确认收费</button></a>
													&nbsp;&nbsp;&nbsp;&nbsp;
													</c:if>
													<c:if test="${!empty collectFeesById}">
												  
													  <a onclick="anewCollectFees()"><button class="btn  btn-inverse"
													>重新收费</button></a>
													</c:if>
											</td>
											
											
											<td>
											
											<a id="bb" href="javascript:void(0)" class="button">打印</a></td>
												<a style="float:right;margin-top:40px;margin-right:50px; relative;"  href="${ctx}/CollectFees/success.do">
												<button class="btn btn-info"><i class="icon-refresh"></i>返回列表</button>											
		</a>
										</tr>								
								</table>	
	

	<div id="HBox">
		
		<a style="margin-left: 150px;" onclick="selected()"><button type="button"
				class="btn btn-danger">
				<i class="icon-ok"></i>选定
			</button>
		</a> <input type="text" name="menuname" id="menuname"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<a onclick="select()"><button type="button"
				class="btn btn-primary">
				<i class="icon-search"></i>查询
			</button>
		</a>
		<div style="width:700px; height:300px; overflow:scroll;">
			<table class="table table-bordered" id="sample_1">
				<thead>
					<tr>
                        <th>选择</th>
						<th>序号</th>
						<th>收费项目</th>
						<th>金额</th>
						<th>备注</th>
					</tr>
				</thead>
				<tbody id="chargingitemnameTr">		
				<c:forEach items="${yw_CollectFeesInformations}" var="item" varStatus="number">			
						<tr id="tbodytr" class="odd gradeX">						
						    <td><input id="collectfeesinformationid" type="checkbox" name="applicantId" class="checkboxes" value="${item.collectfeesinformationid}"/></td>									
							<td id="count">${number.count}</td>
							<td id="chargingitemname">${item.chargingitemname}</td>
							<td id="chargeamount">${item.chargeamount}</td>
							<td id="remarks">${item.remarks}</td>						
						</tr>
					</c:forEach>
				</tbody>
			</table>
					
		</div>
	</div>
	<script src="${ctx}/hdialog/js/jquery.hDialog.min.js"></script>
  </body>
  
  <script type="text/javascript">
    var time = document.getElementById("date");
   $(function(){
    setTime(time);
	var $el = $('.dialog');	
	$el.hDialog({box: '#HBox'}); //默认调用	
	//带标题的
	$('.demo6').hDialog({title: '信息',height: 300});	
	//改变宽和高
	$('.demo6').hDialog({width:700,height: 400});
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});
	//返回顶部
	$.goTop();
});
	var riqi;
	function setTime(time) {
   
    var CurrentTime = new Date();
    var Year = CurrentTime.getFullYear();
    var Month = CurrentTime.getMonth() + 1;
    var Day = CurrentTime.getDate();
   
     riqi = Year + "-" + Month + "-" + Day;
    time = document.getElementById("date");

       time.textContent = riqi;
    
}
 var tab=document.getElementById("collectfeesinformationTr");
  $("#chargingitemnameTr tr").click(function() {
  $(this).addClass("on").siblings("tr").removeClass("on");
   /*   var input = $(this).find("input");
            //alert($(input).prop("checked"));
            if (!$(input).prop("checked")) {
                $(input).prop("checked",true);
            }else{
              $(input).prop("checked",false);
            }       */      
  })
 
  var money=0;  var chargingitemnameTr;
 function selected(){
  var tag=false;
 var i=0;
 var collectfeesinformationid;
   var chargingitemname;var chargeamount;var remarks;
    $("input:checkbox").each(function(index) {
        if ($(this).prop("checked") ==true) {
           tag=true;
              i=document.getElementById("collectfeesinformationTr").rows.length;
               collectfeesinformationid=$(this).val();    
              
               chargingitemname=document.getElementById("sample_1").rows[index+1].cells[2].innerHTML;
               chargeamount=document.getElementById("sample_1").rows[index+1].cells[3].innerHTML;
                remarks=document.getElementById("sample_1").rows[index+1].cells[4].innerHTML;
                              
               $("#collectfeesinformationTr").append('<tr onclick="GetCell(this)"><td style="display: none;"></td><td></td><td></td><td></td> <td></td></tr>');
               document.getElementById("collectfeesinformation").rows[document.getElementById("collectfeesinformation").rows.length-1].cells[0].innerHTML=collectfeesinformationid;
               document.getElementById("collectfeesinformation").rows[document.getElementById("collectfeesinformation").rows.length-1].cells[1].innerHTML=i;
               document.getElementById("collectfeesinformation").rows[document.getElementById("collectfeesinformation").rows.length-1].cells[2].innerHTML=chargingitemname;
               document.getElementById("collectfeesinformation").rows[document.getElementById("collectfeesinformation").rows.length-1].cells[3].innerHTML=chargeamount;
               document.getElementById("collectfeesinformation").rows[document.getElementById("collectfeesinformation").rows.length-1].cells[4].innerHTML=remarks; 
               
                 $.tooltip('提交成功，1秒后自动关闭',1000,true);
			setTimeout(function(){ 
			var $el = $('.dialog');
				//$el.hDialog('close',{box:'#HBox'},'http://smwell.sinaapp.com/');  //也可以加跳转链接哦~
				$el.hDialog('close',{box:'#HBox'}); 
			},1000);  
               $("#collectfeesinformationTr tr").click(function() {
               $(this).addClass("on").siblings("tr").removeClass("on");
                       })
              }           
          });
                if (tag==false){
                 $.tooltip('请选择收费项目...');                          
              }
     		
     
      var MoneyTr=document.getElementById("collectfeesinformationTr").rows.length;
      for(var j=1;j<MoneyTr;j++){
           money+=parseFloat(document.getElementById("collectfeesinformationTr").rows[j].cells[3].innerHTML);          
      }
      $('#Totalmoney').text(money);
      money=0;
      
   var tbodytr= document.getElementById("collectfeesinformationTr");
    chargingitemnameTr=document.getElementById("chargingitemnameTr");
  for(var t=1;t<tbodytr.rows.length;t++){
       var collectfeesinformationid=document.getElementById("collectfeesinformationTr").rows[t].cells[0].innerHTML;
      /*  document.getElementById("sample_1").rows[index+1].remove();  */
      $("#sample_1 input:checkbox").each(function(index) {
      
       var this1=$(this).val();
       
            var length=chargingitemnameTr.rows.length;          
             if(collectfeesinformationid==$(this).val()){
            
                  document.getElementById("chargingitemnameTr").deleteRow(index);
                 
                 for(var i=1;i<length;i++){
                 document.getElementById("sample_1").rows[i].cells[1].innerHTML=i;
                
                 } 
             }         
      });
  }
 }
 
 var xuhao=0;
   function GetCell(obj){
        xuhao=$(obj).children().eq(1).text();            
   }           
        //移除行
        var money2=0;
      function remove(){
      
          var CollectFeesInformationTr=document.getElementById("collectfeesinformationTr").rows.length;        
          if(CollectFeesInformationTr==1){
              $.tooltip('没有要移除的行...');            
          }      
        else{      
           if(xuhao==0){
              $.tooltip('请选择要移除的行...');             
          }else{
         
           $("#chargingitemnameTr").append('<tr id="newTr"><td><input id="collectfeesinformationId" type="checkbox" /></td><td></td><td></td><td></td> <td></td></tr>');          
             document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[0].value=document.getElementById("collectfeesinformationTr").rows[xuhao].cells[0].innerHTML;
             document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[1].innerHTML=document.getElementById("chargingitemnameTr").rows.length;
             document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[2].innerHTML=document.getElementById("collectfeesinformationTr").rows[xuhao].cells[2].innerHTML;
             document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[3].innerHTML=document.getElementById("collectfeesinformationTr").rows[xuhao].cells[3].innerHTML;
             document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[4].innerHTML=document.getElementById("collectfeesinformationTr").rows[xuhao].cells[4].innerHTML;
               $("#chargingitemnameTr tr").click(function() {
               $(this).addClass("on").siblings("tr").removeClass("on");
            
  })         
            tab.deleteRow(xuhao);
                                //从table中删除                     
             for(i=1;i<tab.rows.length;i++){
              money2+=parseFloat(document.getElementById("collectfeesinformationTr").rows[i].cells[3].innerHTML);          
              tab.rows[i].cells[1].innerHTML = i.toString(); 
              }
                $('#Totalmoney').text(money2);  
                money2=0;xuhao=0;
                if(tab.rows.length==1){
                   $('#Totalmoney').text("0");  
                }     
    }      
    }       
      }
      
      function sureCollectFees(){
        if($('#Totalmoney').text()==0){
               $.tooltip('收费金额不能为0，请添加收费项...');  
        }
        else{
       var rightinformationid=document.getElementById("rightinformationid").value;

       var realrstateunitnumber=document.getElementById("realrstateunitnumber").innerHTML;
       var cFeesInformation=document.getElementById("collectfeesinformationTr").rows.length;
        var cFeesInformationID="";		
				for(var i=1;i<cFeesInformation;i++){
				    cFeesInformationID+=document.getElementById("collectfeesinformationTr").rows[i].cells[0].innerHTML+";";
				}				 
      	 swal({
			title: "请确认下面信息。。", 
			text: "收费订单编号  "+realrstateunitnumber+"收费金额  "+$('#Totalmoney').text()+"元", 
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要收费",
			confirmButtonColor: "#ec6c62"
			}, function() {
			    
				swal("操作成功!", "已成功收费！", "success");
			    window.location="${ctx}/CollectFees/insertCollectFees.do?rightinformationid="+rightinformationid+"&totalmoney="+$('#Totalmoney').text()+"&cFeesInformationID="+cFeesInformationID;
			});
			}
      }
      function anewCollectFees(){
       var rightinformationid=document.getElementById("rightinformationid").value;
      var realrstateunitnumber=document.getElementById("realrstateunitnumber").innerHTML;
         swal({
			title: "请确认下面信息。。", 
			text: "收费订单编号  "+realrstateunitnumber+"将重新收费 ", 
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "确认",
			confirmButtonColor: "#ec6c62"
			}, function() {
			   window.location="${ctx}/CollectFees/delete.do?rightinformationid="+rightinformationid;
			    	
			    				
		});
      }
      
       $("#bb").click(function(){
			$(".b1").printArea();
	  });
  </script>
</html>
