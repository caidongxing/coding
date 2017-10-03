package com.renjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_FzBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_FzBoxOfficeMapper {
    int deleteByPrimaryKey(Integer fzboxofficeid);

    int insert(yw_FzBoxOffice record);

    int insertSelective(yw_FzBoxOffice record);

    yw_FzBoxOffice selectByPrimaryKey(Integer fzboxofficeid);

    int updateByPrimaryKeySelective(yw_FzBoxOffice record);

    int updateByPrimaryKey(yw_FzBoxOffice record);
    
    //新增发证
    public boolean insertFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice);
    //查询发证办箱
    public List<yw_BoxOffice> selectFzBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱Id查询发证办箱
    public yw_BoxOffice selectFzBoxOfficeById(int boxofficeid);
      //根据办箱Id修改发证办箱
    public boolean updateFzBoxOffice(yw_FzBoxOffice yw_FzBoxOffice);
    //根据办箱Id删除发证办箱
    public boolean deleteFzBoxOffice(int boxofficeid);
  //根据办箱Id修改发送信息
  	public boolean updateFzBoxOfficeSend(yw_FzBoxOffice yw_FzBoxOffice);
  	//查询发送办箱
  	public List<yw_FzBoxOffice> selectFzNumberBySend(String send);
}