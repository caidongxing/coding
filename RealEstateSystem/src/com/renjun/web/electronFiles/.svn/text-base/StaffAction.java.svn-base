package com.renjun.web.electronFiles;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.po.bs_QuartersType;
import com.renjun.service.DataBaseService;
import com.renjun.service.UserService;
import com.renjun.vo.User;

@Controller
@RequestMapping("StaffController")
public class StaffAction {
	
	@Autowired
	private UserService userService;
	@Autowired
	private DataBaseService dataBaseService;
	int pageSize=2;
	int UserId;
	 @RequestMapping("/selectStaff")
	    public ModelAndView selectStaff(Model model){
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/staffMessage");
	    	int lines=userService.lines();
	    	model.addAttribute("lines", lines);
	    	model.addAttribute("pageSize", pageSize);
	    	return mv;
	    }
	 @RequestMapping("/selectStaffMessageTable")
	    public ModelAndView selectStaffMessageTable(Map<String, Object> modelList){
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/staffMessageTable"); 	 
	    	List<User> users=userService.selectUser(0, pageSize);
	    	modelList.put("users",users);
	    	return mv;
	    }
	 
	 @RequestMapping("/selectUserByLimit")
	    public ModelAndView selectUserByLimit(Map<String, Object> modelList,int pageclickednumber){
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/staffMessageTable"); 	 
	    	List<User> users=userService.selectUser((pageclickednumber-1)*pageSize, pageSize);
	    	modelList.put("users",users);
	    	return mv;
	    }
	 @RequestMapping("/insertUser")
	    public ModelAndView insertUser(Map<String, Object> modelList){
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/insertStaff"); 
	    
	    	 List<bs_QuartersType> quartersTypes=dataBaseService.selectQuartersType();
	         modelList.put("quartersTypes",quartersTypes);       
	   
	    	return mv;
	    }
	 
	 @RequestMapping("/insertStaff")
	    public ModelAndView insertStaff(Map<String, Object> modelList,Model model,String username,
	    		String quarterstypeid,String identitycard,String phone,String sex,
	    		String realname,String password) throws ParseException{	    			    	
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/staffMessage"); 	 
            int lines=userService.lines();
	    	model.addAttribute("lines", lines);
	    	model.addAttribute("pageSize", pageSize);
	    	List<User> users=userService.selectUser(0, pageSize);
	    	modelList.put("users",users);
            com.renjun.po.User user=new com.renjun.po.User();
            user.setUsername(username);
            user.setPassword(password);
            user.setIdentitycard(identitycard);
            user.setPhone(phone);
            user.setSex(sex);
            user.setQuarterstypeid(Integer.parseInt(quarterstypeid));
       	    Date date=new Date();
       	    SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd");
     	    String endtime=sfDateFormat.format(date);
       	    Date beginTime=sfDateFormat.parse(endtime);
            user.setRegisterdate(beginTime);
            user.setRealname(realname);
            userService.insertUser(user);
	    	return mv;
	    }
	 
	 @RequestMapping("/selectUserById")
	    public ModelAndView updateStaff(Map<String, Object> modelList,Model model, int userid){
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/updateStaff"); 
	    	UserId=userid;
	    	 List<bs_QuartersType> quartersTypes=dataBaseService.selectQuartersType();
	            modelList.put("quartersTypes",quartersTypes);       
	        com.renjun.po.User user=userService.selectUserByUserId(userid);
	        model.addAttribute("user", user);
	    	return mv;
	    }
	 
	 @RequestMapping("/updateStaff")
	    public ModelAndView updateStaff(Map<String, Object> modelList,Model model,String username,
	    		String quarterstypeid,String identitycard,String phone,String sex,
	    		String realname){	    			    	
	    	ModelAndView mv=new ModelAndView("/electronFiles/staff/staffMessage"); 	 
          List<bs_QuartersType> quartersTypes=dataBaseService.selectQuartersType();
          modelList.put("quartersTypes",quartersTypes); 
         int lines=userService.lines();
	    	model.addAttribute("lines", lines);
	    	model.addAttribute("pageSize", pageSize);
	    	List<User> users=userService.selectUser(0, pageSize);
	    	modelList.put("users",users);
         com.renjun.po.User user=new com.renjun.po.User();
         user.setUsername(username);
     
         user.setIdentitycard(identitycard);
         user.setPhone(phone);
         user.setSex(sex);
         user.setQuarterstypeid(Integer.parseInt(quarterstypeid));    	  
         user.setRealname(realname);
         user.setUserid(UserId);
         userService.updateUser(user);
	    	return mv;
	    }
	 
	 @RequestMapping(value="modifyPassword")
	    public String modifyPassword(){		 
	    	return "/electronFiles/password/modifyPassword";
	    }
	 
	 @ResponseBody 
	 @RequestMapping("/selectPasswordByUserId")
	 public Object selectPasswordByUserId(HttpSession session,String password){
	
		 String oldpassword=(String) session.getAttribute("passWord");
		 User user=new User();
		 if(password.equals(oldpassword)){
			 user.setJsonResult("isok");			 
		 }
		 else{
			 user.setJsonResult("passwordError");
		 }
		return JSONSerializer.toJSON(user).toString();		 
	 }
	 
	 @RequestMapping(value="updatePassword")
	    public Object updatePassword(HttpSession session,HttpServletRequest request,HttpServletResponse response, String password) throws ServletException, IOException{	
		 int userid=(Integer) session.getAttribute("userID");
		 com.renjun.po.User user=new com.renjun.po.User();
		 user.setPassword(password);
		 user.setUserid(userid);
		 if(password==null){			 
		 }else {
			 userService.updatePassword(user);
		 }		
		 request.getRequestDispatcher("/login.jsp").forward(request, response);
	     return null;
	    }
}
