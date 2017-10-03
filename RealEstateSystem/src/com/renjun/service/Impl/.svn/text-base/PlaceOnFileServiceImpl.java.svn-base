package com.renjun.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_GdBoxOfficeMapper;
import com.renjun.dao.yw_PlaceOnFileMapper;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.po.yw_PlaceOnFile;
import com.renjun.service.PlaceOnFileService;

@Transactional
@Service(value="placeOnFileService")
public class PlaceOnFileServiceImpl implements PlaceOnFileService{

	@Autowired
	private yw_GdBoxOfficeMapper yw_GdBoxOfficeMapper;
	@Autowired
	private yw_PlaceOnFileMapper yw_PlaceOnFileMapper;
	
	@Override
	public boolean insertPlaceOnFile(yw_PlaceOnFile yw_PlaceOnFile) {
		yw_PlaceOnFileMapper.insertPlaceOnFile(yw_PlaceOnFile);
		return false;
	}

	@Override
	public yw_PlaceOnFile selectPlaceOnFileId(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_PlaceOnFileMapper.selectPlaceOnFileId(boxofficeid);
	}

	@Override
	public boolean updatePlaceOnFile(yw_PlaceOnFile yw_PlaceOnFile) {
		// TODO Auto-generated method stub
		yw_PlaceOnFileMapper.updatePlaceOnFile(yw_PlaceOnFile);
		return false;
	}
}
