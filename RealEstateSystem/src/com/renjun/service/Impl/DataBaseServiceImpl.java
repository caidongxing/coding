package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.IdentifierNumberMapper;
import com.renjun.dao.UserMapper;
import com.renjun.dao.bs_ApplicantTypeMapper;
import com.renjun.dao.bs_ApplicationForHumanMapper;
import com.renjun.dao.bs_CadastralAreaMapper;
import com.renjun.dao.bs_CadastralSubAreaMapper;
import com.renjun.dao.bs_CertificateBoardMapper;
import com.renjun.dao.bs_CharacteristicMethodMapper;
import com.renjun.dao.bs_CommonWayMapper;
import com.renjun.dao.bs_CountryMapper;
import com.renjun.dao.bs_DistrictandCountyMapper;
import com.renjun.dao.bs_IdCardTypeMapper;
import com.renjun.dao.bs_LandGradeMapper;
import com.renjun.dao.bs_OpinionTemplateMapper;
import com.renjun.dao.bs_OwnedIndustryMapper;
import com.renjun.dao.bs_ProcessClassificationMapper;
import com.renjun.dao.bs_ProvinceMapper;
import com.renjun.dao.bs_QuartersTypeMapper;
import com.renjun.dao.bs_ReasonTemplateMapper;
import com.renjun.dao.bs_RegisterTypeMapper;
import com.renjun.dao.bs_RightSettingwayMapper;
import com.renjun.dao.bs_SexMapper;
import com.renjun.dao.bs_TypeofRightMapper;
import com.renjun.dao.bs_UseMapper;
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
import com.renjun.service.DataBaseService;

  @Transactional
  @Service(value="dataBaseService")
public class DataBaseServiceImpl implements DataBaseService{
	  
	  @Autowired
      private bs_RegisterTypeMapper bs_RegisterTypeMapper;	
	  @Autowired
	  private bs_TypeofRightMapper bs_TypeofRightMapper;	  
	  @Autowired
	  private bs_ProcessClassificationMapper bs_ProcessClassificationMapper;
	  @Autowired
	  private IdentifierNumberMapper identifierNumberMapper;
	  @Autowired
	  private bs_SexMapper bs_SexMapper;
	  @Autowired
	  private bs_ApplicationForHumanMapper bs_ApplicationForHumanMapper;
	  @Autowired
	  private bs_ApplicantTypeMapper bs_ApplicantTypeMapper;
	  @Autowired
	  private bs_IdCardTypeMapper bs_IdCardTypeMapper;
	  @Autowired
	  private bs_CommonWayMapper bs_CommonWayMapper;
	  @Autowired
	  private bs_CountryMapper bs_CountryMapper;
	  @Autowired
	  private bs_ProvinceMapper bs_ProvinceMapper;
	  @Autowired 
	  private bs_OwnedIndustryMapper bs_OwnedIndustryMapper;
	  @Autowired
	  private bs_CertificateBoardMapper bs_CertificateBoardMapper;
	  @Autowired 
	  private bs_CharacteristicMethodMapper bs_CharacteristicMethodMapper;
	  @Autowired
	  private bs_OpinionTemplateMapper bs_OpinionTemplateMapper;
	  @Autowired
	  private bs_ReasonTemplateMapper bs_ReasonTemplateMapper;
	  
	  @Autowired
	  private bs_UseMapper bs_UseMapper;
	  @Autowired
	  private bs_RightSettingwayMapper bs_RightSettingwayMapper;
	  @Autowired
	  private bs_LandGradeMapper bs_LandGradeMapper;
	  @Autowired
	  private bs_DistrictandCountyMapper bs_DistrictandCountyMapper;
	  @Autowired
	  private bs_CadastralAreaMapper bs_CadastralAreaMapper;
	  @Autowired
	  private bs_CadastralSubAreaMapper bs_CadastralSubAreaMapper;
	  @Autowired
	   private bs_QuartersTypeMapper bs_QuartersTypeMapper;
	@Override
	public List<bs_RegisterType> selectregistertype() {
		// TODO Auto-generated method stub
		return bs_RegisterTypeMapper.selectregistertype();
	}
	@Override
	public List<bs_TypeofRight> selectTypeofRight() {
		// TODO Auto-generated method stub
		return bs_TypeofRightMapper.selectTypeofRight();
	}
	@Override
	public List<bs_ProcessClassification> selectprocessByTrID(int typeOfRightId) {
		// TODO Auto-generated method stub
		return bs_ProcessClassificationMapper.selectprocessByTrID(typeOfRightId);
	}
	@Override
	public IdentifierNumber selectidentifiernumber(int identifiernumberid) {
		// TODO Auto-generated method stub
		return identifierNumberMapper.selectidentifiernumber(identifiernumberid);
	}
	@Override
	public boolean updateIdentifiernumber(IdentifierNumber identifierNumber) {
		// TODO Auto-generated method stub
		this.identifierNumberMapper.updateIdentifiernumber(identifierNumber);
		return false;
	}
	@Override
	public List<bs_Sex> selectSex() {
		// TODO Auto-generated method stub
		return this.bs_SexMapper.selectSex();
	}
	@Override
	public List<bs_ApplicationForHuman> selectApplicationforhuman() {
		// TODO Auto-generated method stub
		return this.bs_ApplicationForHumanMapper.selectApplicationforhuman();
	}
	@Override
	public List<bs_ApplicantType> selectApplicanttype() {
		// TODO Auto-generated method stub
		return bs_ApplicantTypeMapper.selectApplicanttype();
	}
	@Override
	public List<bs_IdCardType> selectIdcardtype() {
		// TODO Auto-generated method stub
		return this.bs_IdCardTypeMapper.selectIdcardtype();
	}
	@Override
	public List<bs_CommonWay> selectCommonway() {
		// TODO Auto-generated method stub
		return this.bs_CommonWayMapper.selectCommonway();
	}
	@Override
	public List<bs_Country> selectCountry() {
		// TODO Auto-generated method stub
		return bs_CountryMapper.selectCountry();
	}
	@Override
	public List<bs_Province> selectProvince(int countryid) {
		// TODO Auto-generated method stub
		return bs_ProvinceMapper.selectProvince(countryid);
	}
	@Override
	public List<bs_OwnedIndustry> selectOwnedIndustry() {
		// TODO Auto-generated method stub
		return bs_OwnedIndustryMapper.selectOwnedIndustry();
	}
	@Override
	public List<bs_ProcessClassification> select() {
		// TODO Auto-generated method stub
		return this.bs_ProcessClassificationMapper.select();
	}
	@Override
	public List<bs_CertificateBoard> selectCertificateBoard() {
		// TODO Auto-generated method stub
		return this.bs_CertificateBoardMapper.selectCertificateBoard();
	}
	@Override
	public List<bs_CharacteristicMethod> selectCharacteristicMethod() {
		// TODO Auto-generated method stub
		return this.bs_CharacteristicMethodMapper.selectCharacteristicMethod();
	}
	@Override
	public List<bs_OpinionTemplate> selectOpinionTemplate() {
		// TODO Auto-generated method stub
		return this.bs_OpinionTemplateMapper.selectOpinionTemplate();
	}
	@Override
	public boolean insertOpinionTemplate(bs_OpinionTemplate bs_OpinionTemplate) {
		// TODO Auto-generated method stub
		this.bs_OpinionTemplateMapper.insertOpinionTemplate(bs_OpinionTemplate);
		return false;
	}
	@Override
	public boolean updateOpinionTemplate(bs_OpinionTemplate bs_OpinionTemplate) {
		// TODO Auto-generated method stub
		this.bs_OpinionTemplateMapper.updateOpinionTemplate(bs_OpinionTemplate);
		return false;
	}
	@Override
	public List<bs_OpinionTemplate> selectOpinionTemplateMh(
			String opiniontemplatename) {
		// TODO Auto-generated method stub
		return this.bs_OpinionTemplateMapper.selectOpinionTemplateMh(opiniontemplatename);
	}
	@Override
	public List<bs_ReasonTemplate> selectReasonTemplate() {
		// TODO Auto-generated method stub
		return this.bs_ReasonTemplateMapper.selectReasonTemplate();
	}
	@Override
	public boolean insertReasonTemplate(bs_ReasonTemplate bs_ReasonTemplate) {
		// TODO Auto-generated method stub
		this.bs_ReasonTemplateMapper.insertReasonTemplate(bs_ReasonTemplate);
		return false;
	}
	@Override
	public boolean updateReasonTemplate(bs_ReasonTemplate bs_ReasonTemplate) {
		// TODO Auto-generated method stub
		this.bs_ReasonTemplateMapper.updateReasonTemplate(bs_ReasonTemplate);
		return false;
	}
	@Override
	public boolean deleteReasonTemplate(int reasontemplateid) {
		// TODO Auto-generated method stub
		this.bs_ReasonTemplateMapper.deleteReasonTemplate(reasontemplateid);
		return false;
	}
	@Override
	public List<bs_ReasonTemplate> selectReasonTemplateMh(
			String reasontemplatename) {
		// TODO Auto-generated method stub
		
		return this.bs_ReasonTemplateMapper.selectReasonTemplateMh(reasontemplatename);
	}
	@Override
	public boolean deleteOpinionTemplate(int opiniontemplateid) {
		// TODO Auto-generated method stub
		this.bs_OpinionTemplateMapper.deleteOpinionTemplate(opiniontemplateid);
		return false;
	}
	@Override
	public List<bs_LandGrade> selectLandGrade() {
		// TODO Auto-generated method stub
		return this.bs_LandGradeMapper.selectLandGrade();
	}
	@Override
	public List<bs_RightSettingway> selectRightSettingway() {
		// TODO Auto-generated method stub
		return this.bs_RightSettingwayMapper.selectRightSettingway();
	}
	@Override
	public List<bs_Use> selectUse() {
		// TODO Auto-generated method stub
		return this.bs_UseMapper.selectUse();
	}
	@Override
	public List<bs_DistrictandCounty> selectDistrictandCounty() {
		// TODO Auto-generated method stub
		return this.bs_DistrictandCountyMapper.selectDistrictandCounty();
	}
	@Override
	public List<bs_CadastralArea> selectCadastralArea() {
		// TODO Auto-generated method stub
		return this.bs_CadastralAreaMapper.selectCadastralArea();
	}
	@Override
	public List<bs_CadastralSubArea> selectCadastralSubArea() {
		// TODO Auto-generated method stub
		return this.bs_CadastralSubAreaMapper.selectCadastralSubArea();
	}
	@Override
	public List<bs_QuartersType> selectQuartersType() {
		// TODO Auto-generated method stub
		return this.bs_QuartersTypeMapper.selectQuartersType();
	}
		  
}
