package com.renjun.service;

import java.util.List;

import com.renjun.po.yw_CollectFees;
import com.renjun.po.yw_CollectFeesInformation;
import com.renjun.po.yw_CollectFeesMx;

public interface CollectFeesService {

	 //查询收费信息
    public List<yw_CollectFeesInformation> selectCollectFeesInformation();
    //新增收费
    public boolean insertCollectFees(yw_CollectFees yw_CollectFees);
  //新增收费明细
    public boolean insertCollectFeesMx(yw_CollectFeesMx yw_CollectFeesMx);
    //根据权利信息Id查询收费信息
    public yw_CollectFees selectCollectFeesById(int rightinformationids);
    
    //根据权利信息Id查询收费明细
    public List<yw_CollectFeesInformation> selectCollectFeesMxById(int rightinformationid);
    //根据权利信息Id删除收费信息
    public boolean deleteCollectFeesByQlId(int rightinformationid);
    //根据sfeiId删除收费明细
    public boolean deleteCollectFeesMxByQlId(int collectfeesid);
}
