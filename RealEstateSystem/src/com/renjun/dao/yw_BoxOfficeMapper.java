package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_BoxOffice;

public interface yw_BoxOfficeMapper {
   
    int deleteByPrimaryKey(Integer boxofficeid);
    //查询办箱信息
    public List<com.renjun.vo.yw_BoxOffice> selectBoxOffice(int statusid);
    //selectAll    
    public List<com.renjun.vo.yw_BoxOffice> selectBoxOfficeAll();
      //根据Id查询办箱信息
    public com.renjun.vo.yw_BoxOffice selectBoxOfficeById(int BoxOfficeById);
    
    //新增办箱信息
    public boolean insertBoxOffice(yw_BoxOffice yw_BoxOffice);

    //修改userid
    public boolean updateBoxOfficeByUserid(yw_BoxOffice yw_BoxOffice);
  
    //根据办箱id修改办理活动id
    public boolean updateBoxOffic(yw_BoxOffice yw_BoxOffice);
    //根据办箱Id修改驳回信息
    public boolean updateBoxOfficOverrule(yw_BoxOffice yw_BoxOffice);
    //根据办箱Id删除办箱信息
    public boolean deleteByBoxoffice(int boxofficeid);
    int insertSelective(yw_BoxOffice record);

   
    yw_BoxOffice selectByPrimaryKey(Integer boxofficeid);

  
    int updateByPrimaryKeySelective(yw_BoxOffice record);

    int updateByPrimaryKey(yw_BoxOffice record);
}