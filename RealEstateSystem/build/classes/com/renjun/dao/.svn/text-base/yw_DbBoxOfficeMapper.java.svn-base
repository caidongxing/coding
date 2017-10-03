package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_DbBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_DbBoxOfficeMapper {
    int deleteByPrimaryKey(Integer dbboxofficeid);

    int insert(yw_DbBoxOffice record);

    int insertSelective(yw_DbBoxOffice record);

    yw_DbBoxOffice selectByPrimaryKey(Integer dbboxofficeid);

    int updateByPrimaryKeySelective(yw_DbBoxOffice record);

    int updateByPrimaryKey(yw_DbBoxOffice record);
    //查询登簿办箱
    public List<yw_BoxOffice> selectDbBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱id查询登簿办箱
    public yw_BoxOffice selectDbBoxOfficeById(int boxofficeid);    
    //新增登簿办箱
    public boolean insertDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice);
    //根据办箱Id修改登簿办箱信息
    public boolean updateDbBoxOffice(yw_DbBoxOffice yw_DbBoxOffice);
    //根据办箱Id删除登簿办箱信息
    public boolean deleteDbboxoffice(int boxofficeid);
	//根据办箱Id修改发送信息
  	public boolean updateDbBoxOfficeSend(yw_DbBoxOffice yw_DbBoxOffice);
  	//查询发送办箱
  	public List<yw_DbBoxOffice> selectDbNumberBySend(String send);
}