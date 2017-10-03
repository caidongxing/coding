package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_ReceivingDataMapper;
import com.renjun.dao.yw_ReceivingDatamxMapper;
import com.renjun.po.yw_ReceivingDatamx;
import com.renjun.service.ReceivingDataService;
import com.renjun.vo.yw_ReceivingData;

@Transactional
@Service(value="receivingDataService")
public class ReceivingDataServiceImpl implements ReceivingDataService{

	@Autowired
	private yw_ReceivingDataMapper yw_ReceivingDataMapper;
	
	@Autowired 
    private yw_ReceivingDatamxMapper yw_ReceivingDatamxMapper;
	@Override
	public List<yw_ReceivingData> selectReceivingData() {
		// TODO Auto-generated method stub
		return this.yw_ReceivingDataMapper.selectReceivingData();
	}

	@Override
	public List<yw_ReceivingData> selectReceivingDataMxById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_ReceivingDataMapper.selectReceivingDataMxById(boxofficeid);
	}

	@Override
	public boolean insertReceivingDatamx(yw_ReceivingDatamx yw_ReceivingDatamx) {
		// TODO Auto-generated method stub
		this.yw_ReceivingDatamxMapper.insertReceivingDatamx(yw_ReceivingDatamx);
		return false;
	}

	@Override
	public yw_ReceivingDatamx selectUploadPicturesByID(int receivingdatamxid) {
		// TODO Auto-generated method stub
		return this.yw_ReceivingDatamxMapper.selectUploadPicturesByID(receivingdatamxid);
	}

	@Override
	public boolean deleteByreceivingDataID(
			int receivingdataid) {
		// TODO Auto-generated method stub
		return this.yw_ReceivingDataMapper.deleteByreceivingDataID(receivingdataid);
	}

	@Override
	public boolean insertReceivingdata(
			com.renjun.po.yw_ReceivingData yw_ReceivingData) {
		// TODO Auto-generated method stub
		this.yw_ReceivingDataMapper.insertReceivingdata(yw_ReceivingData);
		return false;
	}

	
}
