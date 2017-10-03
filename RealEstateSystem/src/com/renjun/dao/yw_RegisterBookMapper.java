package com.renjun.dao;

import com.renjun.po.yw_RegisterBook;

public interface yw_RegisterBookMapper {
    int deleteByPrimaryKey(Integer registerbookid);

    int insert(yw_RegisterBook record);

    int insertSelective(yw_RegisterBook record);

    yw_RegisterBook selectByPrimaryKey(Integer registerbookid);

    int updateByPrimaryKeySelective(yw_RegisterBook record);

    int updateByPrimaryKey(yw_RegisterBook record);
    
    //新增登簿
    public boolean insertRegisterBook(yw_RegisterBook yw_RegisterBook);
}