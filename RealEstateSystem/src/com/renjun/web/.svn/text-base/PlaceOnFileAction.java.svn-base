package com.renjun.web;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.IdentifierNumber;
import com.renjun.po.yw_PlaceOnFile;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.DataBaseService;
import com.renjun.service.PlaceOnFileService;
import com.renjun.service.ReceivingDataService;
import com.renjun.vo.yw_ReceivingData;

@Controller
@RequestMapping("/PlaceOnFileController")
public class PlaceOnFileAction {

	@Resource 
	private ReceivingDataService receivingDataService;
	@Resource 
	
	private BoxOfficeService boxOfficeService;
	@Resource
	private PlaceOnFileService placeOnFileService;
	@Resource 
	private DataBaseService dataBaseService;
	int Documentnumber;
	@RequestMapping("/placeOnFile")
	public ModelAndView giveCertificate(Map<String, Object> modelList,Model model){
		ModelAndView mv=new ModelAndView("/boxOffice/placeOnFile");	
		list(modelList, model);
		return mv;
	}
	
	public void list(Map<String, Object> modelList,Model model){
		 List<yw_ReceivingData> yw_ReceivingDataMxs=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);   
		  com.renjun.vo.yw_BoxOffice one=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);   
		  yw_PlaceOnFile placeOnFile=placeOnFileService.selectPlaceOnFileId(GlobalConstant.boxofficeid);
		    model.addAttribute("placeOnFile", placeOnFile); 
		    model.addAttribute("box_officeMessage", one); 
		    model.addAttribute("zjNumber", zjNumberSelect(zjNumber));
	        modelList.put("yw_ReceivingDataMxs", yw_ReceivingDataMxs); 
	        Documentnumber=yw_ReceivingDataMxs.size();
	        model.addAttribute("dataSize", yw_ReceivingDataMxs.size());		
	}
	@RequestMapping("/insertPlaceOnFile")
	public ModelAndView insertPlaceOnFile(String fileno,String pagecount,Date filingtime,String remarks,Map<String, Object> modelList,
	Model model,HttpSession session){
		GlobalConstant.userID=(Integer) session.getAttribute("userID");
		ModelAndView mv=new ModelAndView("/boxOffice/placeOnFile");	
		yw_PlaceOnFile yw_PlaceOnFile=new yw_PlaceOnFile();
		yw_PlaceOnFile.setBoxofficeid(GlobalConstant.boxofficeid);
		yw_PlaceOnFile.setFileno(fileno);
		yw_PlaceOnFile.setDocumentnumber(String.valueOf(Documentnumber));
		yw_PlaceOnFile.setPagecount(pagecount);
		yw_PlaceOnFile.setUserid(GlobalConstant.userID);
		yw_PlaceOnFile.setFilingtime(filingtime);
		yw_PlaceOnFile.setRemarks(remarks);
		placeOnFileService.insertPlaceOnFile(yw_PlaceOnFile);
	
		  IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(5);
    	   dataBaseService.updateIdentifiernumber(identifierNumber);
		list(modelList, model);
		return mv;
	}
	
	@RequestMapping("/updatePlaceOnFile")
	public ModelAndView updatePlaceOnFile(HttpServletRequest request,String pagecount, Map<String, Object> modelList, Model model){
		ModelAndView mv=new ModelAndView("/boxOffice/placeOnFile");	
		String remarks="";
		try {
			remarks = new String(request.getParameter("remarks").getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		yw_PlaceOnFile yw_PlaceOnFile=new yw_PlaceOnFile();			
		yw_PlaceOnFile.setPagecount(pagecount);
		yw_PlaceOnFile.setRemarks(remarks);
		yw_PlaceOnFile.setBoxofficeid(GlobalConstant.boxofficeid);
		System.out.println(remarks);
		placeOnFileService.updatePlaceOnFile(yw_PlaceOnFile);
		list(modelList, model);
		return mv;
	}
	
	  String zjNumber;
	  public String zjNumberSelect(String zjNumber){  
	    	IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(5);
	        String numberString=identifierNumber.getIdentifiernumbername();   
	        String str = new SimpleDateFormat("yyyyMMdd")
		    .format(new java.util.Date());
	        switch (numberString.length()) {
			case 1:
				zjNumber=str+"0000"+numberString;			
				break;
			case 2:
				zjNumber=str+"000"+numberString;
				break;
			case 3:
				zjNumber=str+"00"+numberString;
				break;
			case 4:
				zjNumber=str+"0"+numberString;
				break;
			case 5:
				zjNumber=str+numberString;			
				break;
			default:
				break;
			} 
			return zjNumber;
	  }
}
