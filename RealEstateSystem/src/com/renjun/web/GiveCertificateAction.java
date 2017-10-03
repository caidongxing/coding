package com.renjun.web;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.renjun.common.GlobalConstant;
import com.renjun.po.bs_IdCardType;
import com.renjun.po.yw_Certificate;
import com.renjun.service.DataBaseService;
import com.renjun.service.GiveCertificateService;

@Controller
@RequestMapping("/GiveCertificateController")
public class GiveCertificateAction {

	@Resource
	private GiveCertificateService giveCertificateService;
	@Resource 
	private DataBaseService dataBaseService;
	
	@RequestMapping("/giveCertificate")
	public ModelAndView giveCertificate(Map<String, Object> modelList){
		ModelAndView mv=new ModelAndView("/boxOffice/giveCertificate");
		list(modelList);
		  
		return mv;
	}
	
	public void list(Map<String, Object> modelList){
		List<yw_Certificate> certificates=giveCertificateService.selectCertificateByboxOfficeId(GlobalConstant.boxofficeid);
		 List<bs_IdCardType> bs_IdCardTypes=dataBaseService.selectIdcardtype();
		 modelList.put("bs_IdCardTypes", bs_IdCardTypes);
		modelList.put("certificates", certificates);
		
	}

	@RequestMapping("/updateGiveCertificate")
	public ModelAndView updateGiveCertificate(Map<String, Object> modelList,int certificateid,String licensingofpeople,int idcardtypeid,String idcardnumber,String email,
			String phone,String address,Date licensingoftime,HttpSession session){
		ModelAndView mv=new ModelAndView("/boxOffice/giveCertificate");
		GlobalConstant.userID=(Integer) session.getAttribute("userID");
			yw_Certificate yw_Certificate=new yw_Certificate();
		yw_Certificate.setPfeiffer("1");
		yw_Certificate.setLicensingofpeople(licensingofpeople);
		yw_Certificate.setIdcardtypeid(idcardtypeid);
		yw_Certificate.setIdcardnumber(idcardnumber);
		yw_Certificate.setEmail(email);
		yw_Certificate.setPhone(phone);
		yw_Certificate.setAddress(address);
		yw_Certificate.setUserid(GlobalConstant.userID);
		yw_Certificate.setLicensingoftime(licensingoftime);
		yw_Certificate.setCertificateid(certificateid);
		System.out.println(certificateid);
		System.out.println(licensingoftime);
		giveCertificateService.updateCertificateByCertificateId(yw_Certificate);
		list(modelList);
		return mv;
	}
	
	@RequestMapping("/deleteGiveCertificate")
	public ModelAndView deleteGiveCertificate(Map<String, Object> modelList,int certificateid){
		ModelAndView mv=new ModelAndView("/boxOffice/giveCertificate");
			yw_Certificate yw_Certificate=new yw_Certificate();
		yw_Certificate.setPfeiffer("0");
		yw_Certificate.setLicensingofpeople("");
		yw_Certificate.setIdcardtypeid(null);
		yw_Certificate.setIdcardnumber("");
		yw_Certificate.setEmail("");
		yw_Certificate.setPhone("");
		yw_Certificate.setAddress("");
		yw_Certificate.setUserid(null);
		yw_Certificate.setLicensingoftime(null);
		yw_Certificate.setCertificateid(certificateid);
		
		giveCertificateService.updateCertificateByCertificateId(yw_Certificate);
		list(modelList);
		return mv;
	}
}
