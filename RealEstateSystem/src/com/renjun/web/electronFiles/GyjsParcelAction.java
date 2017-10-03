package com.renjun.web.electronFiles;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.po.IdentifierNumber;
import com.renjun.po.bs_CadastralArea;
import com.renjun.po.bs_CadastralSubArea;
import com.renjun.po.bs_DistrictandCounty;
import com.renjun.po.bs_LandGrade;
import com.renjun.po.bs_RightSettingway;
import com.renjun.po.bs_Use;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.DataBaseService;
import com.renjun.service.ParcelUnitService;
import com.renjun.vo.yw_BoxOffice;
import com.renjun.vo.yw_ParcelUnit;

@Controller
@RequestMapping("gyjsParcelController")
public class GyjsParcelAction {

	@Autowired
	private ParcelUnitService parcelUnitService;
	@Autowired 
	private DataBaseService dataBaseService;
	@Autowired
	private BoxOfficeService boxOfficeService;
	int pageSize=2;
	  @RequestMapping("/selectGyjsParcel")
	    public ModelAndView selectGyjsParcel(Model model){
	    	ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcel"); 
	    	int lines=parcelUnitService.lines();
	    	model.addAttribute("lines", lines);
	    	model.addAttribute("pageSize", pageSize);
	    	return mv;
	    }
	  @RequestMapping("/parcelUnitMessage")
	    public ModelAndView parcelUnitMessage(Model model,Map<String, Object> modelList){
	    	ModelAndView mv=new ModelAndView("/electronFiles/parcelUnitMessage"); 
	    	modellist(modelList);
	        model.addAttribute("zdsxhNumber", zdsxhNumberSelect(zdsxhNumber));
	        model.addAttribute("WarrantNumber", WarrantNumberSelect(WarrantNumber));
	        
	    	return mv;
	    }
	  public String modellist(Map<String, Object> modelList){
		  
		  List<bs_LandGrade> bs_LandGrade=dataBaseService.selectLandGrade();
	        List<bs_RightSettingway> bs_RightSettingway=dataBaseService.selectRightSettingway();
	        List<bs_Use> bs_Use=dataBaseService.selectUse();
	        List<bs_DistrictandCounty> bs_DistrictandCounty=dataBaseService.selectDistrictandCounty();
	        List<bs_CadastralArea> bs_CadastralArea=dataBaseService.selectCadastralArea();
	        List<bs_CadastralSubArea> bs_CadastralSubArea=dataBaseService.selectCadastralSubArea();
	        List<yw_BoxOffice> yw_BoxOffice=boxOfficeService.selectBoxOffice(1);

	        modelList.put("bs_LandGrade", bs_LandGrade);	    
	        modelList.put("bs_RightSettingway", bs_RightSettingway);	    
	        modelList.put("bs_Use", bs_Use);
	        modelList.put("bs_DistrictandCounty", bs_DistrictandCounty);
	        modelList.put("bs_CadastralArea", bs_CadastralArea);
	        modelList.put("bs_CadastralSubArea", bs_CadastralSubArea);
	        modelList.put("yw_BoxOffice", yw_BoxOffice);
		return null;
		  
	  }
	  
	  @RequestMapping("/selectGyjsParcelTable")
	    public ModelAndView selectGyjsParcelTable(Map<String, Object> modelList,Model model){
	    	ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcelTable");  
	    	
	    	List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectParcelunitBylimit(0, pageSize);
	    	modelList.put("yw_ParcelUnits", yw_ParcelUnits);	    		    	
	    	return mv;
	    }
	  
	  @RequestMapping("/selectGyjsParcelByLimit")
	    public ModelAndView selectGyjsParcel(Map<String, Object> modelList,int pageclickednumber,Model model){
	    	ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcelTable");	    
	    	List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectParcelunitBylimit((pageclickednumber-1)*pageSize, pageSize);
	    	modelList.put("yw_ParcelUnits", yw_ParcelUnits);
	    	return mv;
	    }	  
	  String zdsxhNumber;
	  public String zdsxhNumberSelect(String zdsxhNumber){  
	    	IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(3);
	        String numberString=identifierNumber.getIdentifiernumbername();  
	    
	        switch (numberString.length()) {
			case 1:
				zdsxhNumber="0000"+numberString;			
				break;
			case 2:
				zdsxhNumber="000"+numberString;
				break;
			case 3:
				zdsxhNumber="00"+numberString;
				break;
			case 4:
				zdsxhNumber="0"+numberString;
				break;
			case 5:
				zdsxhNumber=numberString;			
				break;
			default:
				break;
			} 
			return zdsxhNumber;
	  }
	  
	  String WarrantNumber;
	  public String WarrantNumberSelect(String WarrantNumber){
		   
	    	IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(4);
	        String numberString=identifierNumber.getIdentifiernumbername();	       
	        switch (numberString.length()) {
			case 1:
				WarrantNumber="000000"+numberString;	
				break;
			case 2:
				WarrantNumber="00000"+numberString;
				break;
			case 3:
				WarrantNumber="0000"+numberString;		
				break;
			case 4:
				WarrantNumber="000"+numberString;	
				break;
			case 5:
				WarrantNumber="00"+numberString;			
				break;
			case 6:
				WarrantNumber="0"+numberString;			
				break;
			case 7:
				WarrantNumber=numberString;
				break;
			default:
				break;
			}
			return WarrantNumber;	      			
	  }
	    
	  @RequestMapping("/insertparcelUnit")
	  public ModelAndView insertparcelUnit(com.renjun.po.yw_ParcelUnit po) {
		  parcelUnitService.insertParcelunit(po);		  
	   IdentifierNumber identifierNumber=dataBaseService.selectidentifiernumber(3);
   	   dataBaseService.updateIdentifiernumber(identifierNumber);
    	 IdentifierNumber identifierNumber2=dataBaseService.selectidentifiernumber(4);
 	   dataBaseService.updateIdentifiernumber(identifierNumber2);
		ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcel");    
		return mv;
	}
	  
	  @RequestMapping("/selectParcelUnitById")
	  public ModelAndView selectParcelUnitById(Model model,Map<String, Object> modelList,int parcelunitid) {
		
		  String districtAndCountyCode;String cadastralAreaCode;String cadastralSubAreaCode;String parcelConditionCode;String zdsxhNumber;
		ModelAndView mv=new ModelAndView("/electronFiles/updateParcelUnit");
		com.renjun.vo.yw_ParcelUnit yw_ParcelUnit=parcelUnitService.selectParcelUnitById(parcelunitid);
		districtAndCountyCode=yw_ParcelUnit.getParcelcode().substring(0, 6);
		cadastralAreaCode=yw_ParcelUnit.getParcelcode().substring(6, 9);
		cadastralSubAreaCode=yw_ParcelUnit.getParcelcode().substring(9, 12);
		parcelConditionCode=yw_ParcelUnit.getParcelcode().substring(12, 14);
		zdsxhNumber=yw_ParcelUnit.getParcelcode().substring(14, yw_ParcelUnit.getParcelcode().length());
		model.addAttribute("yw_ParcelUnit", yw_ParcelUnit);
		model.addAttribute("districtAndCountyCode", districtAndCountyCode);
		model.addAttribute("cadastralAreaCode", cadastralAreaCode);
		model.addAttribute("cadastralSubAreaCode", cadastralSubAreaCode);
		model.addAttribute("parcelConditionCode", parcelConditionCode);
		model.addAttribute("zdsxhNumber", zdsxhNumber);
		model.addAttribute("parcelunitid", parcelunitid);
		List<yw_BoxOffice> ywBoxOffice=boxOfficeService.selectBoxOfficeAll();
		 modelList.put("ywBoxOffice",ywBoxOffice);
		 modellist(modelList);
		return mv;
	}
	  
	  @RequestMapping("/updateparcelUnit")
	  public ModelAndView updateparcelUnit(com.renjun.po.yw_ParcelUnit po) {
		  parcelUnitService.updateParcelunit(po);		  
		ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcel");    
		return mv;
	}
	  
	  @RequestMapping("/selectMhParcelunit")
		public ModelAndView selectMhParcelunit(Map<String, Object> modelList,HttpServletRequest request) throws UnsupportedEncodingException{
			ModelAndView mv=new ModelAndView("/electronFiles/gyjsParcelTable");
		   	String menuname="";
		   	menuname = new String(request.getParameter("menuname").getBytes("iso-8859-1"),"utf-8");
			  List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectMhParcelunit(menuname);
			  modelList.put("yw_ParcelUnits", yw_ParcelUnits);
			 return mv;		
		}
	  
}
