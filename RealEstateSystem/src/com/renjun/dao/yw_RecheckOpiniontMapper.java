package com.renjun.dao;

import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RecheckOpiniont;

public interface yw_RecheckOpiniontMapper {
    int deleteByPrimaryKey(Integer recheckopiniontid);

    int insert(yw_RecheckOpiniont record);

    int insertSelective(yw_RecheckOpiniont record);

    yw_RecheckOpiniont selectByPrimaryKey(Integer recheckopiniontid);

    int updateByPrimaryKeySelective(yw_RecheckOpiniont record);

    int updateByPrimaryKey(yw_RecheckOpiniont record);
    //新增复审
    public boolean insertRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont);
    //查询复审
    public yw_RecheckOpiniont selectRecheckopiniont(int boxofficeid);
    //修改复审
    public boolean updateRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont);
    //根据办箱id查询复审信息
    public yw_FirstOpiniont selectRecheckopiniontByboxOfficeId(int boxofficeid);
}