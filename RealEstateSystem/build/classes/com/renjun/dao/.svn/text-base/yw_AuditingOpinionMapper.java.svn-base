package com.renjun.dao;


import com.renjun.po.yw_AuditingOpinion;

public interface yw_AuditingOpinionMapper {
    int deleteByPrimaryKey(Integer auditingopinionid);

    int insert(yw_AuditingOpinion record);

    int insertSelective(yw_AuditingOpinion record);
    
    yw_AuditingOpinion selectByPrimaryKey(Integer auditingopinionid);
    
    int updateByPrimaryKeySelective(yw_AuditingOpinion record);
    
    int updateByPrimaryKey(yw_AuditingOpinion record);
    //新增审核信息
    public boolean insertAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion);
     //根据办箱ID查询审核
    public yw_AuditingOpinion selectAuditingOpinion(int boxofficeid);
    //根据办箱ID修改审核信息
    public boolean updateAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion);
}