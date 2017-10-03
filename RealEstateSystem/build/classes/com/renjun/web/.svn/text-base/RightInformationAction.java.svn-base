package com.renjun.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.aspectj.weaver.ast.Var;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.renjun.common.GlobalConstant;
import com.renjun.po.bs_CertificateBoard;
import com.renjun.po.bs_CharacteristicMethod;
import com.renjun.po.bs_OpinionTemplate;
import com.renjun.po.bs_ProcessClassification;
import com.renjun.po.bs_ReasonTemplate;
import com.renjun.po.bs_TypeofRight;
import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RightInformation;
import com.renjun.po.yw_RightPersonInformation;
import com.renjun.service.ApplicantService;
import com.renjun.service.DataBaseService;
import com.renjun.service.ParcelUnitService;
import com.renjun.service.RightInformationService;
import com.renjun.vo.yw_ParcelUnit;

@Controller
@RequestMapping("/RightInformationController")
public class RightInformationAction {
	
	@Resource
	private DataBaseService dataBaseService;
	@Resource
	private ParcelUnitService parcelUnitService;
	
	@Resource
	private ApplicantService applicantService;
    @Resource
    private RightInformationService rightInformationService;
	
	  @RequestMapping("/RightInformation")
	    public ModelAndView Applicant(Map<String, Object> modelList){
	    	ModelAndView mv=new ModelAndView("/boxOffice/rightInformation"); 
	    	List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectParcelunitByBoxOfficeId(GlobalConstant.boxofficeid);
	    	modelList.put("yw_ParcelUnits", yw_ParcelUnits);
	    	List<bs_TypeofRight> bs_TypeofRights=dataBaseService.selectTypeofRight();
	       	List<bs_ProcessClassification> bs_ProcessClassifications=dataBaseService.select();
	       	List<com.renjun.vo.yw_Applicant> yw_Applicants=applicantService.selectRightApplicant();
	       	List<bs_CertificateBoard> bs_CertificateBoards=dataBaseService.selectCertificateBoard();
	       	List<bs_CharacteristicMethod> bs_CharacteristicMethods=dataBaseService.selectCharacteristicMethod();
	       	List<bs_ReasonTemplate> bs_ReasonTemplates=dataBaseService.selectReasonTemplate();
	        modelList.put("bs_TypeofRights", bs_TypeofRights);
	        modelList.put("bs_ProcessClassifications", bs_ProcessClassifications);
	        modelList.put("yw_Applicants", yw_Applicants);
	        modelList.put("bs_CertificateBoards", bs_CertificateBoards);
	        modelList.put("bs_CharacteristicMethods", bs_CharacteristicMethods);
	        modelList.put("bs_ReasonTemplates", bs_ReasonTemplates);
	    	return mv;
	    }	  	 	 
	  
	  @RequestMapping("/InsertRightInformation")
	  public ModelAndView InsertRightInformation(int parcelunitid,String startingtime,
			 String endtime,String obtainprice,String landuserights,int certificateboardid,
			 int characteristicmethodid,String registrationreason,String excursus,
			 String applicantid,Map<String, Object> modelList) throws ParseException{
		      int rightinformationid;
		     ModelAndView mv=new ModelAndView("/boxOffice/rightInformation"); 
		     yw_RightInformation rightInformation=new yw_RightInformation();
		     rightInformation.setParcelunitid(parcelunitid);
		     SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");	    	
	    	 Date begindate=sfDateFormat.parse(startingtime);
	    	 Date endDate=sfDateFormat.parse(endtime);
	    	 rightInformation.setStartingtime(begindate);
	    	 rightInformation.setEndtime(endDate);
	    	 rightInformation.setObtainprice(obtainprice);
	    	 rightInformation.setLanduserights(landuserights);
	    	 rightInformation.setCertificateboardid(certificateboardid);
	    	 rightInformation.setCharacteristicmethodid(characteristicmethodid);
	    	 rightInformation.setRegistrationreason(registrationreason);
	    	 rightInformation.setExcursus(excursus);
	    	rightInformationService.insertRightInformation(rightInformation);
	    	rightinformationid=rightInformation.getRightinformationid();
	    	System.out.println("刚新增ID="+rightinformationid);
	    	 StringTokenizer tokenizer=new StringTokenizer(applicantid,";");
	      	while (tokenizer.hasMoreTokens()) {
	 		long id = Long.parseLong(tokenizer.nextToken());		
	 		int applicantId=(int)id;	
	 		yw_RightPersonInformation rightPersonInformation=new yw_RightPersonInformation();
	 		rightPersonInformation.setRightinformationid(rightinformationid);
	 		rightPersonInformation.setApplicantid(applicantId);
	 		rightInformationService.insertRightPersonInformation(rightPersonInformation);
	 		
	 	}  
	        com.renjun.po.yw_ParcelUnit yw_ParcelUnit=new com.renjun.po.yw_ParcelUnit();
	        yw_ParcelUnit.setParcelunitid(parcelunitid);
	        parcelUnitService.updateRegistrationNo(yw_ParcelUnit);
	        
	      	List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectParcelunitByBoxOfficeId(GlobalConstant.boxofficeid);
	    	modelList.put("yw_ParcelUnits", yw_ParcelUnits);
	    	List<bs_TypeofRight> bs_TypeofRights=dataBaseService.selectTypeofRight();
	       	List<bs_ProcessClassification> bs_ProcessClassifications=dataBaseService.select();
	       	List<com.renjun.vo.yw_Applicant> yw_Applicants=applicantService.selectRightApplicant();
	       	List<bs_CertificateBoard> bs_CertificateBoards=dataBaseService.selectCertificateBoard();
	       	List<bs_CharacteristicMethod> bs_CharacteristicMethods=dataBaseService.selectCharacteristicMethod();
	        modelList.put("bs_TypeofRights", bs_TypeofRights);
	        modelList.put("bs_ProcessClassifications", bs_ProcessClassifications);
	        modelList.put("yw_Applicants", yw_Applicants);
	        modelList.put("bs_CertificateBoards", bs_CertificateBoards);
	        modelList.put("bs_CharacteristicMethods", bs_CharacteristicMethods);

			return mv;
	  }	  
	  
	 
	  @ResponseBody
	  @RequestMapping(value="/insertReasonTemplate",produces="application/json")
	  public void insertReasonTemplate(HttpServletResponse response,HttpServletRequest request) throws IOException{
		  String reasontemplatename="";
		  reasontemplatename = new String(request.getParameter("reasontemplatename").getBytes("iso-8859-1"),"utf-8");
		   bs_ReasonTemplate bs_ReasonTemplate=new bs_ReasonTemplate();
		   bs_ReasonTemplate.setReasontemplatename(reasontemplatename);
		  dataBaseService.insertReasonTemplate(bs_ReasonTemplate);
		  List<bs_ReasonTemplate> bsReasonTemplates=dataBaseService.selectReasonTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bsReasonTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/updateReasonTemplate",produces="application/json")
	  public void updateReasonTemplate(HttpServletResponse response,HttpServletRequest request,int reasontemplateid) throws IOException{
		  String reasontemplatename="";
		  reasontemplatename = new String(request.getParameter("reasontemplatename").getBytes("iso-8859-1"),"utf-8");
		   bs_ReasonTemplate bs_ReasonTemplate=new bs_ReasonTemplate();
		   bs_ReasonTemplate.setReasontemplatename(reasontemplatename);
		   bs_ReasonTemplate.setReasontemplateid(reasontemplateid);
		  dataBaseService.updateReasonTemplate(bs_ReasonTemplate);
		  List<bs_ReasonTemplate> bsReasonTemplates=dataBaseService.selectReasonTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bsReasonTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/selectReasonTemplate",produces="application/json")
	  public void selectReasonTemplate(HttpServletResponse response,HttpServletRequest request) throws IOException{
		  String reasontemplatename="";
		  reasontemplatename = new String(request.getParameter("reasontemplatename").getBytes("iso-8859-1"),"utf-8"); 		  
		  List<bs_ReasonTemplate> bs_ReasonTemplates=dataBaseService.selectReasonTemplateMh(reasontemplatename);
		  JSONArray jsonArray=JSONArray.fromObject(bs_ReasonTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/deleteReasonTemplate",produces="application/json")
	  public void deleteReasonTemplate(HttpServletResponse response,HttpServletRequest request,int reasontemplateid) throws IOException{
		  System.out.println(reasontemplateid);
		  dataBaseService.deleteReasonTemplate(reasontemplateid);		  
		  List<bs_ReasonTemplate> bs_ReasonTemplates=dataBaseService.selectReasonTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bs_ReasonTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
}
