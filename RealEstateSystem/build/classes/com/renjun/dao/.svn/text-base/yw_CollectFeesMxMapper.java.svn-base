package com.renjun.dao;

import java.util.List;

import com.renjun.po.yw_CollectFeesInformation;
import com.renjun.po.yw_CollectFeesMx;

public interface yw_CollectFeesMxMapper {
    int deleteByPrimaryKey(Integer collectfeesmxid);

    int insert(yw_CollectFeesMx record);

    int insertSelective(yw_CollectFeesMx record);

    yw_CollectFeesMx selectByPrimaryKey(Integer collectfeesmxid);

    int updateByPrimaryKeySelective(yw_CollectFeesMx record);

    int updateByPrimaryKey(yw_CollectFeesMx record);
    //新增收费明细
    public boolean insertCollectFeesMx(yw_CollectFeesMx yw_CollectFeesMx);
    //根据权利信息Id查询收费明细
    public List<yw_CollectFeesInformation> selectCollectFeesMxById(int rightinformationid);
    //根据sfeiId删除收费明细
    public boolean deleteCollectFeesMxByQlId(int collectfeesid);
}