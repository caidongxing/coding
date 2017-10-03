package com.renjun.po;

import java.util.Date;

public class yw_FzBoxOffice {
    private Integer fzboxofficeid;

    private Integer boxofficeid;

    private Integer userid;

    private Integer statusid;

    private Date receivingtime;

    private String cutOffTime;
    private String overrule;
    private String overrulereason;
    private String send;
    public Integer getFzboxofficeid() {
        return fzboxofficeid;
    }

    public void setFzboxofficeid(Integer fzboxofficeid) {
        this.fzboxofficeid = fzboxofficeid;
    }

    public Integer getBoxofficeid() {
        return boxofficeid;
    }

    public void setBoxofficeid(Integer boxofficeid) {
        this.boxofficeid = boxofficeid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }

    public Date getReceivingtime() {
        return receivingtime;
    }

    public void setReceivingtime(Date receivingtime) {
        this.receivingtime = receivingtime;
    }

	public String getCutOffTime() {
		return cutOffTime;
	}

	public void setCutOffTime(String cutOffTime) {
		this.cutOffTime = cutOffTime;
	}

	public String getOverrule() {
		return overrule;
	}

	public void setOverrule(String overrule) {
		this.overrule = overrule;
	}

	public String getOverrulereason() {
		return overrulereason;
	}

	public void setOverrulereason(String overrulereason) {
		this.overrulereason = overrulereason;
	}

	public String getSend() {
		return send;
	}

	public void setSend(String send) {
		this.send = send;
	}

  
}