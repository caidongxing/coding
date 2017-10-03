package com.renjun.service;

import java.util.List;

import com.renjun.po.yw_ReceivingData;
import com.renjun.po.yw_ReceivingDatamx;

public interface ReceivingDataService {
	    //查询收件资料
		public List<com.renjun.vo.yw_ReceivingData> selectReceivingData();	
		//根据办箱Id查询收件资料明细
		public List<com.renjun.vo.yw_ReceivingData> selectReceivingDataMxById(int boxOfficeId);
		//根据Id删除收件资料
		public boolean deleteByreceivingDataID(int receivingdataid);
		
		//新增收件资料明细表
		public boolean insertReceivingDatamx(yw_ReceivingDatamx yw_ReceivingDatamx);
	
		//根据ID查询图片路径
		public yw_ReceivingDatamx selectUploadPicturesByID(int receivingdatamxid);
		
		 //新增收件资料
		  public boolean insertReceivingdata(yw_ReceivingData yw_ReceivingData);
		
}
