package com.renjun.po;

public class bs_CommonWay {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_commonway.commonWayId
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    private Integer commonwayid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_commonway.commonWayName
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    private String commonwayname;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_commonway
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public bs_CommonWay(Integer commonwayid, String commonwayname) {
        this.commonwayid = commonwayid;
        this.commonwayname = commonwayname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_commonway
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public bs_CommonWay() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_commonway.commonWayId
     *
     * @return the value of bs_commonway.commonWayId
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public Integer getCommonwayid() {
        return commonwayid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_commonway.commonWayId
     *
     * @param commonwayid the value for bs_commonway.commonWayId
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public void setCommonwayid(Integer commonwayid) {
        this.commonwayid = commonwayid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_commonway.commonWayName
     *
     * @return the value of bs_commonway.commonWayName
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public String getCommonwayname() {
        return commonwayname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_commonway.commonWayName
     *
     * @param commonwayname the value for bs_commonway.commonWayName
     *
     * @mbggenerated Thu Nov 17 21:26:43 CST 2016
     */
    public void setCommonwayname(String commonwayname) {
        this.commonwayname = commonwayname == null ? null : commonwayname.trim();
    }
}