package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.renjun.dao.yw_ParcelUnitMapper;
import com.renjun.service.ParcelUnitService;
import com.renjun.vo.yw_ParcelUnit;

  @Transactional
  @Service(value="parcelUnitService")
public class ParcelUnitServiceImpl implements ParcelUnitService{

	  @Autowired
	  private yw_ParcelUnitMapper yw_ParcelUnitMapper;

	@Override
	public List<yw_ParcelUnit> selectParcelunit() {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectParcelunit();
	}

	@Override
	public List<yw_ParcelUnit> selectIndistinctParcelunit(String sit) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectIndistinctParcelunit(sit);
	}

	@Override
	public List<yw_ParcelUnit> selectParcelunitByBoxOfficeId(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectParcelunitByBoxOfficeId(boxofficeid);
	}

	@Override
	public boolean updateRegistrationNo(
			com.renjun.po.yw_ParcelUnit yw_ParcelUnit) {
		// TODO Auto-generated method stub
		this.yw_ParcelUnitMapper.updateRegistrationNo(yw_ParcelUnit);
		return false;
	}

	@Override
	public List<yw_ParcelUnit> selectParcelunitBylimit(int pageStart,
			int pageSize) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectParcelunitBylimit(pageStart, pageSize);
	}

	@Override
	public int lines() {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.lines();
	}
    
	@Override
	public boolean insertParcelunit(com.renjun.po.yw_ParcelUnit yw_ParcelUnit) {
		// TODO Auto-generated method stub
		this.yw_ParcelUnitMapper.insertParcelunit(yw_ParcelUnit);
		return false;
	}

	@Override
	public yw_ParcelUnit selectParcelUnitById(int parcelunitid) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectParcelUnitById(parcelunitid);
	}

	@Override
	public boolean updateParcelunit(com.renjun.po.yw_ParcelUnit yw_ParcelUnit) {
		// TODO Auto-generated method stub
		yw_ParcelUnitMapper.updateParcelunit(yw_ParcelUnit);
		return false;
	}

	@Override
	public List<yw_ParcelUnit> selectParcelunitByRegistrationNo(int pageStart,
			int pageSize) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectParcelunitByRegistrationNo(pageStart, pageSize);
	}

	@Override
	public int line() {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.line();
	}

	@Override
	public List<yw_ParcelUnit> selectMhParcelunitByRegistrationNo(String content) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectMhParcelunitByRegistrationNo(content);
	}

	@Override
	public List<yw_ParcelUnit> selectMhParcelunit(String content) {
		// TODO Auto-generated method stub
		return this.yw_ParcelUnitMapper.selectMhParcelunit(content);
	}

	
	
}
