package com.renjun.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.IdentifierNumber;
import com.renjun.po.yw_Certificate;
import com.renjun.service.CertificateService;
import com.renjun.service.DataBaseService;
import com.renjun.service.RightInformationService;
import com.renjun.vo.yw_RightInformation;
import com.renjun.vo.yw_RightPersonInformation;

@Controller
@RequestMapping("/DocumentInformationController")
public class DocumentInformationAction {

	@Resource
	private DataBaseService dataBaseService;
	@Resource
	private CertificateService certificateService;
	@Resource
	private RightInformationService rightInformationService;
	 @RequestMapping("/documentInformation")
	    public ModelAndView Applicant(Map<String, Object> modelList,HttpSession session,Model model){
	    	ModelAndView mv=new ModelAndView("/boxOffice/documentInformation");     
	    	List<yw_RightPersonInformation> yw_RightPersonInformations=rightInformationService.selectRightPersoninformation(GlobalConstant.boxofficeid);
	    	int quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
	    	model.addAttribute("quarterstypeid", quarterstypeid);
	    	modelList.put("yw_RightPersonInformations", yw_RightPersonInformations);
	    	return mv;
	    }	  	 
	 
	  @ResponseBody
	  @RequestMapping(value="/selectDocumentInformation",produces="application/json")
	  public void selectDocumentInformation(HttpServletResponse response,HttpServletRequest request,int rightinformationid,HttpSession session) throws IOException, ParseException{
		System.out.println(rightinformationid);
		  yw_RightInformation yw_RightInformations=rightInformationService.selectDocumentInformation(rightinformationid);		 
		    SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd");	 
		    String enddate=sfDateFormat.format(yw_RightInformations.getEndtime());		 
		    String[] fengeString=enddate.split("-");
	    	String endtime=fengeString[0]+"年"+fengeString[1]+"月"+fengeString[2]+"日止";	    
	    	yw_RightInformations.setEnddata(endtime);
	    	
	        yw_Certificate certificate=certificateService.selectCertificate(rightinformationid);
	    	if(certificate==null){
	    		yw_RightInformations.setZsbhnumber("null");
	    	}else{
	    		yw_RightInformations.setZsbhnumber("zsbhNumber");
	    	}
		    JSONArray jsonArray=JSONArray.fromObject(yw_RightInformations);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();  
	    
	  }
	 
	  @RequestMapping("/insertCertificate")
	    public ModelAndView insertCertificate(Map<String, Object> modelList,int rightInformationId,String zsbhNumber){
	    	ModelAndView mv=new ModelAndView("/boxOffice/documentInformation");    
	    	yw_Certificate yw_Certificate=new yw_Certificate();
	    	yw_Certificate.setRightinformationid(rightInformationId);
	    	yw_Certificate.setZsbhnumber(zsbhNumber);
	    	yw_Certificate.setPfeiffer("0");
	    	certificateService.insertCertificate(yw_Certificate);
	    	
	    	 IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(2);
	         dataBaseService.updateIdentifiernumber(identifierNumber);
	    	List<yw_RightPersonInformation> yw_RightPersonInformations=rightInformationService.selectRightPersoninformation(GlobalConstant.boxofficeid);
	    	
	    	modelList.put("yw_RightPersonInformations", yw_RightPersonInformations);
	    	return mv;
	    }	 
}
