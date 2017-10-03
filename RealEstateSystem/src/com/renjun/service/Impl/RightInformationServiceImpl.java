package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_RightInformationMapper;
import com.renjun.dao.yw_RightPersonInformationMapper;
import com.renjun.po.yw_RightInformation;
import com.renjun.po.yw_RightPersonInformation;
import com.renjun.service.RightInformationService;

@Transactional
@Service(value="rightInformationService")
public class RightInformationServiceImpl implements RightInformationService{
	
	@Autowired
	private yw_RightInformationMapper yw_RightInformationMapper;
	@Autowired 
	private yw_RightPersonInformationMapper yw_RightPersonInformationMapper;

	@Override
	public boolean insertRightInformation(
			yw_RightInformation yw_RightInformation) {
		// TODO Auto-generated method stub
		this.yw_RightInformationMapper.insertRightInformation(yw_RightInformation);
		return false;
	}

	@Override
	public boolean insertRightPersonInformation(
			yw_RightPersonInformation yw_RightPersonInformation) {
		// TODO Auto-generated method stub
		this.yw_RightPersonInformationMapper.insertRightPersonInformation(yw_RightPersonInformation);
		return false;
	}

	@Override
	public List<com.renjun.vo.yw_RightPersonInformation> selectRightPersoninformation(
			int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RightPersonInformationMapper.selectRightPersoninformation(boxofficeid);
	}

	@Override
	public com.renjun.vo.yw_RightInformation selectDocumentInformation(
			 int rightinformationid) {
		// TODO Auto-generated method stub
		return this.yw_RightInformationMapper.selectDocumentInformation(rightinformationid);
	}

	@Override
	public List<com.renjun.vo.yw_RightInformation> selectRegisterBookSit(
			int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RightInformationMapper.selectRegisterBookSit(boxofficeid);
	}

	@Override
	public com.renjun.vo.yw_RightInformation selectSfRightInformation(
			int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RightInformationMapper.selectSfRightInformation(boxofficeid);
	}

	@Override
	public List<com.renjun.vo.yw_RightInformation> selectRightInformationByBoxOfficeId(
			int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RightInformationMapper.selectRightInformationByBoxOfficeId(boxofficeid);
	}

	@Override
	public com.renjun.vo.yw_RightInformation selectBdcByBoxOfficeId(
			int parcelunitid) {
		// TODO Auto-generated method stub
		return this.yw_RightInformationMapper.selectBdcByBoxOfficeId(parcelunitid);
	}

}
