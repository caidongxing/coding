package com.renjun.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.po.bs_ProcessClassification;
import com.renjun.po.bs_TypeofRight;
import com.renjun.service.DataBaseService;
import com.renjun.service.ParcelUnitService;
import com.renjun.vo.yw_ParcelUnit;

@Controller
@RequestMapping("/ParcelUnitController")
public class ParcelUnitAction {
	
	@Resource 
	private ParcelUnitService parcelUnitService;
	@Resource 
	private DataBaseService dataBaseService;
	@RequestMapping("/ParcelUnit")
    public ModelAndView ParcelUnit(HttpSession session,Map<String, Object> modelList){
   	 ModelAndView mv=new ModelAndView("/boxOffice/ParcelUnit");
   	List<bs_TypeofRight> bs_TypeofRights=dataBaseService.selectTypeofRight();
   	List<bs_ProcessClassification> bs_ProcessClassifications=dataBaseService.select();
     List<yw_ParcelUnit> yw_ParcelUnits=parcelUnitService.selectParcelunit();
     modelList.put("yw_ParcelUnits", yw_ParcelUnits);
     modelList.put("bs_ProcessClassifications", bs_ProcessClassifications);
     modelList.put("bs_TypeofRights", bs_TypeofRights);
   	 return mv;
    }
}
