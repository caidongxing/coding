package com.renjun.service;

import java.util.List;

import com.renjun.po.IdentifierNumber;
import com.renjun.po.bs_ApplicantType;
import com.renjun.po.bs_ApplicationForHuman;
import com.renjun.po.bs_CadastralArea;
import com.renjun.po.bs_CadastralSubArea;
import com.renjun.po.bs_CertificateBoard;
import com.renjun.po.bs_CharacteristicMethod;
import com.renjun.po.bs_CommonWay;
import com.renjun.po.bs_Country;
import com.renjun.po.bs_DistrictandCounty;
import com.renjun.po.bs_IdCardType;
import com.renjun.po.bs_LandGrade;
import com.renjun.po.bs_OpinionTemplate;
import com.renjun.po.bs_OwnedIndustry;
import com.renjun.po.bs_ProcessClassification;
import com.renjun.po.bs_Province;
import com.renjun.po.bs_QuartersType;
import com.renjun.po.bs_ReasonTemplate;
import com.renjun.po.bs_RegisterType;
import com.renjun.po.bs_RightSettingway;
import com.renjun.po.bs_Sex;
import com.renjun.po.bs_TypeofRight;
import com.renjun.po.bs_Use;

public interface DataBaseService {
	//查询登记类型
	public List<bs_RegisterType> selectregistertype();
	//查询权利类型
	public List<bs_TypeofRight> selectTypeofRight();
	//根据权利类型查询权利流程
	public List<bs_ProcessClassification> selectprocessByTrID(int typeOfRightId);
	//查询最大单据号
	public IdentifierNumber selectidentifiernumber(int identifiernumberid);
	//修改单据号
	public boolean updateIdentifiernumber(IdentifierNumber identifierNumber);
	//查询性别
	public List<bs_Sex> selectSex();	
	//查询申请人类别
	public List<bs_ApplicationForHuman> selectApplicationforhuman();
	//查询申请人类型
	public List<bs_ApplicantType> selectApplicanttype();
	//查询证件种类
	public List<bs_IdCardType> selectIdcardtype();
	//查询共有方式
	public List<bs_CommonWay> selectCommonway();
	//查询国家
	public List<bs_Country> selectCountry();
		   //查询省份
	public List<bs_Province> selectProvince(int countryid);
		//查询行业
	public List<bs_OwnedIndustry> selectOwnedIndustry();	
	//查询流程分类
	public List<bs_ProcessClassification> select();
	//查询证书板式
	public List<bs_CertificateBoard> selectCertificateBoard();
	//查询特征方式
	public List<bs_CharacteristicMethod> selectCharacteristicMethod();
	//查询意见模板
	public List<bs_OpinionTemplate> selectOpinionTemplate();
	//保存意见模板
	public boolean insertOpinionTemplate(bs_OpinionTemplate bs_OpinionTemplate);
	//修改意见模板
	public boolean updateOpinionTemplate(bs_OpinionTemplate bs_OpinionTemplate);
	//模糊查询
	public List<bs_OpinionTemplate> selectOpinionTemplateMh(String opiniontemplatename);
	//删除意见模板
		public boolean deleteOpinionTemplate(int opiniontemplateid);
	
	//查询原因模板
		public List<bs_ReasonTemplate> selectReasonTemplate();
		//新增原因模板
		public boolean insertReasonTemplate(bs_ReasonTemplate bs_ReasonTemplate);
		//修改原因模板
		public boolean updateReasonTemplate(bs_ReasonTemplate bs_ReasonTemplate);
		//删除原因模板
		public boolean deleteReasonTemplate(int reasontemplateid);
		//模糊查询原因模板
		public List<bs_ReasonTemplate> selectReasonTemplateMh(String reasontemplatename);
     
		//查询土地等级
		public List<bs_LandGrade> selectLandGrade();
		//查询权利设定方式
		public List<bs_RightSettingway> selectRightSettingway();
		//查询用途
		public List<bs_Use> selectUse();
		//查询区县
		public List<bs_DistrictandCounty> selectDistrictandCounty();
		//查询地籍区
		public List<bs_CadastralArea> selectCadastralArea();
		//查询地籍子区
		public List<bs_CadastralSubArea> selectCadastralSubArea();
		  //查询岗位信息
	    public List<bs_QuartersType> selectQuartersType();
}
