package com.renjun.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONSerializer;

import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.User;
import com.renjun.po.yw_DbBoxOffice;
import com.renjun.po.yw_FsBoxOffice;
import com.renjun.po.yw_FzBoxOffice;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.po.yw_SfBoxOffice;
import com.renjun.po.yw_ShBoxOffice;
import com.renjun.po.yw_SzBoxOffice;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.UserService;

@Controller
@RequestMapping("/demoController")
public class demoAction {

	@Resource
	private UserService userService;	
	@Resource 
	private BoxOfficeService boxOfficeService;
     @ResponseBody
	 @RequestMapping(value="/login",produces="application/json")  
     public Object login(String name,String pass,String inpcode,HttpSession session,HttpServletResponse response,HttpServletRequest request){
    	 com.renjun.vo.User user=new com.renjun.vo.User();
    	 Object code=request.getSession().getAttribute("code");
    	 if(code.toString().equals(inpcode)){
    	 com.renjun.vo.User findByName=userService.getName(name);    	  	
    	 com.renjun.vo.User user2=userService.getUserByName(name, pass);     	
    	 if(findByName!=null){       
    	   if(user2!=null){    
    		// 用户名和密码都匹配，证明登陆成功，设置session和cookie 
    		   session.setAttribute("SESSION_PFUSER", user2.getUsername());
    		   session.setAttribute("userID", user2.getUserid());
    		   session.setAttribute("quarterstypeid",user2.getQuarterstypeid()); 
    		   session.setAttribute("passWord",user2.getPassword());
    		   user.setJsonResult("success");   
    		   Cookie cookie=new Cookie("username", user2.getUsername());
    		   Cookie cookie2=new Cookie("password", user2.getPassword());
    		   // 设置cookie的存储时长 
    		   cookie.setMaxAge(60);
    		   cookie2.setMaxAge(60);
    		   // 把cookie发送给浏览器 
    		   response.addCookie(cookie);
    		   response.addCookie(cookie2);
    		   
    		   
    	   }
    	    else {
    	    	user.setJsonResult("errorpassword");       	    	   	    		    	
		}     
    	 } else {
    		 user.setJsonResult("notfindname");   				
		}
    	 }
    	 else{
			  user.setJsonResult("codeerror");
		 }
         user.setUsername(name);
         user.setPassword(pass);    	
     return JSONSerializer.toJSON(user).toString();        	 
     }
    
    @RequestMapping("/success")
    public ModelAndView success(HttpSession session,Model model){
   	 ModelAndView mv=new ModelAndView("/main");
    GlobalConstant.SESSION_PFUSER=(String) session.getAttribute("SESSION_PFUSER");
    GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
    if(GlobalConstant.quarterstypeid==2){
    List<yw_FsBoxOffice> fsBoxOffices=boxOfficeService.selectFsNumberBySend("1");
    model.addAttribute("BoxOffices", fsBoxOffices.size());
    }
    if(GlobalConstant.quarterstypeid==3){
        List<yw_ShBoxOffice> yw_ShBoxOffice=boxOfficeService.selectShNumberBySend("1");
        model.addAttribute("BoxOffices", yw_ShBoxOffice.size());
        }
    if(GlobalConstant.quarterstypeid==4){
        List<yw_DbBoxOffice> yw_DbBoxOffice=boxOfficeService.selectDbNumberBySend("1");
        model.addAttribute("BoxOffices", yw_DbBoxOffice.size());
        }
    if(GlobalConstant.quarterstypeid==5){
        List<yw_SzBoxOffice> yw_SzBoxOffice=boxOfficeService.selectSzNumberBySend("1");
        model.addAttribute("BoxOffices", yw_SzBoxOffice.size());
        }
    if(GlobalConstant.quarterstypeid==6){
        List<yw_SfBoxOffice> yw_SfBoxOffice=boxOfficeService.selectSfNumberBySend("1");
        model.addAttribute("BoxOffices", yw_SfBoxOffice.size());
        }
    if(GlobalConstant.quarterstypeid==7){
        List<yw_FzBoxOffice> yw_FzBoxOffice=boxOfficeService.selectFzNumberBySend("1");
        model.addAttribute("BoxOffices", yw_FzBoxOffice.size());
        }
    if(GlobalConstant.quarterstypeid==8){
        List<yw_GdBoxOffice> yw_GdBoxOffice=boxOfficeService.selectGdNumberBySend("1");
        model.addAttribute("BoxOffices", yw_GdBoxOffice.size());
        }
    model.addAttribute("quarterstypeid", GlobalConstant.quarterstypeid);
   	 return mv;
    }
    
}
