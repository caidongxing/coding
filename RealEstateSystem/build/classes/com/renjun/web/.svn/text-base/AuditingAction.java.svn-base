package com.renjun.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import com.renjun.po.bs_OpinionTemplate;
import com.renjun.po.yw_AuditingOpinion;
import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RecheckOpiniont;
import com.renjun.service.AuditingService;
import com.renjun.service.DataBaseService;
import com.renjun.service.ReceivingDataService;
import com.renjun.vo.yw_ReceivingData;

@Controller
@RequestMapping("/AuditingController")
public class AuditingAction {

	@Resource
	private DataBaseService dataBaseService;
	@Resource
	private AuditingService auditingService;
	
	@Resource 
	private ReceivingDataService receivingDataService;
	
	  @RequestMapping("/auditing")
	    public ModelAndView Applicant(Model model,Map<String, Object> modelList,HttpSession session){
	    	ModelAndView mv=new ModelAndView("/boxOffice/auditing"); 
	    	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
	    	  model.addAttribute("quarterstypeid", GlobalConstant.quarterstypeid);
	    	  if(GlobalConstant.quarterstypeid==2){
	    	  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectFirstOpiniont(GlobalConstant.boxofficeid);
		    	model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);
		    	}
	    	  if(GlobalConstant.quarterstypeid==3){
		    	  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectRecheckopiniontByboxOfficeId(GlobalConstant.boxofficeid);
			    	model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);
			    	}
	    	  Commonmethods(modelList);
	    	return mv;
	    }	 
	  
	  
	  public String Commonmethods(Map<String, Object> modelList){
			List<bs_OpinionTemplate> bs_OpinionTemplates=dataBaseService.selectOpinionTemplate();
	    	List<yw_ReceivingData> yw_ReceivingDatas=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);
	    	
	    	modelList.put("bs_OpinionTemplates", bs_OpinionTemplates);
	    	modelList.put("yw_ReceivingDatas", yw_ReceivingDatas);
	    	
		return null;
		  
	  }
	  @RequestMapping("/insertFirstOpiniont")
	    public ModelAndView insertFirstOpiniont(Model model,HttpServletRequest request,Map<String, Object> modelList,HttpSession session) throws UnsupportedEncodingException, ParseException{
		  
		  String firstOpiniont="";
		  firstOpiniont = new String(request.getParameter("firstOpiniont").getBytes("iso-8859-1"),"utf-8");
	    	ModelAndView mv=new ModelAndView("/boxOffice/auditing"); 
	    	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
	    	if(GlobalConstant.quarterstypeid==1){
	    	yw_FirstOpiniont yw_firstOpiniont=new yw_FirstOpiniont();
	    	yw_firstOpiniont.setFirstopiniontname(firstOpiniont);
	    	yw_firstOpiniont.setBoxofficeid(GlobalConstant.boxofficeid);
	    	 Date date=new Date();  	 
	  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	  	 	 String endtime=sfDateFormat.format(date);
	  	   	 Date beginTime=sfDateFormat.parse(endtime);
	  	     yw_firstOpiniont.setCreatetime(beginTime);
	  	    System.out.println(beginTime);
	  	    
	    	auditingService.insertFirstOpiniont(yw_firstOpiniont);
	    	}
	    	if(GlobalConstant.quarterstypeid==2){	    		
	    		yw_RecheckOpiniont yw_RecheckOpiniont=new yw_RecheckOpiniont();	    		
	    		yw_RecheckOpiniont.setRecheckopiniontname(firstOpiniont);
	    		yw_RecheckOpiniont.setBoxofficeid(GlobalConstant.boxofficeid);
	    		Date date=new Date();  	 
		  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		  	 	 String endtime=sfDateFormat.format(date);
		  	   	 Date beginTime=sfDateFormat.parse(endtime);
		  	   yw_RecheckOpiniont.setCreatetime(beginTime);
	    		auditingService.insertRecheckopiniont(yw_RecheckOpiniont);
	    		
				  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectFirstOpiniont(GlobalConstant.boxofficeid);
			    	model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);
	    	}
	    	if(GlobalConstant.quarterstypeid==3){	 
	    		yw_AuditingOpinion yw_AuditingOpinion=new yw_AuditingOpinion();
	    		yw_AuditingOpinion.setAuditingopinionname(firstOpiniont);
	    		yw_AuditingOpinion.setBoxofficeid(GlobalConstant.boxofficeid);
	    		  Date date=new Date();
			  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			  	 	 String endtime=sfDateFormat.format(date);
			  	   	 Date beginTime=sfDateFormat.parse(endtime);
			  	   yw_AuditingOpinion.setCreatetime(beginTime);
	    		auditingService.insertAuditingOpinion(yw_AuditingOpinion);
	    		
	    		  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectRecheckopiniontByboxOfficeId(GlobalConstant.boxofficeid);
			    	model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);
	    	}
	    	
	    	    Commonmethods(modelList);
	    	return mv;
	    }
	  
	    @ResponseBody
		@RequestMapping(value="/checkOpiniont",produces="text/html;charset=UTF-8")  
		   public Object checkOpiniont(HttpSession session){
	    	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
	    	yw_FirstOpiniont yw_FirstOpiniont=new yw_FirstOpiniont();
	    	yw_FirstOpiniont getFirstOpiniont=auditingService.selectFirstOpiniont(GlobalConstant.boxofficeid);
	    				  if(GlobalConstant.quarterstypeid==1){
				  if(getFirstOpiniont!=null){
					  yw_FirstOpiniont.setJsonresult("fineOpiniont");
					  yw_FirstOpiniont.setFirstopiniontname(getFirstOpiniont.getFirstopiniontname());
					  System.out.println(getFirstOpiniont.getFirstopiniontname());
				  }
				  else {
					  yw_FirstOpiniont.setJsonresult("notfindOpiniont");
				}	
				  return JSONSerializer.toJSON(yw_FirstOpiniont).toString();
		    	}
	    				  
			  if(GlobalConstant.quarterstypeid==2){
					yw_RecheckOpiniont yw_RecheckOpiniont=new yw_RecheckOpiniont();
					  yw_RecheckOpiniont getRecheckOpiniont=auditingService.selectRecheckopiniont(GlobalConstant.boxofficeid);

			  if(getRecheckOpiniont!=null){
				  yw_RecheckOpiniont.setJsonresult("fineOpiniont");
				  yw_RecheckOpiniont.setRecheckopiniontname(getRecheckOpiniont.getRecheckopiniontname());
				  System.out.println(getRecheckOpiniont.getRecheckopiniontname());
			  }
			  else {
				  yw_RecheckOpiniont.setJsonresult("notfindOpiniont");
			} 	
			  return JSONSerializer.toJSON(yw_RecheckOpiniont).toString();
	    	}
			  if(GlobalConstant.quarterstypeid==3){
				  yw_AuditingOpinion yw_AuditingOpinion=new yw_AuditingOpinion();
				  yw_AuditingOpinion getAuditingName=auditingService.selectAuditingOpinion(GlobalConstant.boxofficeid);
				  if(getAuditingName!=null){
					  yw_AuditingOpinion.setJsonresult("fineOpiniont");
					  yw_AuditingOpinion.setAuditingopinionname(getAuditingName.getAuditingopinionname());
					  System.out.println(getAuditingName.getAuditingopinionname());
				  }
				  else {
					  yw_AuditingOpinion.setJsonresult("notfindOpiniont");
				}	
				  return JSONSerializer.toJSON(yw_AuditingOpinion).toString();
			  }
			return null;
			 
		   }
	  
	  @ResponseBody
	  @RequestMapping(value="/insertOpiniontemplatename",produces="application/json")
	  public void insertApplicant(HttpServletResponse response,HttpServletRequest request) throws IOException{
		  String opiniontemplatename="";
		  opiniontemplatename = new String(request.getParameter("opiniontemplatename").getBytes("iso-8859-1"),"utf-8");
		  bs_OpinionTemplate bs_opinionTemplate=new bs_OpinionTemplate();
		  bs_opinionTemplate.setOpiniontemplatename(opiniontemplatename);
		  dataBaseService.insertOpinionTemplate(bs_opinionTemplate);
		  List<bs_OpinionTemplate> bs_OpinionTemplates=dataBaseService.selectOpinionTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bs_OpinionTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/updateOpiniontemplatename",produces="application/json")
	  public void updateOpiniontemplatename(HttpServletResponse response,HttpServletRequest request,int opiniontemplateid) throws IOException{
		  String opiniontemplatename="";
		  opiniontemplatename = new String(request.getParameter("opiniontemplatename").getBytes("iso-8859-1"),"utf-8");
		  bs_OpinionTemplate bs_opinionTemplate=new bs_OpinionTemplate();
		  bs_opinionTemplate.setOpiniontemplatename(opiniontemplatename);
		  bs_opinionTemplate.setOpiniontemplateid(opiniontemplateid);
		  dataBaseService.updateOpinionTemplate(bs_opinionTemplate);
		  List<bs_OpinionTemplate> bs_OpinionTemplates=dataBaseService.selectOpinionTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bs_OpinionTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/selectOpiniontemplatename",produces="application/json")
	  public void selectOpiniontemplatename(HttpServletResponse response,HttpServletRequest request) throws IOException{
		  String opiniontemplatename="";
		  opiniontemplatename = new String(request.getParameter("opiniontemplatename").getBytes("iso-8859-1"),"utf-8"); 		  
		  List<bs_OpinionTemplate> bs_OpinionTemplates=dataBaseService.selectOpinionTemplateMh(opiniontemplatename);
		  JSONArray jsonArray=JSONArray.fromObject(bs_OpinionTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="/deleteOpiniontemplatename",produces="application/json")
	  public void deleteOpiniontemplatename(HttpServletResponse response,HttpServletRequest request,int opiniontemplateid) throws IOException{
		  dataBaseService.deleteOpinionTemplate(opiniontemplateid);
		  List<bs_OpinionTemplate> bs_OpinionTemplates=dataBaseService.selectOpinionTemplate();
		  JSONArray jsonArray=JSONArray.fromObject(bs_OpinionTemplates);		
		   	 response.getWriter().print(jsonArray.toString());  
		     response.getWriter().flush();  
		     response.getWriter().close();    
	  }
	  
	  @RequestMapping("/updateRecheckopiniont")
	    public ModelAndView updateRecheckopiniont(HttpServletRequest request,Map<String, Object> modelList,Model model) throws UnsupportedEncodingException, ParseException{
	    	ModelAndView mv=new ModelAndView("/boxOffice/auditing");
	    	
	    	  String firstOpiniont="";
			  firstOpiniont = new String(request.getParameter("firstOpiniont").getBytes("iso-8859-1"),"utf-8");
			  
			  if(GlobalConstant.quarterstypeid==1){
				  yw_FirstOpiniont yw_firstOpiniont=new yw_FirstOpiniont();	
				  yw_firstOpiniont.setFirstopiniontname(firstOpiniont);
				  yw_firstOpiniont.setBoxofficeid(GlobalConstant.boxofficeid);
				 	 Date date=new Date();  	 
			  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			  	 	 String endtime=sfDateFormat.format(date);
			  	   	 Date beginTime=sfDateFormat.parse(endtime);
			  	    yw_firstOpiniont.setCreatetime(beginTime);
			  	    System.out.println(beginTime);
				  auditingService.updateFirstopiniont(yw_firstOpiniont);
				 
			      }
			   
			  if(GlobalConstant.quarterstypeid==2){
			  yw_RecheckOpiniont yw_RecheckOpiniont=new yw_RecheckOpiniont();	
			  yw_RecheckOpiniont.setRecheckopiniontname(firstOpiniont);
			  yw_RecheckOpiniont.setBoxofficeid(GlobalConstant.boxofficeid);
			  Date date=new Date();  	 
		  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		  	 	 String endtime=sfDateFormat.format(date);
		  	   	 Date beginTime=sfDateFormat.parse(endtime);
		  	   yw_RecheckOpiniont.setCreatetime(beginTime);
			  auditingService.updateRecheckopiniont(yw_RecheckOpiniont);
			  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectFirstOpiniont(GlobalConstant.boxofficeid);
		      model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);	    	 
			  }
			  if(GlobalConstant.quarterstypeid==3){
				  yw_AuditingOpinion yw_AuditingOpinion=new yw_AuditingOpinion();
				  yw_AuditingOpinion.setAuditingopinionname(firstOpiniont);
				  yw_AuditingOpinion.setBoxofficeid(GlobalConstant.boxofficeid);
				  Date date=new Date();  	 
			  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			  	 	 String endtime=sfDateFormat.format(date);
			  	   	 Date beginTime=sfDateFormat.parse(endtime);
			  	   yw_AuditingOpinion.setCreatetime(beginTime);
				  auditingService.updateAuditingOpinion(yw_AuditingOpinion);
				  yw_FirstOpiniont yw_FirstOpiniont=auditingService.selectRecheckopiniontByboxOfficeId(GlobalConstant.boxofficeid);
			      model.addAttribute("yw_FirstOpiniont", yw_FirstOpiniont);
			  }
			  Commonmethods(modelList);
	    	return mv;
	    }	 
}
