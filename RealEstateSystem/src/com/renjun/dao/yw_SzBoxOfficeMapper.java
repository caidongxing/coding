package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_SzBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_SzBoxOfficeMapper {
    int deleteByPrimaryKey(Integer szboxofficeid);

    int insert(yw_SzBoxOffice record);

    int insertSelective(yw_SzBoxOffice record);

    yw_SzBoxOffice selectByPrimaryKey(Integer szboxofficeid);

    int updateByPrimaryKeySelective(yw_SzBoxOffice record);

    int updateByPrimaryKey(yw_SzBoxOffice record);
    
    //新增缮证办箱
    public boolean insertSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice);
    //查询缮证办箱
    public List<yw_BoxOffice> selectSzBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱id查询缮证办箱
    public yw_BoxOffice selectSzBoxOfficeById(int boxofficeid);
  //根据办箱id修改缮证办箱
    public boolean updateSzBoxOffice(yw_SzBoxOffice yw_SzBoxOffice);
    //根据办箱Id删除缮证办箱
    public boolean  deleteSzBoxOffice(int boxofficeid);
 	//根据办箱Id修改发送信息
  	public boolean updateSzBoxOfficeSend(yw_SzBoxOffice yw_SzBoxOffice);
  	//查询发送办箱
  	public List<yw_SzBoxOffice> selectSzNumberBySend(String send);
}