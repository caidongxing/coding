package com.renjun.dao;

import java.util.List;

import com.renjun.po.yw_Certificate;

public interface yw_CertificateMapper {
    int deleteByPrimaryKey(Integer certificateid);

    int insert(yw_Certificate record);

    int insertSelective(yw_Certificate record);

    yw_Certificate selectByPrimaryKey(Integer certificateid);

    int updateByPrimaryKeySelective(yw_Certificate record);

    int updateByPrimaryKey(yw_Certificate record);
    
    //新增缮证
    public boolean insertCertificate(yw_Certificate yw_Certificate);
    //查询缮证
    public yw_Certificate selectCertificate(int rightinformationid);
    //根据办箱Id查询发证信息
    public List<yw_Certificate> selectCertificateByboxOfficeId(int boxofficeid);
    //根据发证Id修改发证信息
    public boolean updateCertificateByCertificateId(yw_Certificate yw_Certificate);
}