package com.renjun.po;

public class yw_RegisterBook {
    private Integer registerbookid;

    private Integer rightinformationid;

    private String registertime;

    private Integer registerperson;

    public Integer getRegisterbookid() {
        return registerbookid;
    }

    public void setRegisterbookid(Integer registerbookid) {
        this.registerbookid = registerbookid;
    }

    public Integer getRightinformationid() {
        return rightinformationid;
    }

    public void setRightinformationid(Integer rightinformationid) {
        this.rightinformationid = rightinformationid;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime == null ? null : registertime.trim();
    }

    public Integer getRegisterperson() {
        return registerperson;
    }

    public void setRegisterperson(Integer registerperson) {
        this.registerperson = registerperson;
    }
}