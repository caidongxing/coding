package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.renjun.po.yw_GdBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_GdBoxOfficeMapper {
    int deleteByPrimaryKey(Integer gdboxofficeid);

    int insert(yw_GdBoxOffice record);

    int insertSelective(yw_GdBoxOffice record);

    yw_GdBoxOffice selectByPrimaryKey(Integer gdboxofficeid);

    int updateByPrimaryKeySelective(yw_GdBoxOffice record);

    int updateByPrimaryKey(yw_GdBoxOffice record);
    
    //新增归档办箱
    public boolean insertGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice);
    //查询归档办箱
    public List<yw_BoxOffice> selectGdBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱Id查询归档办箱
    public yw_BoxOffice selectGdBoxOfficeById(int boxofficeid);
    //根据办箱Id修改归档办箱
    public boolean updateGdBoxOffice(yw_GdBoxOffice yw_GdBoxOffice);
    //根据办箱Id删除归档办箱
    public boolean deleteGdBoxOffice(int boxofficeid);
  //根据办箱Id修改发送信息
   	public boolean updateGdBoxOfficeSend(yw_GdBoxOffice yw_GdBoxOffice);
   	//查询发送办箱
   	public List<yw_GdBoxOffice> selectGdNumberBySend(String send);
}