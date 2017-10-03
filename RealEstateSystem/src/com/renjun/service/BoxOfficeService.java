package com.renjun.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_BoxOffice;
import com.renjun.po.yw_Certificate;
import com.renjun.po.yw_DbBoxOffice;
import com.renjun.po.yw_FsBoxOffice;
import com.renjun.po.yw_FzBoxOffice;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.po.yw_SfBoxOffice;
import com.renjun.po.yw_ShBoxOffice;
import com.renjun.po.yw_SzBoxOffice;

public interface BoxOfficeService {

	//查询办箱信息
    public List<com.renjun.vo.yw_BoxOffice> selectBoxOffice(int statusid);
    //selectAll    
    public List<com.renjun.vo.yw_BoxOffice> selectBoxOfficeAll();
       //根据Id查询办箱信息
    public com.renjun.vo.yw_BoxOffice selectBoxOfficeById(int BoxOfficeById);
    //新增办箱
	public boolean insertBoxOffice(yw_BoxOffice yw_BoxOffice);    
	 //修改userid
    public boolean updateBoxOfficeByUserid(yw_BoxOffice yw_BoxOffice);
  //开发区复审办箱新增
  	public boolean insertFsBoxOffice(yw_FsBoxOffice yw_FsBoxOffice);
  //查询开发区办箱信息
  	public List<com.renjun.vo.yw_BoxOffice> selectFsBoxOffice(int statusid,String username);
  //根据办箱Id查询办箱信息
  	public com.renjun.vo.yw_BoxOffice selectFsBoxOfficeById(int boxofficeid);
  //根据办箱Id删除复审办箱
  	public boolean deleteFsboxoffice(int boxofficeid);
  //新增审核办箱
    public boolean insertShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice);
    //根据办箱id修改办理活动id
    public boolean updateBoxOffic(yw_BoxOffice yw_BoxOffice);
  //修改复审办箱信息
  	public boolean updateFsBoxOffice(yw_FsBoxOffice yw_FsBoxOffice);
    //查询审核办箱
    public List<com.renjun.vo.yw_BoxOffice> selectShBoxOffice(int statusid,String username);
    //根据办箱Id查询办箱信息
  	public com.renjun.vo.yw_BoxOffice selectShBoxOfficeById(int boxofficeid);
  //根据办箱Id修改审核办箱
  	public boolean updateShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice);
	 //新增登簿办箱
    public boolean insertDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice);
    //查询登簿办箱
    public List<com.renjun.vo.yw_BoxOffice> selectDbBoxOffice(int statusid,String username);
    
  //根据办箱id查询登簿办箱
    public com.renjun.vo.yw_BoxOffice selectDbBoxOfficeById(int boxofficeid);  
    
    //新增缮证办箱
    public boolean insertSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice);
    
  //根据办箱Id修改登簿办箱信息
    public boolean updateDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice);
    
    //查询缮证办箱
    public List<com.renjun.vo.yw_BoxOffice> selectSzBoxOffice(int statusid,String username);
    //根据办箱id查询缮证办箱
    public com.renjun.vo.yw_BoxOffice selectSzBoxOfficeById(int boxofficeid);
    //根据办箱id修改缮证办箱
    public boolean updateSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice);
    //新增收费办箱
    public boolean insertSfBoxOffice(yw_SfBoxOffice yw_SfBoxOffice);
    //根据办箱id修改收费办箱
    public boolean updateSfboxoffice(yw_SfBoxOffice yw_SfBoxOffice);
    //查询收费办箱
    public List<com.renjun.vo.yw_BoxOffice> selectSfBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱id查询收费办箱
    public com.renjun.vo.yw_BoxOffice selectSfBoxOfficeById(int boxofficeid);
    
  //新增发证
    public boolean insertFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice);
    //查询发证办箱
    public List<com.renjun.vo.yw_BoxOffice> selectFzBoxOffice(int statusid,String username);
    //根据办箱Id查询发证办箱
    public com.renjun.vo.yw_BoxOffice selectFzBoxOfficeById(int boxofficeid);
    //根据办箱Id修改发证办箱
    public boolean updateFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice);
    
	//新增归档办箱
    public boolean insertGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice);
    //查询归档办箱
    public List<com.renjun.vo.yw_BoxOffice> selectGdBoxOffice(int statusid,String username);
    //根据办箱Id查询归档办箱
    public com.renjun.vo.yw_BoxOffice selectGdBoxOfficeById(int boxofficeid);
  //根据办箱Id修改归档办箱
    public boolean updateGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice);
    
    //根据办箱Id修改驳回信息
    public boolean updateBoxOfficOverrule(yw_BoxOffice yw_BoxOffice);
  //根据办箱Id删除审核办箱
  	public boolean deleteShboxoffice(int boxofficeid);
  //根据办箱Id删除登簿办箱信息
    public boolean deleteDbboxoffice(int boxofficeid);
    //根据办箱Id删除缮证办箱
    public boolean  deleteSzBoxOffice(int boxofficeid);
    //根据办箱Id删除收费办箱
    public boolean deleteSfBoxOffice(int boxofficeid);
  //根据办箱Id删除发证办箱
    public boolean deleteFzBoxOffice(int boxofficeid);
  //根据办箱Id删除归档办箱
    public boolean deleteGdBoxOffice(int boxofficeid);
  //根据办箱Id修改发送信息
  	public boolean updateFsBoxOfficeSend(yw_FsBoxOffice yw_FsBoxOffice);
	//查询发送办箱
	public List<yw_FsBoxOffice> selectFsNumberBySend(String send);
	//根据办箱Id修改发送信息
  	public boolean updateShBoxOfficeSend(yw_ShBoxOffice yw_ShBoxOffice);
  	//查询发送办箱
  	public List<yw_ShBoxOffice> selectShNumberBySend(String send);
  //根据办箱Id修改发送信息
  	public boolean updateDbBoxOfficeSend(yw_DbBoxOffice yw_DbBoxOffice);
  	//查询发送办箱
  	public List<yw_DbBoxOffice> selectDbNumberBySend(String send);
	//根据办箱Id修改发送信息
  	public boolean updateSzBoxOfficeSend(yw_SzBoxOffice yw_SzBoxOffice);
  	//查询发送办箱
  	public List<yw_SzBoxOffice> selectSzNumberBySend(String send);
  //根据办箱Id修改发送信息
   	public boolean updateSfBoxOfficeSend(yw_SfBoxOffice yw_SfBoxOffice);
   	//查询发送办箱
   	public List<yw_SfBoxOffice> selectSfNumberBySend(String send);
    //根据办箱Id修改发送信息
  	public boolean updateFzBoxOfficeSend(yw_FzBoxOffice yw_FzBoxOffice);
  	//查询发送办箱
  	public List<yw_FzBoxOffice> selectFzNumberBySend(String send);
  //根据办箱Id修改发送信息
   	public boolean updateGdBoxOfficeSend(yw_GdBoxOffice yw_GdBoxOffice);
   	//查询发送办箱
   	public List<yw_GdBoxOffice> selectGdNumberBySend(String send);
    //根据办箱Id删除办箱信息
    public boolean deleteByBoxoffice(int boxofficeid);
}
