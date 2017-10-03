package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renjun.dao.yw_CollectFeesInformationMapper;
import com.renjun.dao.yw_CollectFeesMapper;
import com.renjun.dao.yw_CollectFeesMxMapper;
import com.renjun.po.yw_CollectFees;
import com.renjun.po.yw_CollectFeesInformation;
import com.renjun.po.yw_CollectFeesMx;
import com.renjun.service.CollectFeesService;

@Service(value="collectFeesService")
public class CollectFeesServiceImpl implements CollectFeesService{

	@Autowired
	private yw_CollectFeesInformationMapper yw_CollectFeesInformationMapper;
	@Autowired
	private yw_CollectFeesMapper yw_CollectFeesMapper;
	@Autowired
	private yw_CollectFeesMxMapper yw_CollectFeesMxMapper;
	@Override
	public List<yw_CollectFeesInformation> selectCollectFeesInformation() {
		// TODO Auto-generated method stub
		return this.yw_CollectFeesInformationMapper.selectCollectFeesInformation();
	}
	@Override
	public boolean insertCollectFees(yw_CollectFees yw_CollectFees) {
		// TODO Auto-generated method stub
		yw_CollectFeesMapper.insertCollectFees(yw_CollectFees);
		return false;
	}
	@Override
	public boolean insertCollectFeesMx(yw_CollectFeesMx yw_CollectFeesMx) {
		// TODO Auto-generated method stub
		yw_CollectFeesMxMapper.insertCollectFeesMx(yw_CollectFeesMx);
		return false;
	}
	@Override
	public yw_CollectFees selectCollectFeesById(int rightinformationids) {
		// TODO Auto-generated method stub
		return this.yw_CollectFeesMapper.selectCollectFeesById(rightinformationids);
	}
	@Override
	public List<yw_CollectFeesInformation> selectCollectFeesMxById(
			int rightinformationid) {
		// TODO Auto-generated method stub
		return this.yw_CollectFeesMxMapper.selectCollectFeesMxById(rightinformationid);
	}
	@Override
	public boolean deleteCollectFeesByQlId(int rightinformationid) {
		// TODO Auto-generated method stub
		yw_CollectFeesMapper.deleteCollectFeesByQlId(rightinformationid);
		return false;
	}
	@Override
	public boolean deleteCollectFeesMxByQlId(int collectfeesid) {
		yw_CollectFeesMxMapper.deleteCollectFeesMxByQlId(collectfeesid);
		// TODO Auto-generated method stub
		return false;
	}

}
