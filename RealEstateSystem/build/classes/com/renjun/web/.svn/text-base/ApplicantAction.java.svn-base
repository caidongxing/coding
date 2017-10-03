package com.renjun.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.bs_ApplicantType;
import com.renjun.po.bs_ApplicationForHuman;
import com.renjun.po.bs_CommonWay;
import com.renjun.po.bs_Country;
import com.renjun.po.bs_IdCardType;
import com.renjun.po.bs_OwnedIndustry;
import com.renjun.po.bs_Sex;
import com.renjun.po.yw_Applicant;
import com.renjun.service.ApplicantService;
import com.renjun.service.DataBaseService;
import com.renjun.vo.yw_ParcelUnit;

@Controller
@RequestMapping("/ApplicantController")
public class ApplicantAction {
	@Resource 
	private DataBaseService dataBaseService;
	
	@Resource
	private ApplicantService applicantService;

	  @RequestMapping("/Applicant")
	    public ModelAndView Applicant(Map<String, Object> modelList){
	    	ModelAndView mv=new ModelAndView("/boxOffice/applicant");    
	    	 List<yw_Applicant> yw_Applicants=applicantService.selectApplicant();
	    	   modelList.put("yw_Applicants", yw_Applicants);
	    	dataBase(modelList);
	    	return mv;
	    }
	  
	    @RequestMapping("/selectMhApplicant")
		public ModelAndView selectMhApplicant(Map<String, Object> modelList,HttpServletRequest request) throws UnsupportedEncodingException{
			ModelAndView mv=new ModelAndView("/boxOffice/applicant");
		   	String menuname="";
		   	menuname = new String(request.getParameter("menuname").getBytes("iso-8859-1"),"utf-8");
			  List<yw_Applicant> yw_Applicants=applicantService.selectMhApplicant(menuname);
			  modelList.put("yw_Applicants", yw_Applicants);
			  dataBase(modelList);
			 return mv;		
		}
	  
	  
	   public String dataBase(Map<String, Object> modelList){
	    	  List<bs_Sex> bs_Sexs=dataBaseService.selectSex();
	          List<bs_ApplicationForHuman> bs_ApplicationForHumans=dataBaseService.selectApplicationforhuman();
	          List<bs_ApplicantType> bs_ApplicantTypes=dataBaseService.selectApplicanttype();
	          List<bs_IdCardType> bs_IdCardTypes=dataBaseService.selectIdcardtype();
	          List<bs_CommonWay> bs_CommonWays=dataBaseService.selectCommonway();
	          List<bs_Country> bs_Countries=dataBaseService.selectCountry();
	          List<bs_OwnedIndustry> bs_OwnedIndustries=dataBaseService.selectOwnedIndustry();
	         	          modelList.put("bs_Sexs", bs_Sexs);
	          modelList.put("bs_ApplicationForHumans", bs_ApplicationForHumans);
	          modelList.put("bs_ApplicantTypes", bs_ApplicantTypes);
	          modelList.put("bs_IdCardTypes", bs_IdCardTypes);
	          modelList.put("bs_CommonWays", bs_CommonWays);
	          modelList.put("bs_Countries", bs_Countries);
	          modelList.put("bs_OwnedIndustries", bs_OwnedIndustries);
	       
		   	return null;
	     }
	
	 @ResponseBody
	 @RequestMapping(value="/insertApplicant",produces="application/json")
	 public void insertApplicant(HttpServletRequest request,int sex,int applicationForHuman,
			int applicantType,int IdCardType,String phoneNumber,int commonWay,String legalPhone,
			int country,int province,int ownedIndustry,String postalcode,String email,String agentTelephone,HttpServletResponse response) throws IOException{
		 String applicantName="";
		 String IdCardNumber="";
		 String address="";
		 String legalRepresentative="";		
		 String workUnit="";
		 String areaOfRight="";
		 String proportionOfRights="";
		 String licenceIssuingAuthority="";
		 String nameOfAgent="";
		 String agency="";
		 try {
			   applicantName = new String(request.getParameter("applicantName").getBytes("iso-8859-1"),"utf-8");
			   IdCardNumber = new String(request.getParameter("IdCardNumber").getBytes("iso-8859-1"),"utf-8");
			   address = new String(request.getParameter("address").getBytes("iso-8859-1"),"utf-8");
			   legalRepresentative = new String(request.getParameter("legalRepresentative").getBytes("iso-8859-1"),"utf-8");
			   workUnit = new String(request.getParameter("workUnit").getBytes("iso-8859-1"),"utf-8");
			   areaOfRight = new String(request.getParameter("areaOfRight").getBytes("iso-8859-1"),"utf-8");
			   proportionOfRights = new String(request.getParameter("proportionOfRights").getBytes("iso-8859-1"),"utf-8");
			   licenceIssuingAuthority = new String(request.getParameter("licenceIssuingAuthority").getBytes("iso-8859-1"),"utf-8");
			   nameOfAgent = new String(request.getParameter("nameOfAgent").getBytes("iso-8859-1"),"utf-8");
			   agency = new String(request.getParameter("agency").getBytes("iso-8859-1"),"utf-8");			   
				} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		 yw_Applicant yw_Applicant=new yw_Applicant();
		 yw_Applicant.setApplicantname(applicantName);
		 yw_Applicant.setSexid(sex);
		 yw_Applicant.setApplicationforhumanid(applicationForHuman);
		 yw_Applicant.setApplicanttypeid(applicantType);
		 yw_Applicant.setIdcardtypeid(IdCardType);
		 yw_Applicant.setIdcardnumber(IdCardNumber);
		 yw_Applicant.setPhonenumber(phoneNumber);
		 yw_Applicant.setCommonwayid(commonWay);
		 yw_Applicant.setAddress(address);
		 yw_Applicant.setLegalrepresentative(legalRepresentative);
		 yw_Applicant.setLegalphone(legalPhone);
		 yw_Applicant.setCountryid(country);
		 yw_Applicant.setProvinceid(province);
		 yw_Applicant.setOwnedindustryid(ownedIndustry);
		 yw_Applicant.setPostalcode(postalcode);
		 yw_Applicant.setWorkunit(workUnit);
		 yw_Applicant.setEmail(email);
		 yw_Applicant.setAreaofright(areaOfRight);
		 yw_Applicant.setProportionofrights(proportionOfRights);
		 yw_Applicant.setLicenceissuingauthority(licenceIssuingAuthority);
		 yw_Applicant.setAgency(agency);
		 yw_Applicant.setNameofagent(nameOfAgent);
		 yw_Applicant.setAgenttelephone(agentTelephone);
		 applicantService.insertApplicant(yw_Applicant);
		 List<yw_Applicant> yw_Applicants=applicantService.selectApplicant();
		 JSONArray jsonArray=JSONArray.fromObject(yw_Applicants);		
	   	 response.getWriter().print(jsonArray.toString());  
	     response.getWriter().flush();  
	     response.getWriter().close();     
	
	 }
	 
	 @RequestMapping("/updateApplicant")
	 public ModelAndView updateApplicant(Map<String, Object> modelList,HttpServletRequest request,int sex,int applicationForHuman,
			int applicantType,int IdCardType,String phoneNumber,int commonWay,String legalPhone,
			int country,int province,int ownedIndustry,String postalcode,String email,String agentTelephone,HttpServletResponse response,int applicantid) throws IOException{
		 ModelAndView mv=new ModelAndView("/boxOffice/applicant");  
		 String applicantName="";
		 String IdCardNumber="";
		 String address="";
		 String legalRepresentative="";		
		 String workUnit="";
		 String areaOfRight="";
		 String proportionOfRights="";
		 String licenceIssuingAuthority="";
		 String nameOfAgent="";
		 String agency="";
		 try {
			   applicantName = new String(request.getParameter("applicantName").getBytes("iso-8859-1"),"utf-8");
			   IdCardNumber = new String(request.getParameter("IdCardNumber").getBytes("iso-8859-1"),"utf-8");
			   address = new String(request.getParameter("address").getBytes("iso-8859-1"),"utf-8");
			   legalRepresentative = new String(request.getParameter("legalRepresentative").getBytes("iso-8859-1"),"utf-8");
			   workUnit = new String(request.getParameter("workUnit").getBytes("iso-8859-1"),"utf-8");
			   areaOfRight = new String(request.getParameter("areaOfRight").getBytes("iso-8859-1"),"utf-8");
			   proportionOfRights = new String(request.getParameter("proportionOfRights").getBytes("iso-8859-1"),"utf-8");
			   licenceIssuingAuthority = new String(request.getParameter("licenceIssuingAuthority").getBytes("iso-8859-1"),"utf-8");
			   nameOfAgent = new String(request.getParameter("nameOfAgent").getBytes("iso-8859-1"),"utf-8");
			   agency = new String(request.getParameter("agency").getBytes("iso-8859-1"),"utf-8");			   
				} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		 yw_Applicant yw_Applicant=new yw_Applicant();
		 yw_Applicant.setApplicantname(applicantName);
		 yw_Applicant.setSexid(sex);
		 yw_Applicant.setApplicationforhumanid(applicationForHuman);
		 yw_Applicant.setApplicanttypeid(applicantType);
		 yw_Applicant.setIdcardtypeid(IdCardType);
		 yw_Applicant.setIdcardnumber(IdCardNumber);
		 yw_Applicant.setPhonenumber(phoneNumber);
		 yw_Applicant.setCommonwayid(commonWay);
		 yw_Applicant.setAddress(address);
		 yw_Applicant.setLegalrepresentative(legalRepresentative);
		 yw_Applicant.setLegalphone(legalPhone);
		 yw_Applicant.setCountryid(country);
		 yw_Applicant.setProvinceid(province);
		 yw_Applicant.setOwnedindustryid(ownedIndustry);
		 yw_Applicant.setPostalcode(postalcode);
		 yw_Applicant.setWorkunit(workUnit);
		 yw_Applicant.setEmail(email);
		 yw_Applicant.setAreaofright(areaOfRight);
		 yw_Applicant.setProportionofrights(proportionOfRights);
		 yw_Applicant.setLicenceissuingauthority(licenceIssuingAuthority);
		 yw_Applicant.setAgency(agency);
		 yw_Applicant.setNameofagent(nameOfAgent);
		 yw_Applicant.setAgenttelephone(agentTelephone);
		 yw_Applicant.setApplicantid(applicantid);
		 applicantService.updateApplicant(yw_Applicant);
		 dataBase(modelList);
	return mv;
	 }
	 
	 //删除申请人
	  @RequestMapping("/deleteApplicant")
	    public ModelAndView deleteApplicant(Map<String, Object> modelList,int applicantid){
	   	ModelAndView mv=new ModelAndView("/boxOffice/applicant");     	   
	   	applicantService.deleteApplicant(applicantid);
	   	dataBase(modelList);
	   	return mv;
	    }
	  
}
