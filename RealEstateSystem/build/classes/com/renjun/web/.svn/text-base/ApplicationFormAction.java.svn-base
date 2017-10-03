package com.renjun.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.bs_ApplicantType;
import com.renjun.po.bs_ApplicationForHuman;
import com.renjun.po.bs_CommonWay;
import com.renjun.po.bs_Country;
import com.renjun.po.bs_IdCardType;
import com.renjun.po.bs_OwnedIndustry;
import com.renjun.po.bs_RegisterType;
import com.renjun.po.bs_Sex;
import com.renjun.po.bs_TypeofRight;
import com.renjun.po.yw_Applicant;
import com.renjun.po.yw_AuditingOpinion;
import com.renjun.po.yw_BoxOffice;
import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RecheckOpiniont;
import com.renjun.service.ApplicantService;
import com.renjun.service.AuditingService;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.DataBaseService;
import com.renjun.service.RightInformationService;
import com.renjun.vo.yw_RightInformation;

@Controller
@RequestMapping("/ApplicationFormController")
public class ApplicationFormAction {

	@Resource 
	private DataBaseService dataBaseService;
	
	@Resource
	private BoxOfficeService boxOfficeService;
	@Autowired
	private RightInformationService rightInformationService;
	@Autowired
	private ApplicantService applicantService;
	
	@Resource
	private AuditingService auditingService;
	
	 @RequestMapping("/ApplicationFormTable")
	    public ModelAndView ApplicationFormTable(Map<String, Object> modelList,Model model){
	    	ModelAndView mv=new ModelAndView("/boxOffice/applicationFormTable");   
	    	 List<yw_RightInformation> yw_RightInformations=rightInformationService.selectRightInformationByBoxOfficeId(GlobalConstant.boxofficeid);
	    	   	modelList.put("yw_RightInformations", yw_RightInformations);
	    	dataBase(modelList,model);
	    	return mv;
	    }
	 @RequestMapping("/ApplicationForm")
	    public ModelAndView ApplicationForm(Map<String, Object> modelList,Model model,int parcelunitid){
	    	ModelAndView mv=new ModelAndView("/boxOffice/applicationForm");   
	        	List<com.renjun.vo.yw_Applicant> applicants=applicantService.selectRightApplicantByParcelunitid(parcelunitid);
	        	yw_RightInformation rightInformation=rightInformationService.selectBdcByBoxOfficeId(parcelunitid);
	    	    List<yw_RightInformation> yw_RightInformations=rightInformationService.selectRightInformationByBoxOfficeId(GlobalConstant.boxofficeid);
	    	    yw_FirstOpiniont getFirstOpiniont=auditingService.selectFirstOpiniont(GlobalConstant.boxofficeid);
	    	    com.renjun.vo.yw_BoxOffice yw_BoxOffices=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);
		    	yw_RecheckOpiniont getRecheckOpiniont=auditingService.selectRecheckopiniont(GlobalConstant.boxofficeid);
		    	yw_AuditingOpinion getAuditingName=auditingService.selectAuditingOpinion(GlobalConstant.boxofficeid);
		    	com.renjun.vo.yw_BoxOffice DbBoxOffice=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);

	    	    model.addAttribute("getFirstOpiniont", getFirstOpiniont);
	    	   	modelList.put("yw_RightInformations", yw_RightInformations);
	    		modelList.put("applicants", applicants);
	    		model.addAttribute("rightInformation", rightInformation); 
	    		model.addAttribute("DbBoxOffice", DbBoxOffice);
	    	 	model.addAttribute("yw_BoxOffices", yw_BoxOffices);
		    	model.addAttribute("getRecheckOpiniont", getRecheckOpiniont);
		    	model.addAttribute("getAuditingName", getAuditingName);    	
	    	    dataBase(modelList,model);
	    	return mv;
	    }
	   public String dataBase(Map<String, Object> modelList,Model model){
	    	List<bs_TypeofRight> bs_TypeofRights=dataBaseService.selectTypeofRight();
	    	List<bs_RegisterType> bs_RegisterTypes=dataBaseService.selectregistertype();
	        modelList.put("bs_TypeofRights", bs_TypeofRights);    	
	    	modelList.put("bs_RegisterTypes", bs_RegisterTypes);	   	    	
	       return null;
	     }
	 
}
