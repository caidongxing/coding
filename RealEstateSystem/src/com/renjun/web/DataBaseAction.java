package com.renjun.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.po.User;
import com.renjun.po.bs_ProcessClassification;
import com.renjun.po.bs_Province;
import com.renjun.po.bs_RegisterType;
import com.renjun.po.bs_TypeofRight;
import com.renjun.service.DataBaseService;


@Controller
@RequestMapping("/DataBaseController")
public class DataBaseAction {
	
	@Resource 
	private DataBaseService dataBaseService;
	
	  @ResponseBody
	  @RequestMapping(value="/selectAcceptanceProcess",produces="application/json")
	    public void success(int typeofrightid,HttpServletResponse response) throws IOException{		  
	   	   List<bs_ProcessClassification> bs_ProcessClassifications=dataBaseService.selectprocessByTrID(typeofrightid);
	   	   JSONArray jsonArray=JSONArray.fromObject(bs_ProcessClassifications);
	   	    response.getWriter().print(jsonArray.toString());  
	        response.getWriter().flush();  
	        response.getWriter().close();     	   
	    }		
	  
	  @ResponseBody
	  @RequestMapping(value="/selectProvince",produces="application/json")
	    public void selectProvince(int countryid,HttpServletResponse response) throws IOException{		  
	   	   List<bs_Province> bs_Provinces=dataBaseService.selectProvince(countryid);
	   	   JSONArray jsonArray=JSONArray.fromObject(bs_Provinces);
	   	    response.getWriter().print(jsonArray.toString());  
	        response.getWriter().flush();  
	        response.getWriter().close();     	   
	    }		
}
