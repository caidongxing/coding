package com.renjun.dao;

import java.util.List;

import com.renjun.po.bs_RightSettingway;

public interface bs_RightSettingwayMapper {
	//查询权利设定方式
	public List<bs_RightSettingway> selectRightSettingway();
    int deleteByPrimaryKey(Integer rightsettingwayid);

    int insert(bs_RightSettingway record);

    int insertSelective(bs_RightSettingway record);

    bs_RightSettingway selectByPrimaryKey(Integer rightsettingwayid);

    int updateByPrimaryKeySelective(bs_RightSettingway record);

    int updateByPrimaryKey(bs_RightSettingway record);
}