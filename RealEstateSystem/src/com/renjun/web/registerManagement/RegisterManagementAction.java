package com.renjun.web.registerManagement;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.service.ParcelUnitService;
import com.renjun.vo.yw_ParcelUnit;

@Controller
@RequestMapping("/RegisterManagementController")
public class RegisterManagementAction {
    
	@Resource
	private ParcelUnitService parcelUnitService;
	int pageSize=5;
	@RequestMapping("/registerManagement")
	public ModelAndView registerManagement(Model model){		
		ModelAndView mv=new ModelAndView("/registerManagement/registerManagement");
		int lines=parcelUnitService.line();
		model.addAttribute("lines", lines);
    	model.addAttribute("pageSize", pageSize);
		return mv;
		
	}
	
	@RequestMapping("/registerManagementTable")
	public ModelAndView registerManagementTable(Map<String, Object> modelList){
		ModelAndView mv=new ModelAndView("/registerManagement/registerManagementTable");
		List<yw_ParcelUnit> yw_ParcelUnit=parcelUnitService.selectParcelunitByRegistrationNo(0, pageSize);
		modelList.put("yw_ParcelUnit", yw_ParcelUnit);
		return mv;		
	}
	@RequestMapping("/registerManagementByLimit")
	public ModelAndView registerManagementByLimit(Map<String, Object> modelList,int page,int size){
		ModelAndView mv=new ModelAndView("/registerManagement/registerManagementTable");
		List<yw_ParcelUnit> yw_ParcelUnit=parcelUnitService.selectParcelunitByRegistrationNo((page-1)*pageSize, size);
		modelList.put("yw_ParcelUnit", yw_ParcelUnit);
		return mv;		
	}
	@RequestMapping("/registerInformation")
	public ModelAndView registerInformation(Map<String, Object> modelList,Model model,int parcelunitid){
		ModelAndView mv=new ModelAndView("/registerManagement/registerInformation");
		com.renjun.vo.yw_ParcelUnit yw_ParcelUnit=parcelUnitService.selectParcelUnitById(parcelunitid);
		model.addAttribute("yw_ParcelUnit", yw_ParcelUnit);
		
		return mv;		
	}
	
	@RequestMapping("/selectMhParcelunitByRegistrationNo")
	public ModelAndView selectMhParcelunitByRegistrationNo(Map<String, Object> modelList,HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView mv=new ModelAndView("/registerManagement/registerManagementTable");
	   	String menuname="";
	   	menuname = new String(request.getParameter("menuname").getBytes("iso-8859-1"),"utf-8");
		  List<yw_ParcelUnit> yw_ParcelUnit=parcelUnitService.selectMhParcelunitByRegistrationNo(menuname);
		  modelList.put("yw_ParcelUnit", yw_ParcelUnit);
		 return mv;		
	}
}
