package com.renjun.po;

import java.util.Date;

public class yw_AuditingOpinion {
    private Integer auditingopinionid;

    private String auditingopinionname;

    private Integer boxofficeid;

    private String jsonresult;
    private Date createtime;
    public String getJsonresult() {
		return jsonresult;
	}

	public void setJsonresult(String jsonresult) {
		this.jsonresult = jsonresult;
	}

	public Integer getAuditingopinionid() {
        return auditingopinionid;
    }

    public void setAuditingopinionid(Integer auditingopinionid) {
        this.auditingopinionid = auditingopinionid;
    }

    public String getAuditingopinionname() {
        return auditingopinionname;
    }

    public void setAuditingopinionname(String auditingopinionname) {
        this.auditingopinionname = auditingopinionname == null ? null : auditingopinionname.trim();
    }

    public Integer getBoxofficeid() {
        return boxofficeid;
    }

    public void setBoxofficeid(Integer boxofficeid) {
        this.boxofficeid = boxofficeid;
    }

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
    
    
}