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
    
    <title>登陆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="${ctx}/Css/css/pintuer.css">
     <link rel="stylesheet" href="${ctx}/Css/css/admin.css">
      <script src="${ctx}/Js/jquery.js"></script>
      <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
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
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input id="username" type="text" class="input input-big" name="number" placeholder="登录账号"/>
                            <span class="icon icon-user margin-small"></span>
                             <span style="margin-left: 10px;" class="spa spa1"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input id="password" type="password" class="input input-big" name="password" placeholder="登录密码"/>
                            <span class="icon icon-key margin-small"></span>
                            <span style="margin-left: 10px;" class="spa spa2"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text" class="input input-big" name="code" placeholder="填写右侧的验证码" id="inpcode"/>
                            <a href="javascript:changeCode()">
                           <img src="${ctx}/sendcode/getregcode.do" id="code"  width="100" height="32" class="passcode" style="height:43px;cursor:pointer;">                           
                           </a>                                                                             
                        </div>
                         <span style="margin-left: 10px;" class="spa spa4"></span>  
                    </div>
                </div>
                <div style="padding:30px;"><a id="btn"><input onclick="submit()" type="submit" class="button button-block bg-main text-big input-big"  value="登录"></a>
                <span style="margin-left: 10px;" class="spa spa3"></span></div>
               
            </div>
                    
        </div>
    </div>
</div>
<script type="text/javascript">

 $(document).keydown(function(event){
    if(event.keyCode == 13){
     submit();
     }
});
function submit(){
  var username=document.getElementById("username").value;
  var password=document.getElementById("password").value;    
  var inpcode=document.getElementById("inpcode").value;  
    if(username=="" || username==null){
		   $(".spa3").text('请填写用户名再登陆'); 
		   $(".spa1").text('');   
           $(".spa2").text(''); 
           $(".spa4").text('');
	   }  else{
                 $.ajax({           
                 type:"post",
                 url: "<%=path%>/demoController/login.do?name="+username+"&pass="+password+"&inpcode="+inpcode,     
                 //data : $("#loginform").serialize(),
				 dataType:"json",          
                 success : function(result){              
                  var obj=eval(result).jsonResult;
                   if(obj=="codeerror"){
  	        	    $(".spa4").text('验证码错误')  
  	            	$(".spa1").text('');   
  	            	$(".spa2").text('');   
  	        	    $(".spa3").text(''); 
  	        	    changeCode();
             }
        	         if(obj=="notfindname"){
                        $(".spa1").text('用户名不存在')  
  	                	$(".spa2").text('');   
  	        	        $(".spa3").text('');
  	        	        $(".spa4").text('');
  	        	        changeCode();                                    
                   }
                   else  if(obj=="errorpassword"){
                       if(password==""){ 
                       $(".spa2").text('请填写密码');
            	       $(".spa1").text('');
            	       $(".spa3").text('');
            	       $(".spa4").text('');
            	       changeCode();
            	 } else{
            	      $(".spa2").text('密码错误');
            	      $(".spa1").text('');
            	      $(".spa3").text('');
            	      $(".spa4").text('');
            	      changeCode();
            	      
            	 }
           }                                                                                        
                else if(obj=="success"){               
                     window.location="<%=path%>/demoController/success.do";                                                
                 }                               
                   }
                 }); 
                 }
};

	 //获取验证码
   function changeCode(){
	   var verify=document.getElementById("code");
	   verify.setAttribute('src','${ctx}/sendcode/getregcode.do?'+Math.random());
   }
	</script>
	

</body>
</html>
