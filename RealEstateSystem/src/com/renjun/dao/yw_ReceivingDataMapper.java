package com.renjun.dao;

import java.util.List;

import com.renjun.po.yw_ReceivingData;

public interface yw_ReceivingDataMapper {
 
	//查询收件资料
	public List<com.renjun.vo.yw_ReceivingData> selectReceivingData();
	
	//根据办箱Id查询收件资料明细
	public List<com.renjun.vo.yw_ReceivingData> selectReceivingDataMxById(int boxofficeid);
	
	//根据Id删除收件资料
	public boolean deleteByreceivingDataID(int receivingdataid);
   
    //新增收件资料
	  public boolean insertReceivingdata(yw_ReceivingData yw_ReceivingData);
  
    int insert(yw_ReceivingData record);

  
    int insertSelective(yw_ReceivingData record);

    
    yw_ReceivingData selectByPrimaryKey(Integer receivingdataid);

   
    int updateByPrimaryKeySelective(yw_ReceivingData record);

    int updateByPrimaryKey(yw_ReceivingData record);
}