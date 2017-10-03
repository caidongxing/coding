package com.renjun.web;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONSerializer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.renjun.common.GlobalConstant;
import com.renjun.dao.yw_SzBoxOfficeMapper;
import com.renjun.po.IdentifierNumber;
import com.renjun.po.bs_RegisterType;
import com.renjun.po.bs_TypeofRight;
import com.renjun.po.yw_BoxOffice;
import com.renjun.po.yw_DbBoxOffice;
import com.renjun.po.yw_FsBoxOffice;
import com.renjun.po.yw_FzBoxOffice;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.po.yw_SfBoxOffice;
import com.renjun.po.yw_ShBoxOffice;
import com.renjun.po.yw_SzBoxOffice;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.DataBaseService;
import com.renjun.service.UserService;

@Controller
@RequestMapping("/boxOfficeController")
public class boxOfficeAction {
   	   
	@Resource 
	private DataBaseService dataBaseService;
	
	@Resource 
	private BoxOfficeService boxOfficeService;

	
	@Resource
	private UserService userService;
    @RequestMapping("/selectBoxOffice")
    public ModelAndView success(Map<String, Object> model,HttpSession session,HttpServletRequest request){
   	 ModelAndView mv=new ModelAndView("/boxOffice/box_office");  
     	GlobalConstant.SESSION_PFUSER=(String) session.getAttribute("SESSION_PFUSER"); 	
   	    session.setAttribute("username", GlobalConstant.SESSION_PFUSER);  	     
   	    session.getAttribute("quarterstypeid"); 	
   	     modellist(model,session);
   	    return mv;  	       	    
    }
    
    @RequestMapping("/updateBoxOfficeByUserid")
    public ModelAndView updateBoxOfficeByUserid(int userid,Map<String, Object> model,HttpSession session) throws ParseException{
   	 ModelAndView mv=new ModelAndView("/boxOffice/box_office"); 
   	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
   	 if(GlobalConstant.quarterstypeid==1){
   	 yw_FsBoxOffice yw_FsBoxOffice=new yw_FsBoxOffice();
   	 yw_FsBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	 yw_FsBoxOffice.setUserid(userid);
   	 yw_FsBoxOffice.setStatusid(1);
   	 yw_FsBoxOffice.setOverrule("0");
   	 yw_FsBoxOffice.setSend("1");
   	 Date date=new Date();
   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
 	 String endtime=sfDateFormat.format(date);
   	 Date beginTime=sfDateFormat.parse(endtime);
   	 yw_FsBoxOffice.setReceivingtime(beginTime);
   	 boxOfficeService.insertFsBoxOffice(yw_FsBoxOffice);
   	
   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	 yw_BoxOffice.setManagementactivitiesid(2);
   	 yw_BoxOffice.setStatusid(2);
   	 yw_BoxOffice.setCutOfftime(endtime);
    	yw_BoxOffice.setOverrule("0");
    	yw_BoxOffice.setOverrulereason("");
   	 boxOfficeService.updateBoxOfficeByUserid(yw_BoxOffice);
   	 }
   	 if(GlobalConstant.quarterstypeid==2){
   		 yw_ShBoxOffice yw_ShBoxOffice=new yw_ShBoxOffice();
   		yw_ShBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   		yw_ShBoxOffice.setUserid(userid);
   		yw_ShBoxOffice.setStatusid(1);
   		yw_ShBoxOffice.setOverrule("0");
   		yw_ShBoxOffice.setSend("1");
   	   	 Date date=new Date();  	 
   	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
   	 	 String endtime=sfDateFormat.format(date);
   	   	 Date beginTime=sfDateFormat.parse(endtime);
   	     yw_ShBoxOffice.setReceivingtime(beginTime);
   	   	 boxOfficeService.insertShBoxOffice(yw_ShBoxOffice);
   	   	
   	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
   	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	   	 yw_BoxOffice.setManagementactivitiesid(3);  	   	   	      	   	
   	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
   	   	 
   	    yw_FsBoxOffice yw_FsBoxOffice=new yw_FsBoxOffice();
   	 yw_FsBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	yw_FsBoxOffice.setStatusid(2);
   	yw_FsBoxOffice.setCutOffTime(endtime);
   	yw_FsBoxOffice.setOverrule("0");
   	yw_FsBoxOffice.setOverrulereason("");
     	boxOfficeService.updateFsBoxOffice(yw_FsBoxOffice);
   	 }
   	if(GlobalConstant.quarterstypeid==3){
  		 yw_DbBoxOffice yw_DbBoxOffice=new yw_DbBoxOffice();
  		yw_DbBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
  		yw_DbBoxOffice.setUserid(userid);
  		yw_DbBoxOffice.setStatusid(1);
  		yw_DbBoxOffice.setOverrule("0");
  		yw_DbBoxOffice.setSend("1");
  	   	 Date date=new Date();  	 
  	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
  	 	 String endtime=sfDateFormat.format(date);
  	   	 Date beginTime=sfDateFormat.parse(endtime);
  	     yw_DbBoxOffice.setReceivingtime(beginTime);
  	   	 boxOfficeService.insertDbBoxOffice(yw_DbBoxOffice);
  	   	
  	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
  	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
  	   	 yw_BoxOffice.setManagementactivitiesid(4);  	   	   	      	   	
  	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
  	   	 
  	     yw_ShBoxOffice ywShBoxOffice=new yw_ShBoxOffice();
  	    ywShBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
  	    ywShBoxOffice.setStatusid(2);
    	ywShBoxOffice.setCutOffTime(endtime);
    	ywShBoxOffice.setOverrule("0");
    	ywShBoxOffice.setOverrulereason("");
    	boxOfficeService.updateShBoxOffice(ywShBoxOffice);
  	 }
   	if(GlobalConstant.quarterstypeid==4){
 		 yw_SzBoxOffice yw_SzBoxOffice=new yw_SzBoxOffice();
 	  	yw_SzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
 		yw_SzBoxOffice.setUserid(userid);
 		yw_SzBoxOffice.setStatusid(1);
 		yw_SzBoxOffice.setOverrule("0");
 		yw_SzBoxOffice.setSend("1");
 	   	 Date date=new Date();
 	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
 	 	 String endtime=sfDateFormat.format(date);
 	   	 Date beginTime=sfDateFormat.parse(endtime);
 	   	yw_SzBoxOffice.setReceivingtime(beginTime);
 	   	 boxOfficeService.insertSzBoxOffice(yw_SzBoxOffice);
 	   	
 	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
 	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
 	   	 yw_BoxOffice.setManagementactivitiesid(5);  	   	   	      	   	
 	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
 	   	 
 	    yw_DbBoxOffice yw_DbBoxOffice=new yw_DbBoxOffice();
 	    yw_DbBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
 	    yw_DbBoxOffice.setStatusid(2);
 	    yw_DbBoxOffice.setCutOffTime(endtime);
 	    yw_DbBoxOffice.setOverrule("0");
 	    yw_DbBoxOffice.setOverrulereason("");
    	boxOfficeService.updateDbBoxOffice(yw_DbBoxOffice);
 	 }
   	if(GlobalConstant.quarterstypeid==5){
		 yw_SfBoxOffice yw_SfBoxOffice=new yw_SfBoxOffice();
		 yw_SfBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
		 yw_SfBoxOffice.setUserid(userid);
		 yw_SfBoxOffice.setStatusid(1);
		 yw_SfBoxOffice.setOverrule("0");
		 yw_SfBoxOffice.setSend("1");
	   	 Date date=new Date();  	 
	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	 	 String endtime=sfDateFormat.format(date);
	   	 Date beginTime=sfDateFormat.parse(endtime);
	   	yw_SfBoxOffice.setReceivingtime(beginTime);
	   	 boxOfficeService.insertSfBoxOffice(yw_SfBoxOffice);
	   	
	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(6);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
	   	 
	     yw_SzBoxOffice yw_SzBoxOffice=new yw_SzBoxOffice();
	     yw_SzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_SzBoxOffice.setStatusid(2);
	     yw_SzBoxOffice.setCutOffTime(endtime);
	     yw_SzBoxOffice.setOverrule("0");
	     yw_SzBoxOffice.setOverrulereason("");
       	 boxOfficeService.updateSzBoxOffice(yw_SzBoxOffice);
	 }
   	if(GlobalConstant.quarterstypeid==6){
		 yw_FzBoxOffice yw_FzBoxOffice=new yw_FzBoxOffice();
		 yw_FzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
		 yw_FzBoxOffice.setUserid(userid);
		 yw_FzBoxOffice.setStatusid(1);
		 yw_FzBoxOffice.setOverrule("0");
		 yw_FzBoxOffice.setSend("1");
	   	 Date date=new Date();  	 
	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	 	 String endtime=sfDateFormat.format(date);
	   	 Date beginTime=sfDateFormat.parse(endtime);
	   	yw_FzBoxOffice.setReceivingtime(beginTime);
	   	 boxOfficeService.insertFzBoxOffice(yw_FzBoxOffice);
	   	
	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(7);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
	   	 
	     yw_SfBoxOffice yw_SfBoxOffice=new yw_SfBoxOffice();
	     yw_SfBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_SfBoxOffice.setStatusid(2);
	     yw_SfBoxOffice.setCutOffTime(endtime);
	     yw_SfBoxOffice.setOverrule("0");
	     yw_SfBoxOffice.setOverrulereason("");
      	 boxOfficeService.updateSfboxoffice(yw_SfBoxOffice);
	 }
   	if(GlobalConstant.quarterstypeid==7){
		 yw_GdBoxOffice yw_GdBoxOffice=new yw_GdBoxOffice();
		 yw_GdBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
		 yw_GdBoxOffice.setUserid(userid);
		 yw_GdBoxOffice.setStatusid(1);
		 yw_GdBoxOffice.setOverrule("0");
		 yw_GdBoxOffice.setSend("1");
	   	 Date date=new Date();  	 
	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	 	 String endtime=sfDateFormat.format(date);
	   	 Date beginTime=sfDateFormat.parse(endtime);
	   	yw_GdBoxOffice.setReceivingtime(beginTime);
	   	 boxOfficeService.insertGdBoxOffice(yw_GdBoxOffice);
	   	
	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(8);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
	   	 
	     yw_FzBoxOffice yw_FzBoxOffice=new yw_FzBoxOffice();
	     yw_FzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_FzBoxOffice.setStatusid(2);
	     yw_FzBoxOffice.setCutOffTime(endtime);
	     yw_FzBoxOffice.setOverrule("0");
	     yw_FzBoxOffice.setOverrulereason("");
     	 boxOfficeService.updateFzBoxOffice(yw_FzBoxOffice);
	 }
	
   	return mv;
    }
    @RequestMapping("/banjieBoxOffice")
    public ModelAndView banjieBoxOffice(Map<String, Object> model,HttpSession session){
    	ModelAndView mv=new ModelAndView("/boxOffice/box_office");
    	
   	   	 Date date=new Date();  	 
   	   	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
   	 	 String endtime=sfDateFormat.format(date);
   	   
   	   	
   	   	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
   	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	   	 yw_BoxOffice.setManagementactivitiesid(9);  	   	   	      	   	
   	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
   	   	 
   	     yw_GdBoxOffice yw_GdBoxOffice=new yw_GdBoxOffice();
   	     yw_GdBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
   	     yw_GdBoxOffice.setStatusid(2);
   	     yw_GdBoxOffice.setCutOffTime(endtime);
       	 boxOfficeService.updateGdBoxOffice(yw_GdBoxOffice);
   	 
        modellist(model,session);
		return mv;      
    }
    
    public  void modellist(Map<String, Object> model,HttpSession session){
    	List<bs_RegisterType> bs_RegisterTypes=dataBaseService.selectregistertype();
 		List<bs_TypeofRight> bs_TypeofRights=dataBaseService.selectTypeofRight();
 		
 		GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
 		GlobalConstant.SESSION_PFUSER=(String) session.getAttribute("SESSION_PFUSER");
 		System.out.println(GlobalConstant.quarterstypeid);
 		if(GlobalConstant.quarterstypeid==1){
 		List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectBoxOffice(1);
 		  model.put("yw_BoxOffices", yw_BoxOffices);
 		}if(GlobalConstant.quarterstypeid==2){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectFsBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==3){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectShBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==4){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectDbBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==5){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectSzBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==6){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectSfBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==7){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectFzBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		if(GlobalConstant.quarterstypeid==8){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectGdBoxOffice(1,GlobalConstant.SESSION_PFUSER);
 			model.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
 		model.put("bs_RegisterTypes", bs_RegisterTypes);
 	    model.put("bs_TypeofRights", bs_TypeofRights);	          	
    }
   //办箱新增
	@RequestMapping("/insertBoxOffice")
    public ModelAndView insertBoxOffice(HttpServletRequest request,int registertypeid,int TypeofRightsId,
    		int processclassificationid,
    		String receivingtime,Map<String, Object> model,HttpSession session) throws ParseException{ 	
		
 		GlobalConstant.userID=(Integer) session.getAttribute("userID");
    	 ModelAndView mv=new ModelAndView("/boxOffice/box_office"); 
    	 yw_BoxOffice ywBoxOffice=new yw_BoxOffice();
    	      	    		      
    	 String entryName = "";
    	 String projectnotes="";
    	 String urgencylevel="";
		try {
			entryName = new String(request.getParameter("entryName").getBytes("iso-8859-1"),"utf-8");
			projectnotes = new String(request.getParameter("projectnotes").getBytes("iso-8859-1"),"utf-8");
			urgencylevel = new String(request.getParameter("urgencylevel").getBytes("iso-8859-1"),"utf-8");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	 	    
		
    	 ywBoxOffice.setRegistertypeid(registertypeid);
    	 ywBoxOffice.setTypeofrightid(TypeofRightsId);
    	 ywBoxOffice.setProcessclassificationid(processclassificationid);
    	 ywBoxOffice.setEntryname(entryName);
    	 ywBoxOffice.setUrgencylevel(urgencylevel);
    	 ywBoxOffice.setProjectnotes(projectnotes);
    	 ywBoxOffice.setUserid(GlobalConstant.userID);
    	 ywBoxOffice.setManagementactivitiesid(1);
    	 SimpleDateFormat sfDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    	 Date begindate=sfDateFormat.parse(receivingtime);  	
    	 System.out.println(identifier(n));       
         String identifier=String.valueOf(identifier(n)) ;
        
    	 Timestamp timestamp=new Timestamp(begindate.getTime());
    	
    	 ywBoxOffice.setIdentifier(identifier);
    	 ywBoxOffice.setReceivingtime(timestamp);
    	 ywBoxOffice.setCutOfftime("");
    	 ywBoxOffice.setStatusid(1);
    	 boxOfficeService.insertBoxOffice(ywBoxOffice);
    	  modellist(model,session);
     	    session.setAttribute("username", GlobalConstant.SESSION_PFUSER);
     	   IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(1);
     	   dataBaseService.updateIdentifiernumber(identifierNumber);
           return mv;
    }    
    private static long n = 1;
    public  long identifier(long strNumber) {
    	IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(1);
    	 strNumber=Long.parseLong(identifierNumber.getIdentifiernumbername());
    	  String str = new SimpleDateFormat("yyyyMMdd")
    	    .format(new java.util.Date());
    	  long m = Long.parseLong((str)) * 10000;
    	  long ret = m + strNumber;       	  
    	  return ret;
    	 }  
    String zsbhNumber;
    @ResponseBody
    @RequestMapping(value="/selectZsbhNumber",produces="application/json")  
    public Object zsbh(){   	
    	IdentifierNumber number=new IdentifierNumber();
    	IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(2);
        String numberString=identifierNumber.getIdentifiernumbername();
        String str = new SimpleDateFormat("yyyyMMdd")
	    .format(new java.util.Date());
        switch (numberString.length()) {
		case 1:
			zsbhNumber="360"+str+"00000"+numberString;
			number.setJsonresult(zsbhNumber);
			break;
		case 2:
			zsbhNumber="360"+str+"0000"+numberString;
			number.setJsonresult(zsbhNumber);
			break;
		case 3:
			zsbhNumber="360"+str+"000"+numberString;
			number.setJsonresult(zsbhNumber);
			break;
		case 4:
			zsbhNumber="360"+str+"00"+numberString;
			number.setJsonresult(zsbhNumber);
			break;
		case 5:
			zsbhNumber="360"+str+"0"+numberString;
			number.setJsonresult(zsbhNumber);
			break;
		default:
			break;
		}     
		return JSONSerializer.toJSON(number).toString();
    }
    @RequestMapping("/box_officeMessage")
    public ModelAndView box_officeMessage(HttpServletRequest request, Model model,Map<String, Object> modelList,int boxofficeid,HttpSession session){
    	ModelAndView mv=new ModelAndView("/boxOffice/box_officeMessage");     
    	GlobalConstant.boxofficeid=boxofficeid;     
    	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
 		
    	String statusname="";
    	try {
			statusname = new String(request.getParameter("statusname").getBytes("iso-8859-1"),"utf-8");
			System.out.println(statusname);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	if(GlobalConstant.quarterstypeid==1){
        List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(2);
        modelList.put("users", users);
        }
    	if(GlobalConstant.quarterstypeid==2){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(3);
            
            modelList.put("users", users);
          }
    	if(GlobalConstant.quarterstypeid==3){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(4);
            modelList.put("users", users);
          }
    	if(GlobalConstant.quarterstypeid==4){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(5);
            modelList.put("users", users);
          }
    	if(GlobalConstant.quarterstypeid==5){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(6);
            modelList.put("users", users);
          }
    	if(GlobalConstant.quarterstypeid==6){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(7);
            modelList.put("users", users);
          }
    	if(GlobalConstant.quarterstypeid==7){
            List<com.renjun.vo.User> users=userService.selectUserByQuartersTypeId(8);
            modelList.put("users", users);
          }
        model.addAttribute("quarterstypeid", GlobalConstant.quarterstypeid);  
        model.addAttribute("statusName", statusname);
    	return mv;
    }
    @RequestMapping("/ItemInformation")
    public ModelAndView ItemInformation(Model model,Map<String, Object> modelList){
    	ModelAndView mv=new ModelAndView("/boxOffice/ItemInformation");      
    	if(GlobalConstant.quarterstypeid==1){
        com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
        com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid);   
        com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
        com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    	com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    	com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

        
        model.addAttribute("box_officeMessage", one); 
        model.addAttribute("timeaxis_one", one);
        model.addAttribute("statusid", one.getStatusid());
        model.addAttribute("timeaxis_two", two);   
        model.addAttribute("timeaxis_three", three);  
    	model.addAttribute("timeaxis_four", four); 
    	model.addAttribute("timeaxis_five", five); 
    	model.addAttribute("timeaxis_six", six); 
		model.addAttribute("timeaxis_seven", seven); 
		model.addAttribute("timeaxis_eight", eight); 
    	}
    	if(GlobalConstant.quarterstypeid==2){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);
             
    		yw_FsBoxOffice yw_FsBoxOffice=new yw_FsBoxOffice();
    		yw_FsBoxOffice.setSend("0");
    		yw_FsBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateFsBoxOfficeSend(yw_FsBoxOffice);
    		
    		model.addAttribute("box_officeMessage", two); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", two.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three);  
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five);
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	}   	
    	if(GlobalConstant.quarterstypeid==3){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

    		yw_ShBoxOffice yw_ShBoxOffice=new yw_ShBoxOffice();
    		yw_ShBoxOffice.setSend("0");
    		yw_ShBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateShBoxOfficeSend(yw_ShBoxOffice);
    		
    		model.addAttribute("box_officeMessage", three); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", three.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three);  
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	}   	
    	if(GlobalConstant.quarterstypeid==4){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

    		yw_DbBoxOffice yw_DbBoxOffice=new yw_DbBoxOffice();
    		yw_DbBoxOffice.setSend("0");
    		yw_DbBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateDbBoxOfficeSend(yw_DbBoxOffice);
    		
    		model.addAttribute("box_officeMessage", four); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", four.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three); 
    		model.addAttribute("timeaxis_four", four);  
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	}   	
    	if(GlobalConstant.quarterstypeid==5){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

    		yw_SzBoxOffice yw_SzBoxOffice=new yw_SzBoxOffice();
    		yw_SzBoxOffice.setSend("0");
    		yw_SzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateSzBoxOfficeSend(yw_SzBoxOffice);
    		
    		model.addAttribute("box_officeMessage", five); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", five.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three); 
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	}   	
    	if(GlobalConstant.quarterstypeid==6){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
      		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

    		yw_SfBoxOffice yw_SfBoxOffice=new yw_SfBoxOffice();
    		yw_SfBoxOffice.setSend("0");
    		yw_SfBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateSfBoxOfficeSend(yw_SfBoxOffice);
    		
    		model.addAttribute("box_officeMessage", six); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", six.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three); 
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	}   		
    	if(GlobalConstant.quarterstypeid==7){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);

    		yw_FzBoxOffice yw_FzBoxOffice=new yw_FzBoxOffice();
    		yw_FzBoxOffice.setSend("0");
    		yw_FzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateFzBoxOfficeSend(yw_FzBoxOffice);
    		
    		model.addAttribute("box_officeMessage", seven); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", seven.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three); 
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	
    	}   		
    	if(GlobalConstant.quarterstypeid==8){
    		com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);     
    		com.renjun.vo.yw_BoxOffice two=boxOfficeService.selectFsBoxOfficeById(GlobalConstant.boxofficeid); 
    		com.renjun.vo.yw_BoxOffice three=boxOfficeService.selectShBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice four=boxOfficeService.selectDbBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice five=boxOfficeService.selectSzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice six=boxOfficeService.selectSfBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice seven=boxOfficeService.selectFzBoxOfficeById(GlobalConstant.boxofficeid);
    		com.renjun.vo.yw_BoxOffice eight=boxOfficeService.selectGdBoxOfficeById(GlobalConstant.boxofficeid);
    		
    		yw_GdBoxOffice yw_GdBoxOffice=new yw_GdBoxOffice();
    		yw_GdBoxOffice.setSend("0");
    		yw_GdBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
    		boxOfficeService.updateGdBoxOfficeSend(yw_GdBoxOffice);
    		
    		model.addAttribute("box_officeMessage", eight); 
    	    model.addAttribute("timeaxis_one", one);
    		model.addAttribute("statusid", eight.getStatusid());
    		model.addAttribute("timeaxis_two", two); 
    		model.addAttribute("timeaxis_three", three); 
    		model.addAttribute("timeaxis_four", four); 
    		model.addAttribute("timeaxis_five", five); 
    		model.addAttribute("timeaxis_six", six); 
    		model.addAttribute("timeaxis_seven", seven); 
    		model.addAttribute("timeaxis_eight", eight); 
    	
    	}   		
    	model.addAttribute("quarterstypeid", GlobalConstant.quarterstypeid);
    	return mv;
    }   
    
  
    
    @RequestMapping("/alreadyBoxOffice")
    public ModelAndView alreadyBoxOffice(Map<String, Object> modelList,HttpSession session){
    	ModelAndView mv=new ModelAndView("/boxOffice/alreadyBoxOffice"); 
    	GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
 		GlobalConstant.SESSION_PFUSER=(String) session.getAttribute("SESSION_PFUSER");
    	if(GlobalConstant.quarterstypeid==1){
     		List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectBoxOffice(2);
     		modelList.put("yw_BoxOffices", yw_BoxOffices);
     		}
    	if(GlobalConstant.quarterstypeid==2){
     			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectFsBoxOffice(2,GlobalConstant.SESSION_PFUSER);
     			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
     		}	
    	if(GlobalConstant.quarterstypeid==3){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectShBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	if(GlobalConstant.quarterstypeid==4){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectDbBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	if(GlobalConstant.quarterstypeid==5){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectSzBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	if(GlobalConstant.quarterstypeid==6){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectSfBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	if(GlobalConstant.quarterstypeid==7){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectFzBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	if(GlobalConstant.quarterstypeid==8){
 			List<com.renjun.vo.yw_BoxOffice> yw_BoxOffices=boxOfficeService.selectGdBoxOffice(2,GlobalConstant.SESSION_PFUSER);
 			modelList.put("yw_BoxOffices", yw_BoxOffices); 					
 		}	
    	return mv;
    }
    //根据办箱id删除办箱信息(驳回)
    @RequestMapping("/DeleteBoxOffice")
    public ModelAndView delete(Map<String, Object> model,HttpSession session,HttpServletRequest request){
   	      ModelAndView mv=new ModelAndView("/boxOffice/box_office");  
   	      String inputValue="";
   	   try {
		inputValue = new String(request.getParameter("inputValue").getBytes("iso-8859-1"),"utf-8");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   	 
   	   GlobalConstant.quarterstypeid=(Integer) session.getAttribute("quarterstypeid");
   	   if(GlobalConstant.quarterstypeid==2){
     	  boxOfficeService.deleteFsboxoffice(GlobalConstant.boxofficeid);
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
       	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
       	 yw_BoxOffice.setManagementactivitiesid(1);
       	 yw_BoxOffice.setStatusid(1);
          
       	 yw_BoxOffice.setCutOfftime("");
       	 yw_BoxOffice.setOverrule("1");
       	 yw_BoxOffice.setOverrulereason(inputValue);
       	 boxOfficeService.updateBoxOfficeByUserid(yw_BoxOffice);
   	   }
   	if(GlobalConstant.quarterstypeid==3){
   		boxOfficeService.deleteShboxoffice(GlobalConstant.boxofficeid);
   		
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(2);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);
	   	 
	     yw_FsBoxOffice yw_FsBoxOffice=new yw_FsBoxOffice();
	     yw_FsBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_FsBoxOffice.setStatusid(1);
	     yw_FsBoxOffice.setCutOffTime("");
	     yw_FsBoxOffice.setOverrule("1");
	     yw_FsBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateFsBoxOffice(yw_FsBoxOffice);
   	}
   	if(GlobalConstant.quarterstypeid==4){
   		boxOfficeService.deleteDbboxoffice(GlobalConstant.boxofficeid);
   
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(3);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);	   	 
	     yw_ShBoxOffice yw_ShBoxOffice=new yw_ShBoxOffice();
	     yw_ShBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_ShBoxOffice.setStatusid(1);
	     yw_ShBoxOffice.setCutOffTime("");
	     yw_ShBoxOffice.setOverrule("1");
	     yw_ShBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateShBoxOffice(yw_ShBoxOffice);
   	}
   	if(GlobalConstant.quarterstypeid==5){
   		boxOfficeService.deleteSzBoxOffice(GlobalConstant.boxofficeid);
   
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(4);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);	   	 
	     yw_DbBoxOffice yw_DbBoxOffice=new yw_DbBoxOffice();
	     yw_DbBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_DbBoxOffice.setStatusid(1);
	     yw_DbBoxOffice.setCutOffTime("");
	     yw_DbBoxOffice.setOverrule("1");
	     yw_DbBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateDbBoxOffice(yw_DbBoxOffice);
   	}
   	if(GlobalConstant.quarterstypeid==6){
   		boxOfficeService.deleteSfBoxOffice(GlobalConstant.boxofficeid);
   
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(5);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);	   	 
	     yw_SzBoxOffice yw_SzBoxOffice=new yw_SzBoxOffice();
	     yw_SzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_SzBoxOffice.setStatusid(1);
	     yw_SzBoxOffice.setCutOffTime("");
	     yw_SzBoxOffice.setOverrule("1");
	     yw_SzBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateSzBoxOffice(yw_SzBoxOffice);
   	}
   	if(GlobalConstant.quarterstypeid==7){
   		boxOfficeService.deleteFzBoxOffice(GlobalConstant.boxofficeid);
   
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(6);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);	   	 
	     yw_SfBoxOffice yw_SfBoxOffice=new yw_SfBoxOffice();
	     yw_SfBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_SfBoxOffice.setStatusid(1);
	     yw_SfBoxOffice.setCutOffTime("");
	     yw_SfBoxOffice.setOverrule("1");
	     yw_SfBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateSfboxoffice(yw_SfBoxOffice);
   	}
 	if(GlobalConstant.quarterstypeid==8){
   		boxOfficeService.deleteGdBoxOffice(GlobalConstant.boxofficeid);
   
     	 yw_BoxOffice yw_BoxOffice=new yw_BoxOffice();
	   	 yw_BoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	   	 yw_BoxOffice.setManagementactivitiesid(7);  	   	   	      	   	
	   	 boxOfficeService.updateBoxOffic(yw_BoxOffice);	   	 
	     yw_FzBoxOffice yw_FzBoxOffice=new yw_FzBoxOffice();
	     yw_FzBoxOffice.setBoxofficeid(GlobalConstant.boxofficeid);
	     yw_FzBoxOffice.setStatusid(1);
	     yw_FzBoxOffice.setCutOffTime("");
	     yw_FzBoxOffice.setOverrule("1");
	     yw_FzBoxOffice.setOverrulereason(inputValue);
	     boxOfficeService.updateFzBoxOffice(yw_FzBoxOffice);
   	}
   	      modellist(model,session);
   	      
   	      return mv;  	       	    
    }
    
    @RequestMapping("/deleteBoxOffice")
    public ModelAndView deleteBoxOffice(Map<String, Object> model,HttpSession session,HttpServletRequest request,int boxofficeid){
    	ModelAndView mv=new ModelAndView("/boxOffice/box_office");
    	boxOfficeService.deleteByBoxoffice(boxofficeid);
    	GlobalConstant.SESSION_PFUSER=(String) session.getAttribute("SESSION_PFUSER"); 	
   	    session.setAttribute("username", GlobalConstant.SESSION_PFUSER);  	     
   	    session.getAttribute("quarterstypeid"); 	
   	     modellist(model,session);
		return mv; 
    }
}