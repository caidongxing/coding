package com.renjun.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.yw_ParcelUnit;


public interface ParcelUnitService {
	//查询单元信息
		public List<com.renjun.vo.yw_ParcelUnit> selectParcelunit();
		//模糊查询
		public List<com.renjun.vo.yw_ParcelUnit> selectIndistinctParcelunit(String sit);
		
		//根据办箱Id查询单元信息
		public List<com.renjun.vo.yw_ParcelUnit> selectParcelunitByBoxOfficeId(int boxofficeid);
		//修改登记否
		public boolean updateRegistrationNo(yw_ParcelUnit yw_ParcelUnit);
		//根据limit查询单元信息
		
		public List<com.renjun.vo.yw_ParcelUnit> selectParcelunitBylimit(int pageStart,int pageSize);
		//新增宗地单元
		public boolean insertParcelunit(yw_ParcelUnit yw_ParcelUnit);
		public int lines();
		//根据宗地单元Id查询宗地单元
		public com.renjun.vo.yw_ParcelUnit selectParcelUnitById(int parcelunitid);
		//修改宗地单元
		public boolean updateParcelunit(yw_ParcelUnit yw_ParcelUnit);
		//根据登记否查询宗地单元信息
		
		public List<com.renjun.vo.yw_ParcelUnit> selectParcelunitByRegistrationNo(@Param("pageStart") int pageStart,@Param("pageSize") int pageSize);
		public int line();
		//模糊查询宗地单元
		public List<com.renjun.vo.yw_ParcelUnit> selectMhParcelunitByRegistrationNo(String content);
		public List<com.renjun.vo.yw_ParcelUnit> selectMhParcelunit(String content);

}


