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
    
    <title>My JSP 'gyjsParcel.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx}/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="${ctx}/assets/css/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
	
	<link href="${ctx}/Css/css/style.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="${ctx}/Css/bootstrap.css" />
<script type="text/javascript" src="${ctx}/hdialog/js/jquery-1.9.1.min.js"></script>

<!-- 分页 -->

  <script type="text/javascript" src="${ctx}/assets/page/jquery.pager.js"></script>
  <link rel="stylesheet" href="${ctx}/assets/page/Pager.css" type="text/css"></link>
  <script type="text/javascript">
   
        $(document).ready(function() {
           var lines=document.getElementById("line").value;
            var pageSize= document.getElementById("pageSize").value;
          
       
            $("#pager").pager({ pagenumber: 1, pagecount:Math.ceil(lines/pageSize), buttonClickCallback: PageClick });
        });

        PageClick = function(pageclickednumber) {
          var lines=document.getElementById("line").value;
          var pageSize= document.getElementById("pageSize").value;
                      
            $("#pager").pager({ pagenumber: pageclickednumber, pagecount:Math.ceil(lines/pageSize), buttonClickCallback: PageClick });
             window.ifaborr.location="${ctx}/gyjsParcelController/selectGyjsParcelByLimit.do?pageclickednumber="+pageclickednumber;
        }
         function select(){
		      var menuname=$('#menuname').val();
		      window.ifaborr.location="${ctx}/gyjsParcelController/selectMhParcelunit.do?menuname="+menuname;			
		   }
  </script>
     <script type="text/javascript">
		    
		   </script>
  <body>	
 <div class="form-inline definewidth m20">
		名称： <input type="text" name="menuname" id="menuname"
			class="abc input-default">&nbsp;&nbsp;
		<button onclick="select()" class="btn btn-primary">查询</button>
		&nbsp;&nbsp; 
	
		<a href="${ctx}/gyjsParcelController/parcelUnitMessage.do"><button type="button"
				class="btn btn-success">
				<i class="icon-plus"></i>添加宗地
			</button>
		</a>	
		&nbsp;&nbsp; 
		
		
		</div>
			<!-- BEGIN EXAMPLE TABLE widget-->
			<div class="widget red">
				<div class="widget-title">
					<h4>
						<i class="icon-reorder"></i>宗地
					</h4>
				
				</div>
			
				 <iframe style="width:99.5%;height:430px;" id="iframe"
									class="ifaStyle" scrolling="yes"
									src="${ctx}/gyjsParcelController/selectGyjsParcelTable.do"
									name="ifaborr"> </iframe> 					
			</div>
			<!-- END EXAMPLE TABLE widget-->
	<div style="margin-top: -40px;" id="pager"></div>
		   <input style="display: none;" id="line" value="${lines}"/>
		   <input style="display: none;" id="pageSize" value="${pageSize}"/>
		   
		  
	  </body>
</html>
