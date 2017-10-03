package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_ShBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_ShBoxOfficeMapper {
    int deleteByPrimaryKey(Integer shboxofficeid);

    int insert(yw_ShBoxOffice record);

    int insertSelective(yw_ShBoxOffice record);

    yw_ShBoxOffice selectByPrimaryKey(Integer shboxofficeid);

    int updateByPrimaryKeySelective(yw_ShBoxOffice record);

    int updateByPrimaryKey(yw_ShBoxOffice record);
    //新增审核办箱
    public boolean insertShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice);
    //查询审核办箱
    public List<yw_BoxOffice> selectShBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱Id查询办箱信息
  	public yw_BoxOffice selectShBoxOfficeById(int boxofficeid);
  	//根据办箱Id修改审核办箱
  	public boolean updateShBoxOffice(yw_ShBoxOffice yw_ShBoxOffice);
  
  //根据办箱Id删除审核办箱
  	public boolean deleteShboxoffice(int boxofficeid);
  	//根据办箱Id修改发送信息
  	public boolean updateShBoxOfficeSend(yw_ShBoxOffice yw_ShBoxOffice);
  	//查询发送办箱
  	public List<yw_ShBoxOffice> selectShNumberBySend(String send);
}