package com.renjun.dao;

import java.util.List;

import com.renjun.po.yw_RightPersonInformation;

public interface yw_RightPersonInformationMapper {
   //新增权利人信息
	public boolean insertRightPersonInformation(yw_RightPersonInformation yw_RightPersonInformation);
	//查询权利人信息
	public List<com.renjun.vo.yw_RightPersonInformation> selectRightPersoninformation(int boxofficeid);
    int deleteByPrimaryKey(Integer rightpersoninformationid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yw_rightpersoninformation
     *
     * @mbggenerated Mon Nov 28 08:45:18 CST 2016
     */
    int insert(yw_RightPersonInformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yw_rightpersoninformation
     *
     * @mbggenerated Mon Nov 28 08:45:18 CST 2016
     */
    int insertSelective(yw_RightPersonInformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yw_rightpersoninformation
     *
     * @mbggenerated Mon Nov 28 08:45:18 CST 2016
     */
    yw_RightPersonInformation selectByPrimaryKey(Integer rightpersoninformationid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yw_rightpersoninformation
     *
     * @mbggenerated Mon Nov 28 08:45:18 CST 2016
     */
    int updateByPrimaryKeySelective(yw_RightPersonInformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table yw_rightpersoninformation
     *
     * @mbggenerated Mon Nov 28 08:45:18 CST 2016
     */
    int updateByPrimaryKey(yw_RightPersonInformation record);
}