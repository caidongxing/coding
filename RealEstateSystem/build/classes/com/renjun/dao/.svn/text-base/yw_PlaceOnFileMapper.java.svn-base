package com.renjun.dao;

import com.renjun.po.yw_PlaceOnFile;

public interface yw_PlaceOnFileMapper {
    int deleteByPrimaryKey(Integer placeonfileid);

    int insert(yw_PlaceOnFile record);

    int insertSelective(yw_PlaceOnFile record);

    yw_PlaceOnFile selectByPrimaryKey(Integer placeonfileid);

    int updateByPrimaryKeySelective(yw_PlaceOnFile record);

    int updateByPrimaryKey(yw_PlaceOnFile record);
    //新增归档
    public boolean insertPlaceOnFile(yw_PlaceOnFile yw_PlaceOnFile);
    //根据办箱Id查询归档
    public yw_PlaceOnFile selectPlaceOnFileId(int boxofficeid);
    //根据办箱Id修改归档
    public boolean updatePlaceOnFile(yw_PlaceOnFile yw_PlaceOnFile);
}