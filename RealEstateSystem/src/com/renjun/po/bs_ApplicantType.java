package com.renjun.po;

public class bs_ApplicantType {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_applicanttype.applicantTypeId
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    private Integer applicanttypeid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bs_applicanttype.applicantTypeName
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    private String applicanttypename;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_applicanttype
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public bs_ApplicantType(Integer applicanttypeid, String applicanttypename) {
        this.applicanttypeid = applicanttypeid;
        this.applicanttypename = applicanttypename;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bs_applicanttype
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public bs_ApplicantType() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_applicanttype.applicantTypeId
     *
     * @return the value of bs_applicanttype.applicantTypeId
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public Integer getApplicanttypeid() {
        return applicanttypeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_applicanttype.applicantTypeId
     *
     * @param applicanttypeid the value for bs_applicanttype.applicantTypeId
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public void setApplicanttypeid(Integer applicanttypeid) {
        this.applicanttypeid = applicanttypeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bs_applicanttype.applicantTypeName
     *
     * @return the value of bs_applicanttype.applicantTypeName
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public String getApplicanttypename() {
        return applicanttypename;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bs_applicanttype.applicantTypeName
     *
     * @param applicanttypename the value for bs_applicanttype.applicantTypeName
     *
     * @mbggenerated Thu Nov 17 21:20:00 CST 2016
     */
    public void setApplicanttypename(String applicanttypename) {
        this.applicanttypename = applicanttypename == null ? null : applicanttypename.trim();
    }
}