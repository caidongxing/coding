package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.UserMapper;
import com.renjun.dao.yw_ApplicantMapper;
import com.renjun.dao.yw_BoxOfficeMapper;
import com.renjun.po.User;
import com.renjun.po.yw_Applicant;
import com.renjun.po.yw_BoxOffice;
import com.renjun.service.ApplicantService;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.UserService;
import com.renjun.vo.yw_ReceivingData;

  @Transactional
  @Service(value="applicantService")
public class ApplicantServiceImpl implements ApplicantService{

	  @Autowired
	  private yw_ApplicantMapper yw_ApplicantMapper;

	@Override
	public boolean insertApplicant(yw_Applicant yw_Applicant) {
		// TODO Auto-generated method stub
		this.yw_ApplicantMapper.insertApplicant(yw_Applicant);
		return false;
	}

	@Override
	public List<yw_Applicant> selectApplicant() {
		// TODO Auto-generated method stub
		return this.yw_ApplicantMapper.selectApplicant();
	}

	@Override
	public List<com.renjun.vo.yw_Applicant> selectRightApplicant() {
		// TODO Auto-generated method stub
		return this.yw_ApplicantMapper.selectRightApplicant();
	}

	@Override
	public boolean updateApplicant(yw_Applicant yw_Applicant) {
		// TODO Auto-generated method stub
		this.yw_ApplicantMapper.updateApplicant(yw_Applicant);
		return false;
	}

	@Override
	public boolean deleteApplicant(int applicantid) {
		// TODO Auto-generated method stub
		this.yw_ApplicantMapper.deleteApplicant(applicantid);
		return false;
	}

	@Override
	public List<com.renjun.vo.yw_Applicant> selectRightApplicantByParcelunitid(
			int parcelunitid) {
		// TODO Auto-generated method stub
		return this.yw_ApplicantMapper.selectRightApplicantByParcelunitid(parcelunitid);
	}

	@Override
	public List<yw_Applicant> selectMhApplicant(String content) {
		// TODO Auto-generated method stub
		return this.yw_ApplicantMapper.selectMhApplicant(content);
	}	
	
	
	

}
