package com.renjun.po;

public class bs_TypeofRight {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_typeofright.typeOfRightId
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    private Integer typeofrightid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_typeofright.typeOfRightName
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    private String typeofrightname;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_typeofright
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public bs_TypeofRight(Integer typeofrightid, String typeofrightname) {
        this.typeofrightid = typeofrightid;
        this.typeofrightname = typeofrightname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_typeofright
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public bs_TypeofRight() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_typeofright.typeOfRightId
     *
     * @return the value of bs_typeofright.typeOfRightId
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public Integer getTypeofrightid() {
        return typeofrightid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_typeofright.typeOfRightId
     *
     * @param typeofrightid the value for bs_typeofright.typeOfRightId
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public void setTypeofrightid(Integer typeofrightid) {
        this.typeofrightid = typeofrightid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_typeofright.typeOfRightName
     *
     * @return the value of bs_typeofright.typeOfRightName
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public String getTypeofrightname() {
        return typeofrightname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_typeofright.typeOfRightName
     *
     * @param typeofrightname the value for bs_typeofright.typeOfRightName
     *
     * @mbggenerated Tue Nov 08 15:19:50 CST 2016
     */
    public void setTypeofrightname(String typeofrightname) {
        this.typeofrightname = typeofrightname == null ? null : typeofrightname.trim();
    }
}