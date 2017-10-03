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

<title>My JSP 'auditing.jsp' starting page</title>

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
<link rel="stylesheet" href="hdialog/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="hdialog/css/animate.css" type="text/css"></link>
<link rel="stylesheet" href="assets/lightbox/lightbox.css"
	type="text/css"></link>
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

.spa {
	height: 36px;
	width: 204px;
	font-size: 12px;
	color: #BD362F;
	text-indent: 10px;
	margin-top: 10px;
}
</style>
<script>

</script>
</head>

<body>
	<h5 style="color:red;" id=""></h5>
	<table class="table table-hover definewidth m10">
		<tr>
			<td><textarea id="firstOpiniont"
					style="width:500px;max-width: 1000px;"></textarea><a id="YtOpinion"
				onclick="selectYtOpinion()" style="display:none;">读取之前已填审核意见</a>
			</td>
			<td></td>
		</tr>
		<tr>
			<td><a class="swing dialog demo6"><button
						class="btn btn-info">
						<i class="icon-check"></i>意见模板
					</button>
			</a> &nbsp;&nbsp; <a href="${ctx}/AuditingController/auditing.do"><button
						class="btn btn-info">
						<i class="icon-refresh"></i>刷新
					</button>
			</a> &nbsp;&nbsp; <a id="insertOpinion" onclick="save()"><button
						class="btn btn-success">
						<i class="icon-plus"></i>保存
					</button>
			</a> <a id="updateOpinion" style="display: none;"><button
						class="btn btn-success">
						<i class="icon-edit"></i>修改
					</button>
			</a> <a id="selectfirst" class="swing firstOpiniont demo"><button
						class="btn btn-success">
						<i class="icon-search"></i>查看上一级审核意见
					</button>
			</a>
			</td>
			<td></td>
		</tr>
	</table>
	<div style="float:right;width:235px;height:56px;overflow: hidden;">
		<c:forEach items="${yw_ReceivingDatas}" var="item">
			<a class="example-image-link button"
				href="${ctx}/projectimg/${item.uploadpictures}"
				data-lightbox="example-set" data-title="${item.recipientname}">
				查看资料</a>
		</c:forEach>
	</div>
	<div id="HBox">
		<a onclick="edit()"><button class="btn btn-info">
				<i class="icon-edit"></i>编辑
			</button> </a> &nbsp;&nbsp; <a onclick="addTable()"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>新增
			</button> </a>
		<button type="button" class="btn btn-warning" onclick="Detete()">
			<i class="icon-trash"></i>删除
		</button>
		<a onclick="selected()"><button type="button"
				class="btn btn-danger" onclick="deleteReceiving()">
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

						<th>序号</th>
						<th>意见内容</th>
						<th style="display: none;">id</th>
					</tr>
				</thead>
				<tbody id="opiniontemplatenameTr">
					<c:forEach items="${bs_OpinionTemplates}" var="item"
						varStatus="number">
						<tr class="odd gradeX" id="tbodytr" onclick="GetCell(this)">
							<td id="count">${number.count}</td>
							<td id="opiniontemplatename">${item.opiniontemplatename}</td>
							<td id="opiniontemplateid" style="display: none;">${item.opiniontemplateid}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<div id="HBOX">

		<div style="width:700px; height:100px; overflow:scroll;">
			<table class="table table-bordered" id="sample_1">
				<thead>
					<tr>
						<th>意见</th>
						<th>审核人员</th>
					</tr>
				</thead>
				<tbody id="opiniontemplatenameTr">
					<tr class="odd gradeX" id="tbodytr" onclick="GetCell(this)">

						<td style="width:400px;" id="opiniontemplatename">${yw_FirstOpiniont.firstopiniontname}</td>
						<td id="opiniontemplateid">${yw_FirstOpiniont.username}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<input type="hidden" id="quarterstypeid" value="${quarterstypeid}">

	<script type="text/javascript"
		src="assets/lightbox/lightbox-plus-jquery.js"></script>
	<script src="hdialog/js/jquery.hDialog.min.js"></script>

</body>
<script type="text/javascript">
   $(function(){
      var quarterstypeid = document.getElementById("quarterstypeid").value;
      	if(quarterstypeid == 1){
		  
		    document.getElementById("selectfirst").style.display="none";  
		}
   })
</script>
<script type="text/javascript">
  
   $(function(){
	var $el = $('.dialog');
	var el=$('.firstOpiniont'); 
	$el.hDialog({box: '#HBox'}); //默认调用
	el.hDialog({box: '#HBOX'});
	el.hDialog({position: 'top'}); 
	//带标题的
	$('.demo6').hDialog({title: '信息',height: 300});
	$('.demo').hDialog({title: '上一级审核信息'});	
	//改变宽和高
	$('.demo6').hDialog({width:700,height: 400});	
	$('.demo').hDialog({width:600,height: 150});	
	//遮罩不可关闭
	$('.demo6').hDialog({modalHide: false});
	$('.demo').hDialog({modalHide: false});	
	//返回顶部
	$.goTop();	
});
   function addTable(){
   var cell=document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[1].innerHTML;
    var rownumber=document.getElementById("opiniontemplatenameTr").rows.length;   
        rownumber++;
         if(document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[1].innerHTML==""){
              $.tooltip('请先保存第'+(rownumber-1)+'行'); 
             return;
         }     
         var innerTD = "<tr><td></td><td  id='Td2' onDblClick='editCell(this)'></td></tr>"
        $(innerTD).appendTo("#sample_1");
        document.getElementById("sample_1").rows[document.getElementById("sample_1").rows.length-1].cells[0].innerHTML=rownumber;
        
       
      }
   $("#opiniontemplatenameTr tr").click(function() {
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
function insert(opiniontemplatename){     
     $.tooltip('保存成功,2秒后刷新',2000,true,function(){		 
		  $.ajax({
		     url : "${ctx}/AuditingController/insertOpiniontemplatename.do?opiniontemplatename="+opiniontemplatename,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		      $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#opiniontemplatename").text(jsonArray[i].opiniontemplatename);		
		           row.find("#opiniontemplateid").text(jsonArray[i].opiniontemplateid);          
		          row.appendTo("#sample_1");//添加到模板的容器中		
		          
		     }
		     $('#opiniontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#opiniontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
		     	 	     	 
		    }   
		  })		  
		  });  		  		  

}	
  
  var id=0;
  var opiniontemplateid=0;
   function GetCell(obj){
    id=$(obj).children().eq(0).text();
       
   }
   function edit(){
   if(id==0){
      $.tooltip('请选择要修改的一行编辑...');
      return;
   }
      var editcell=document.getElementById("sample_1").rows[id].cells[1]; 
        opiniontemplateid=document.getElementById("sample_1").rows[id].cells[2].innerHTML; 
       
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
		     url : "${ctx}/AuditingController/updateOpiniontemplatename.do?opiniontemplatename="+txt+"&opiniontemplateid="+opiniontemplateid,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		      $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#opiniontemplatename").text(jsonArray[i].opiniontemplatename);	
		          row.find("#opiniontemplateid").text(jsonArray[i].opiniontemplateid);		          
		          row.appendTo("#sample_1");//添加到模板的容器中		
		          
		     }
		     $('#opiniontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#opiniontemplatenameTr tr").click(function() {
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
    var selectcell=document.getElementById("sample_1").rows[id].cells[1].innerHTML; 
    
      $(firstOpiniont).val(selectcell);
      $.tooltip('提交成功，1秒后自动关闭',1000,true);
			setTimeout(function(){ 
			var $el = $('.dialog');
				//$el.hDialog('close',{box:'#HBox'},'http://smwell.sinaapp.com/');  //也可以加跳转链接哦~
				$el.hDialog('close',{box:'#HBox'}); 
			},1000);
   }
   }
  
   function select(){
      var menuname=$('#menuname').val();   
      $.ajax({
		     url : "${ctx}/AuditingController/selectOpiniontemplatename.do?opiniontemplatename="+menuname,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		      $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#opiniontemplatename").text(jsonArray[i].opiniontemplatename);	
		          row.find("#opiniontemplateid").text(jsonArray[i].opiniontemplateid);		          
		          row.appendTo("#sample_1");//添加到模板的容器中		
		          
		     }
		     $('#opiniontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#opiniontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
		     	 	     	 
		    }   
		  })		
	
   }
   
   function Detete(){
    if(id==0){
      $.tooltip('请选定一条数据进行删除...');
      return;
   }
   else{
   var opinionid=document.getElementById("sample_1").rows[id].cells[2].innerHTML; 
   $.tooltip('删除成功,2秒后刷新',2000,true,function(){		 
		  $.ajax({
		     url : "${ctx}/AuditingController/deleteOpiniontemplatename.do?opiniontemplateid="+opinionid,
		     type:"post",
		     dataType:"json",
		     success:function(jsonArray){		     
		      $("#tbodytr").eq(0).nextAll().remove(); //将除模板行的tr删除 			    
		     for (var i = 0; i < jsonArray.length; i++) { 
		       
		         var row = $("#tbodytr").clone(); 
		          row.find("#count").text(i+1);		          
		          row.find("#opiniontemplatename").text(jsonArray[i].opiniontemplatename);	
		          row.find("#opiniontemplateid").text(jsonArray[i].opiniontemplateid);		          
		          row.appendTo("#sample_1");//添加到模板的容器中		
		          
		     }
		     $('#opiniontemplatenameTr tr:first').remove();//移除第一行          
		     	$("#opiniontemplatenameTr tr").click(function() {
	         	$(this).addClass("on").siblings("tr").removeClass("on");
	      });     	 
		     	 	     	 
		    }   
		  })		  
		  });  		  		  
   }
   }
   
   function save(){
    var firstOpiniont=$('#firstOpiniont').val();
    if(firstOpiniont=="" || firstOpiniont==null){
        $.tooltip('请填写审核意见...');
        return;
    }
    else{
    $.ajax({
             type:"post",url: "${ctx}/AuditingController/checkOpiniont.do",     
					           //data : $("#loginform").serialize(),
								 dataType:"json",
					           success : function(result){      
					            var obj=eval(result).jsonresult;
					            if(obj=="fineOpiniont"){
					  	        	 $.tooltip('审核意见已填,无法对同一个办箱审核两次，请修改...');	
					  	        	 document.getElementById('YtOpinion').style.display='inline';
					  	        	 document.getElementById('insertOpinion').style.display='none';
					  	        	  document.getElementById('updateOpinion').style.display='inline';
					  	        	 	  	        
					             }	
					  	         if(obj=="notfindOpiniont"){
					  	         
					  	        		$.tooltip('提交成功,2秒后刷新',2000,true,function(){	
                                  window.location="${ctx}/AuditingController/insertFirstOpiniont.do?firstOpiniont="+firstOpiniont;
                                     })
					  	        	
					             }					                      					         
					             }
	});			      
    }
   }   
   
   function selectYtOpinion(){
                                $.ajax({ 
					            type:"post",
					            url: "${ctx}/AuditingController/checkOpiniont.do",     
					            //data : $("#loginform").serialize(),
								 dataType:"json",
					             success : function(result){      
					                var obj=eval(result).recheckopiniontname;
					             
					                $('#firstOpiniont').val(obj);	
					                
					                if(obj==null){
					                   var auditingopinionname=eval(result).auditingopinionname;
					                   $('#firstOpiniont').val(auditingopinionname);
					                   
					                   if(auditingopinionname==null){
					                      var firstOpiniont=eval(result).firstopiniontname;
					                   
					                      $('#firstOpiniont').val(firstOpiniont);
					                   }
					                }
					            		            					  	         				                      					         
					             }
					           });
                             }  
   		$("#updateOpinion").click(function(){
   		 var firstOpiniont=$('#firstOpiniont').val();
		 swal({
			title: "您确定要修改吗？", 
			text: "您确定要修改这个审核信息吗？",
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "是的，我要修改",
			confirmButtonColor: "#ec6c62"
			}, function() {
				swal("操作成功!", "已成功修改审核信息！", "success");
				window.location="${ctx}/AuditingController/updateRecheckopiniont.do?firstOpiniont="+firstOpiniont;
			});
	});
   </script>
</html>
