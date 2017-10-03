package com.renjun.service;

import java.util.List;

import com.renjun.po.yw_RightInformation;
import com.renjun.po.yw_RightPersonInformation;

public interface RightInformationService {

	//保存权利信息
		public boolean insertRightInformation(yw_RightInformation yw_RightInformation); 

	  //新增权利人信息
		public boolean insertRightPersonInformation(yw_RightPersonInformation yw_RightPersonInformation);
		//查询权利人信息
		public List<com.renjun.vo.yw_RightPersonInformation> selectRightPersoninformation(int boxofficeid);
		
		//查询证书信息
		public com.renjun.vo.yw_RightInformation selectDocumentInformation(int rightinformationid);
		//查询登簿坐落
		public List<com.renjun.vo.yw_RightInformation> selectRegisterBookSit(int boxofficeid);
		//查询收费权利信息
	    public com.renjun.vo.yw_RightInformation selectSfRightInformation(int boxofficeid);
	    //根据办箱id查询收费信息单元 
	    public List<com.renjun.vo.yw_RightInformation> selectRightInformationByBoxOfficeId(int boxofficeid);
	    //根据办箱Id查询宗地单元坐落
	    public com.renjun.vo.yw_RightInformation selectBdcByBoxOfficeId(int parcelunitid);
}
