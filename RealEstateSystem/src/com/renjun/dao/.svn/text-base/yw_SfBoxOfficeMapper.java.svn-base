package com.renjun.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.renjun.po.yw_SfBoxOffice;
import com.renjun.vo.yw_BoxOffice;

public interface yw_SfBoxOfficeMapper {
    int deleteByPrimaryKey(Integer sfboxofficeid);

    int insert(yw_SfBoxOffice record);

    int insertSelective(yw_SfBoxOffice record);

    yw_SfBoxOffice selectByPrimaryKey(Integer sfboxofficeid);

    int updateByPrimaryKeySelective(yw_SfBoxOffice record);

    int updateByPrimaryKey(yw_SfBoxOffice record);
    //新增收费办箱
    public boolean insertSfBoxOffice(yw_SfBoxOffice yw_SfBoxOffice);
    //查询收费办箱
    public List<yw_BoxOffice> selectSfBoxOffice(@Param("statusid") int statusid,@Param("username") String username);
    //根据办箱id查询收费办箱
    public yw_BoxOffice selectSfBoxOfficeById(int boxofficeid);
    //根据办箱id修改收费办箱
     public boolean updateSfboxoffice(yw_SfBoxOffice yw_SfBoxOffice);
     //根据办箱Id删除收费办箱
     public boolean deleteSfBoxOffice(int boxofficeid);
 	//根据办箱Id修改发送信息
   	public boolean updateSfBoxOfficeSend(yw_SfBoxOffice yw_SfBoxOffice);
   	//查询发送办箱
   	public List<yw_SfBoxOffice> selectSfNumberBySend(String send);
}