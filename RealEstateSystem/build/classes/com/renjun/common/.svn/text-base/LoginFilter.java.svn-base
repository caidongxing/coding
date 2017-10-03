package com.renjun.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{
	 
	@Override
	public void destroy() {
		// TODO Auto-generated method stub		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
	
		// TODO Auto-generated method stub
		 // 获得在下面代码中要用的request,response,session对象
		  HttpServletRequest servletRequest = (HttpServletRequest) request;
          HttpServletResponse servletResponse = (HttpServletResponse) response;
          HttpSession session = servletRequest.getSession();
          
       // 获得用户请求的URI
          String path = servletRequest.getRequestURI();
      
          if ("/RealEstateSystem/".equals(path) || "/RealEstateSystem/demoController/login.do".equals(path)
        		  || "/RealEstateSystem/Css/css/admin.css".equals(path) || "/RealEstateSystem/Css/css/pintuer.css".equals(path)
        		  || "/RealEstateSystem/Js/jquery.js".equals(path) || "/RealEstateSystem/Images/bg.jpg".equals(path) || "/RealEstateSystem/Images/tmbg-white.png".equals(path)
        		  || "/RealEstateSystem/sendcode/getregcode.do".equals(path)) {  
        	
        	      // 放行 
        	      chain.doFilter(request, response); 
        	      return; 
          } 
          else{
        	  // 不是登陆请求的话，判断是否有cookie 
        	  Cookie[] cookies=servletRequest.getCookies();
        
          if(cookies !=null && cookies.length>0){
        	  
        	
        	// 判断cookie中的用户名和密码是否和数据库中的一致，如果一致则放行，否则转发请求到登陆页面
        	  for (Cookie cookie:cookies) {
				if("username".equals(cookie.getName())){
					GlobalConstant.username=cookie.getValue();
					System.out.println(GlobalConstant.username);
					
				}
				if("password".equals(cookie.getName())){
					GlobalConstant.password=cookie.getValue();
					System.out.println(GlobalConstant.password);
				}
			}        	  
        	  String userName=(String) session.getAttribute("SESSION_PFUSER");
        	  String passWord=(String) session.getAttribute("passWord");
        	  if(userName==null && passWord==null){
        		  request.getRequestDispatcher("/login.jsp").forward(request, response);
        		  return; 
        	  }
        	  if(userName==null && GlobalConstant.username==null && passWord==null && GlobalConstant.password==null){
        		  
        		  request.getRequestDispatcher("/login.jsp").forward(request, response);
        		  return; 
        	  }
        	  else{
        		 
        	  if(userName.equals(GlobalConstant.username) && passWord.equals(GlobalConstant.password)){	  
        		  chain.doFilter(request, response); 
        	        return; 
        	  }
        	  else {
        		  request.getRequestDispatcher("/login.jsp").forward(request, response);
        		  return; 
			}
        	  }
          }
          else{
        	  request.getRequestDispatcher("/login.jsp").forward(request, response);
        	  return; 
          }
          }                        
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
