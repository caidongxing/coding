package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.UserMapper;
import com.renjun.dao.yw_BoxOfficeMapper;
import com.renjun.dao.yw_DbBoxOfficeMapper;
import com.renjun.dao.yw_FsBoxOfficeMapper;
import com.renjun.dao.yw_GdBoxOfficeMapper;
import com.renjun.dao.yw_SfBoxOfficeMapper;
import com.renjun.dao.yw_ShBoxOfficeMapper;
import com.renjun.dao.yw_SzBoxOfficeMapper;
import com.renjun.dao.yw_FzBoxOfficeMapper;
import com.renjun.po.User;
import com.renjun.po.yw_BoxOffice;
import com.renjun.po.yw_Certificate;
import com.renjun.po.yw_DbBoxOffice;
import com.renjun.po.yw_FsBoxOffice;
import com.renjun.po.yw_FzBoxOffice;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.po.yw_SfBoxOffice;
import com.renjun.po.yw_ShBoxOffice;
import com.renjun.po.yw_SzBoxOffice;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.UserService;
import com.renjun.vo.yw_ReceivingData;

  @Transactional
  @Service(value="boxOfficeService")
public class BoxOfficeServiceImpl implements BoxOfficeService{

	  @Autowired
	  private yw_BoxOfficeMapper yw_BoxOfficeMapper;	
	  @Autowired
	  private yw_FsBoxOfficeMapper yw_FsBoxOfficeMapper;
	  @Autowired
	  private yw_ShBoxOfficeMapper yw_ShBoxOfficeMapper;
	  @Autowired
	  private yw_DbBoxOfficeMapper yw_DbBoxOfficeMapper;
	  @Autowired
	  private yw_SzBoxOfficeMapper yw_SzBoxOfficeMapper;
      @Autowired
      private yw_SfBoxOfficeMapper yw_SfBoxOfficeMapper;
      @Autowired
      private yw_FzBoxOfficeMapper yw_FzBoxOfficeMapper;
      @Autowired
      private yw_GdBoxOfficeMapper yw_GdBoxOfficeMapper;
      
	@Override
	public boolean insertBoxOffice(yw_BoxOffice yw_BoxOffice) {
		// TODO Auto-generated method stub
		this.yw_BoxOfficeMapper.insertBoxOffice(yw_BoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectBoxOffice(int statusid) {
		// TODO Auto-generated method stub
		return this.yw_BoxOfficeMapper.selectBoxOffice(statusid);
	}

	@Override
	public com.renjun.vo.yw_BoxOffice selectBoxOfficeById(int BoxOfficeById) {
		// TODO Auto-generated method stub
		return this.yw_BoxOfficeMapper.selectBoxOfficeById(BoxOfficeById);
	}

	@Override
	public boolean updateBoxOfficeByUserid(yw_BoxOffice yw_BoxOffice) {
		// TODO Auto-generated method stub
		this.yw_BoxOfficeMapper.updateBoxOfficeByUserid(yw_BoxOffice);
		return false;
	}
	@Override
	public boolean insertFsBoxOffice(yw_FsBoxOffice yw_FsBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_FsBoxOfficeMapper.insertFsBoxOffice(yw_FsBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectFsBoxOffice(int statusid,String username) {
		// TODO Auto-generated method stub
		return this.yw_FsBoxOfficeMapper.selectFsBoxOffice(statusid,username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectFsBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_FsBoxOfficeMapper.selectFsBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean deleteFsboxoffice(int boxofficeid) {
		// TODO Auto-generated method stub
		this.yw_FsBoxOfficeMapper.deleteFsboxoffice(boxofficeid);
		return false;
	}
	@Override
	public boolean insertShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_ShBoxOfficeMapper.insertShBoxOffice(yw_ShBoxOffice);
		return false;
	}
	@Override
	public boolean updateBoxOffic(yw_BoxOffice yw_BoxOffice) {
		// TODO Auto-generated method stub
		this.yw_BoxOfficeMapper.updateBoxOffic(yw_BoxOffice);
		return false;
	}
	@Override
	public boolean updateFsBoxOffice(yw_FsBoxOffice yw_FsBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_FsBoxOfficeMapper.updateFsBoxOffice(yw_FsBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectShBoxOffice(int statusid,String username) {
		// TODO Auto-generated method stub
		return this.yw_ShBoxOfficeMapper.selectShBoxOffice(statusid,username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectShBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_ShBoxOfficeMapper.selectShBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean updateShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice) {
		// TODO Auto-generated method stub
		yw_ShBoxOfficeMapper.updateShBoxOffice(yw_ShBoxOffice);
		return false;
	}
	@Override
	public boolean insertDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice) {
		// TODO Auto-generated method stub
		yw_DbBoxOfficeMapper.insertDbBoxOffice(yw_DbBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectDbBoxOffice(int statusid,String username) {
		// TODO Auto-generated method stub
		return yw_DbBoxOfficeMapper.selectDbBoxOffice(statusid,username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectDbBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return yw_DbBoxOfficeMapper.selectDbBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean insertSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice) {
		// TODO Auto-generated method stub
		yw_SzBoxOfficeMapper.insertSzBoxOffice(yw_SzBoxOffice);
		return false;
	}
	@Override
	public boolean updateDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice) {
		// TODO Auto-generated method stub
		yw_DbBoxOfficeMapper.updateDbBoxOffice(yw_DbBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectSzBoxOffice(int statusid,String username) {
		// TODO Auto-generated method stub
		return yw_SzBoxOfficeMapper.selectSzBoxOffice(statusid,username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectSzBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return yw_SzBoxOfficeMapper.selectSzBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean updateSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_SzBoxOfficeMapper.updateSzBoxOffice(yw_SzBoxOffice);
		return false;
	}
	@Override
	public boolean insertSfBoxOffice(yw_SfBoxOffice yw_SfBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_SfBoxOfficeMapper.insertSfBoxOffice(yw_SfBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectSfBoxOffice(int statusid,
			String username) {
		// TODO Auto-generated method stub
		return this.yw_SfBoxOfficeMapper.selectSfBoxOffice(statusid, username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectSfBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_SfBoxOfficeMapper.selectSfBoxOfficeById(boxofficeid);
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectBoxOfficeAll() {
		// TODO Auto-generated method stub
		return this.yw_BoxOfficeMapper.selectBoxOfficeAll();
	}
	@Override
	public boolean updateSfboxoffice(yw_SfBoxOffice yw_SfBoxOffice) {
		// TODO Auto-generated method stub
		yw_SfBoxOfficeMapper.updateSfboxoffice(yw_SfBoxOffice);
		return false;
	}
	@Override
	public boolean insertFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice) {
		// TODO Auto-generated method stub
		yw_FzBoxOfficeMapper.insertFzBoxOffice(yw_FzBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectFzBoxOffice(int statusid, String username) {
		// TODO Auto-generated method stub
		return this.yw_FzBoxOfficeMapper.selectFzBoxOffice(statusid, username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectFzBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_FzBoxOfficeMapper.selectFzBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean updateFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice) {
		// TODO Auto-generated method stub
		yw_FzBoxOfficeMapper.updateFzBoxOffice(yw_FzBoxOffice);
		return false;
	}
	@Override
	public boolean insertGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice) {
		// TODO Auto-generated method stub
		yw_GdBoxOfficeMapper.insertGdBoxOffice(yw_GdBoxOffice);
		return false;
	}
	@Override
	public List<com.renjun.vo.yw_BoxOffice> selectGdBoxOffice(int statusid, String username) {
		// TODO Auto-generated method stub
		return this.yw_GdBoxOfficeMapper.selectGdBoxOffice(statusid, username);
	}
	@Override
	public com.renjun.vo.yw_BoxOffice selectGdBoxOfficeById(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_GdBoxOfficeMapper.selectGdBoxOfficeById(boxofficeid);
	}
	@Override
	public boolean updateGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice) {
		// TODO Auto-generated method stub
		yw_GdBoxOfficeMapper.updateGdBoxOffice(yw_GdBoxOffice);
		return false;
	}
	@Override
	public boolean updateBoxOfficOverrule(yw_BoxOffice yw_BoxOffice) {
		// TODO Auto-generated method stub
		yw_BoxOfficeMapper.updateBoxOfficOverrule(yw_BoxOffice);
		return false;
	}
	@Override
	public boolean deleteShboxoffice(int boxofficeid) {
		// TODO Auto-generated method stub
		yw_ShBoxOfficeMapper.deleteShboxoffice(boxofficeid);
		return false;
	}
	@Override
	public boolean deleteDbboxoffice(int boxofficeid) {
		// TODO Auto-generated method stub
	  yw_DbBoxOfficeMapper.deleteDbboxoffice(boxofficeid);
		return false;
	}
	@Override
	public boolean deleteSzBoxOffice(int boxofficeid) {
		// TODO Auto-generated method stub
		yw_SzBoxOfficeMapper.deleteSzBoxOffice(boxofficeid);
		return false;
	}
	@Override
	public boolean deleteSfBoxOffice(int boxofficeid) {
		// TODO Auto-generated method stub
		yw_SfBoxOfficeMapper.deleteSfBoxOffice(boxofficeid);
		return false;
	}
	@Override
	public boolean deleteFzBoxOffice(int boxofficeid) {
		// TODO Auto-generated method stub
		yw_FzBoxOfficeMapper.deleteFzBoxOffice(boxofficeid);
		return false;
	}
	@Override
	public boolean deleteGdBoxOffice(int boxofficeid) {
		// TODO Auto-generated method stub
		yw_GdBoxOfficeMapper.deleteGdBoxOffice(boxofficeid);
		return false;
	}
	@Override
	public boolean updateFsBoxOfficeSend(yw_FsBoxOffice yw_FsBoxOffice) {
		// TODO Auto-generated method stub
		yw_FsBoxOfficeMapper.updateFsBoxOfficeSend(yw_FsBoxOffice);
		return false;
	}
	@Override
	public List<yw_FsBoxOffice> selectFsNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_FsBoxOfficeMapper.selectFsNumberBySend(send);
	}
	@Override
	public boolean updateShBoxOfficeSend(yw_ShBoxOffice yw_ShBoxOffice) {
		// TODO Auto-generated method stub
		yw_ShBoxOfficeMapper.updateShBoxOfficeSend(yw_ShBoxOffice);
		return false;
	}
	@Override
	public List<yw_ShBoxOffice> selectShNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_ShBoxOfficeMapper.selectShNumberBySend(send);
	}
	@Override
	public boolean updateDbBoxOfficeSend(yw_DbBoxOffice yw_DbBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_DbBoxOfficeMapper.updateDbBoxOfficeSend(yw_DbBoxOffice);
		return false;
	}
	@Override
	public List<yw_DbBoxOffice> selectDbNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_DbBoxOfficeMapper.selectDbNumberBySend(send);
	}
	@Override
	public boolean updateSzBoxOfficeSend(yw_SzBoxOffice yw_SzBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_SzBoxOfficeMapper.updateSzBoxOfficeSend(yw_SzBoxOffice);
		return false;
	}
	@Override
	public List<yw_SzBoxOffice> selectSzNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_SzBoxOfficeMapper.selectSzNumberBySend(send);
	}
	@Override
	public boolean updateSfBoxOfficeSend(yw_SfBoxOffice yw_SfBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_SfBoxOfficeMapper.updateSfBoxOfficeSend(yw_SfBoxOffice);
		return false;
	}
	@Override
	public List<yw_SfBoxOffice> selectSfNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_SfBoxOfficeMapper.selectSfNumberBySend(send);
	}
	@Override
	public boolean updateFzBoxOfficeSend(yw_FzBoxOffice yw_FzBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_FzBoxOfficeMapper.updateFzBoxOfficeSend(yw_FzBoxOffice);
		return false;
	}
	@Override
	public List<yw_FzBoxOffice> selectFzNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_FzBoxOfficeMapper.selectFzNumberBySend(send);
	}
	@Override
	public boolean updateGdBoxOfficeSend(yw_GdBoxOffice yw_GdBoxOffice) {
		// TODO Auto-generated method stub
		this.yw_GdBoxOfficeMapper.updateGdBoxOfficeSend(yw_GdBoxOffice);
		return false;
	}
	@Override
	public List<yw_GdBoxOffice> selectGdNumberBySend(String send) {
		// TODO Auto-generated method stub
		return this.yw_GdBoxOfficeMapper.selectGdNumberBySend(send);
	}
	@Override
	public boolean deleteByBoxoffice(int boxofficeid) {
		// TODO Auto-generated method stub
		this.yw_BoxOfficeMapper.deleteByBoxoffice(boxofficeid);
		return false;
	}
	
	
}
