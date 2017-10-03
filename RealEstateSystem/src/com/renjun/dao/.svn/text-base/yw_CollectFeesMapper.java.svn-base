package com.renjun.dao;

import com.renjun.po.yw_CollectFees;

public interface yw_CollectFeesMapper {
    int deleteByPrimaryKey(Integer collectfeesid);

    int insert(yw_CollectFees record);

    int insertSelective(yw_CollectFees record);

    yw_CollectFees selectByPrimaryKey(Integer collectfeesid);

    int updateByPrimaryKeySelective(yw_CollectFees record);

    int updateByPrimaryKey(yw_CollectFees record);
    //新增收费
    public boolean insertCollectFees(yw_CollectFees yw_CollectFees);
    //根据权利信息Id查询收费信息
    public yw_CollectFees selectCollectFeesById(int rightinformationids);
    //根据权利信息Id删除收费信息
    public boolean deleteCollectFeesByQlId(int rightinformationid);
}