package com.renjun.dao;

import java.util.List;

import com.renjun.po.bs_Country;

public interface bs_CountryMapper {
   
	//查询国家
	public List<bs_Country> selectCountry();
    int deleteByPrimaryKey(Integer countryid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_country
     *
     * @mbggenerated Fri Nov 18 09:37:05 CST 2016
     */
    int insert(bs_Country record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_country
     *
     * @mbggenerated Fri Nov 18 09:37:05 CST 2016
     */
    int insertSelective(bs_Country record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_country
     *
     * @mbggenerated Fri Nov 18 09:37:05 CST 2016
     */
    bs_Country selectByPrimaryKey(Integer countryid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_country
     *
     * @mbggenerated Fri Nov 18 09:37:05 CST 2016
     */
    int updateByPrimaryKeySelective(bs_Country record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_country
     *
     * @mbggenerated Fri Nov 18 09:37:05 CST 2016
     */
    int updateByPrimaryKey(bs_Country record);
}