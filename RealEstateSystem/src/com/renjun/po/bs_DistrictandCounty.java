package com.renjun.po;

public class bs_DistrictandCounty {
    private Integer districtandcountyid;

    private String districtandcounty;

    private String districtandcountycode;

    private Integer cityid;

    public Integer getDistrictandcountyid() {
        return districtandcountyid;
    }

    public void setDistrictandcountyid(Integer districtandcountyid) {
        this.districtandcountyid = districtandcountyid;
    }

    public String getDistrictandcounty() {
        return districtandcounty;
    }

    public void setDistrictandcounty(String districtandcounty) {
        this.districtandcounty = districtandcounty == null ? null : districtandcounty.trim();
    }

    public String getDistrictandcountycode() {
        return districtandcountycode;
    }

    public void setDistrictandcountycode(String districtandcountycode) {
        this.districtandcountycode = districtandcountycode == null ? null : districtandcountycode.trim();
    }

    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
    }
}