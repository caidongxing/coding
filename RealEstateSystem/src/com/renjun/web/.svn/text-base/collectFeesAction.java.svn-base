package com.renjun.web;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.bs_OpinionTemplate;
import com.renjun.po.yw_CollectFees;
import com.renjun.po.yw_CollectFeesInformation;
import com.renjun.po.yw_CollectFeesMx;
import com.renjun.po.yw_RightPersonInformation;
import com.renjun.service.CollectFeesService;
import com.renjun.service.RightInformationService;
import com.renjun.vo.yw_RightInformation;

@Controller
@RequestMapping("CollectFees")
public class collectFeesAction {

	@Autowired
	private RightInformationService rightInformationService;
	@Autowired
	private CollectFeesService collectFeesService;
   int parcelunitId;
	@RequestMapping("/success")
    public ModelAndView success(HttpSession session,Model model,Map<String, Object> modelList){
   	 ModelAndView mv=new ModelAndView("/boxOffice/collectFeesTable");
   	 List<yw_RightInformation> yw_RightInformations=rightInformationService.selectRightInformationByBoxOfficeId(GlobalConstant.boxofficeid);
   	modelList.put("yw_RightInformations", yw_RightInformations);
   	
	
     //yw_RightInformation SfRightInformation=rightInformationService.selectSfRightInformation(GlobalConstant.boxofficeid);
     List<yw_CollectFeesInformation> yw_CollectFeesInformations=collectFeesService.selectCollectFeesInformation();
     modelList.put("yw_CollectFeesInformations", yw_CollectFeesInformations);
   	 
   	 return mv;
    }
	@RequestMapping("/selectCollectFees")
    public ModelAndView selectCollectFees(HttpSession session,Model model,Map<String, Object> modelList,int parcelunitid){
   	 ModelAndView mv=new ModelAndView("/boxOffice/collectFees");
  
   	 parcelunitId=parcelunitid;
     yw_RightInformation SfRightInformation=rightInformationService.selectSfRightInformation(parcelunitid);
     List<yw_CollectFeesInformation> yw_CollectFeesInformations=collectFeesService.selectCollectFeesInformation();
     modelList.put("yw_CollectFeesInformations", yw_CollectFeesInformations);
   
     model.addAttribute("SfRightInformation", SfRightInformation);
 	yw_CollectFees collectFeesById=collectFeesService.selectCollectFeesById(SfRightInformation.getRightinformationid());
  	model.addAttribute("collectFeesById", collectFeesById);
  	
  	List<yw_CollectFeesInformation> collectFeesInformations=collectFeesService.selectCollectFeesMxById(SfRightInformation.getRightinformationid());
  	 modelList.put("collectFeesInformations", collectFeesInformations);
 	 session.getAttribute("username");
   	 return mv;
    }
	
	  @ResponseBody
	  @RequestMapping(value="/selectCollectFeesInformations",produces="application/json")
	  public void selectOpiniontemplatename(HttpServletResponse response,HttpServletRequest request) throws IOException{
		
		  List<yw_CollectFeesInformation> yw_CollectFeesInformations=collectFeesService.selectCollectFeesInformation();		
		  JSONArray jsonArray=JSONArray.fromObject(yw_CollectFeesInformations);		
		   	 response.getWriter().print(jsonArray.toString());
		     response.getWriter().flush();
		     response.getWriter().close();    
	  }
	  
	  @RequestMapping("/insertCollectFees")
	  public ModelAndView insertCollectFees(HttpSession session,int rightinformationid,String totalmoney,String cFeesInformationID,Model model,Map<String, Object> modelList){
		  ModelAndView mv=new ModelAndView("/boxOffice/collectFees");
		  int collectFeesId;
			GlobalConstant.userID=(Integer) session.getAttribute("userID");
		  yw_CollectFees yw_CollectFees=new yw_CollectFees();
		  yw_CollectFees.setRightinformationid(rightinformationid);
		  BigDecimal money=new BigDecimal(totalmoney);
		  yw_CollectFees.setCharge(money);
		  yw_CollectFees.setUserid(GlobalConstant.userID);
		  
			 Date date=new Date();  	 
		   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd");
		 	 String billingDate=sfDateFormat.format(date);
		    yw_CollectFees.setBillingdate(billingDate);
		    collectFeesService.insertCollectFees(yw_CollectFees);
		    collectFeesId=yw_CollectFees.getCollectfeesid();
		    StringTokenizer tokenizer=new StringTokenizer(cFeesInformationID,";");
		    		    
	      	while (tokenizer.hasMoreTokens()) {
	 		long id = Long.parseLong(tokenizer.nextToken());		
	 		int cFeesInformationid=(int)id;	
	 		yw_CollectFeesMx yw_CollectFeesMx=new yw_CollectFeesMx();
	 		yw_CollectFeesMx.setCollectfeesid(collectFeesId);
	 		yw_CollectFeesMx.setCollectfeesinformationid(cFeesInformationid);
	 		collectFeesService.insertCollectFeesMx(yw_CollectFeesMx);	 		
	 	}  
	        yw_RightInformation SfRightInformation=rightInformationService.selectSfRightInformation(parcelunitId);
		     List<yw_CollectFeesInformation> yw_CollectFeesInformations=collectFeesService.selectCollectFeesInformation();
		     modelList.put("yw_CollectFeesInformations", yw_CollectFeesInformations);
		   
		     model.addAttribute("SfRightInformation", SfRightInformation);
		 	yw_CollectFees collectFeesById=collectFeesService.selectCollectFeesById(SfRightInformation.getRightinformationid());
		  	model.addAttribute("collectFeesById", collectFeesById);
		  	
		  	List<yw_CollectFeesInformation> collectFeesInformations=collectFeesService.selectCollectFeesMxById(SfRightInformation.getRightinformationid());
		  	 modelList.put("collectFeesInformations", collectFeesInformations);
		 	 session.getAttribute("username");
		return mv;		  		  
	  }
	  
	  @RequestMapping("/delete")
	    public ModelAndView delete(HttpSession session,Model model,Map<String, Object> modelList,int rightinformationid){
	   	 ModelAndView mv=new ModelAndView("/boxOffice/collectFees");
	   	
	     yw_RightInformation yw_RightInformation=rightInformationService.selectSfRightInformation(GlobalConstant.boxofficeid);
	   	yw_CollectFees yw_CollectFees=collectFeesService.selectCollectFeesById(yw_RightInformation.getRightinformationid());	  	  	
	  	  	
	  	collectFeesService.deleteCollectFeesMxByQlId(yw_CollectFees.getCollectfeesid());
	  	collectFeesService.deleteCollectFeesByQlId(rightinformationid);
	     yw_RightInformation SfRightInformation=rightInformationService.selectSfRightInformation(parcelunitId);
	     List<yw_CollectFeesInformation> yw_CollectFeesInformations=collectFeesService.selectCollectFeesInformation();
	     modelList.put("yw_CollectFeesInformations", yw_CollectFeesInformations);
	   
	     model.addAttribute("SfRightInformation", SfRightInformation);
	 	yw_CollectFees collectFeesById=collectFeesService.selectCollectFeesById(SfRightInformation.getRightinformationid());
	  	model.addAttribute("collectFeesById", collectFeesById);
	  	
	  	List<yw_CollectFeesInformation> collectFeesInformations=collectFeesService.selectCollectFeesMxById(SfRightInformation.getRightinformationid());
	  	 modelList.put("collectFeesInformations", collectFeesInformations);
	 	 session.getAttribute("username");
	   	   	 return mv;
	    }
	 
}
