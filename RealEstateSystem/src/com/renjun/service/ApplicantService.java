package com.renjun.service;
import java.util.List;

import com.renjun.po.yw_Applicant;


public interface ApplicantService {

	//新增申请人
    public boolean insertApplicant(yw_Applicant yw_Applicant);
  //修改申请人
  	public boolean updateApplicant(yw_Applicant yw_Applicant);
  //删除申请人
  	public boolean deleteApplicant(int applicantid);
  //查询申请人
    public List<yw_Applicant> selectApplicant();
    
    //查询权利人
    public List<com.renjun.vo.yw_Applicant> selectRightApplicant();
    public List<com.renjun.vo.yw_Applicant> selectRightApplicantByParcelunitid(int parcelunitid);
    //模糊查询申请人
    public List<yw_Applicant> selectMhApplicant(String content);
}
