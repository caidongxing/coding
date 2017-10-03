package com.renjun.web;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.yw_RegisterBook;
import com.renjun.service.RegisterBookService;
import com.renjun.service.RightInformationService;
import com.renjun.vo.yw_RightInformation;

@Controller
@RequestMapping("/RegisterBookController")
public class RegisterBookAction {

	@Resource 
	private RightInformationService rightInformationService;
	
	@Resource 
	private RegisterBookService registerBookService;
	  @RequestMapping("/registerBook")
	    public ModelAndView registerBook(Map<String, Object> modelList,HttpSession session){
	    	ModelAndView mv=new ModelAndView("/boxOffice/registerBook");     
	    	List<yw_RightInformation> yw_RightInformation=rightInformationService.selectRegisterBookSit(GlobalConstant.boxofficeid);
	    	modelList.put("registerBookSit", yw_RightInformation);
	    	session.getAttribute("username");
	    	return mv;
	    }	  
	  
	  @RequestMapping("/insertRegisterBook")
	  public ModelAndView insertRegisterBook(HttpServletRequest request,Map<String, Object> modelList,HttpSession session,int rightInformationId) throws UnsupportedEncodingException{
	    	ModelAndView mv=new ModelAndView("/boxOffice/registerBook"); 
	    	GlobalConstant.userID=(Integer) session.getAttribute("userID");
	    	yw_RegisterBook yw_RegisterBook=new yw_RegisterBook();
	    	 String time="";
	    	 time = new String(request.getParameter("time").getBytes("iso-8859-1"),"utf-8");
	    	 yw_RegisterBook.setRightinformationid(rightInformationId);
	    	 yw_RegisterBook.setRegistertime(time);
	    	 yw_RegisterBook.setRegisterperson(GlobalConstant.userID);
	    	 registerBookService.insertRegisterBook(yw_RegisterBook);
	    	List<yw_RightInformation> yw_RightInformation=rightInformationService.selectRegisterBookSit(GlobalConstant.boxofficeid);
	    	modelList.put("registerBookSit", yw_RightInformation);
	    	session.getAttribute("username");
	    	return mv;
	    }	  
}
