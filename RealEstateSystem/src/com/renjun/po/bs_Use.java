package com.renjun.po;

public class bs_Use {
    private Integer useid;

    private String usename;

    public Integer getUseid() {
        return useid;
    }

    public void setUseid(Integer useid) {
        this.useid = useid;
    }

    public String getUsename() {
        return usename;
    }

    public void setUsename(String usename) {
        this.usename = usename == null ? null : usename.trim();
    }
}