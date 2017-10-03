package com.renjun.po;

import java.util.Date;

public class yw_Certificate {
    private Integer certificateid;

    private Integer rightinformationid;

    private String zsbhnumber;

    private String pfeiffer;

    private String licensingofpeople;

    private Integer idcardtypeid;

    private String idcardnumber;

    private String email;

    private String phone;

    private String address;

    private Integer userid;

    private Date licensingoftime;
    
    //新增字段
    public String warrantnumber;
    public String landuserights;
    public String realrstateunitnumber;
    public int boxofficeid;
    

    public Integer getCertificateid() {
        return certificateid;
    }

    public void setCertificateid(Integer certificateid) {
        this.certificateid = certificateid;
    }

    public Integer getRightinformationid() {
        return rightinformationid;
    }

    public void setRightinformationid(Integer rightinformationid) {
        this.rightinformationid = rightinformationid;
    }

    public String getZsbhnumber() {
        return zsbhnumber;
    }

    public void setZsbhnumber(String zsbhnumber) {
        this.zsbhnumber = zsbhnumber == null ? null : zsbhnumber.trim();
    }

 	public String getPfeiffer() {
		return pfeiffer;
	}

	public void setPfeiffer(String pfeiffer) {
		this.pfeiffer = pfeiffer;
	}

	public String getLicensingofpeople() {
        return licensingofpeople;
    }

    public void setLicensingofpeople(String licensingofpeople) {
        this.licensingofpeople = licensingofpeople == null ? null : licensingofpeople.trim();
    }

    public Integer getIdcardtypeid() {
        return idcardtypeid;
    }

    public void setIdcardtypeid(Integer idcardtypeid) {
        this.idcardtypeid = idcardtypeid;
    }

    public String getIdcardnumber() {
        return idcardnumber;
    }

    public void setIdcardnumber(String idcardnumber) {
        this.idcardnumber = idcardnumber == null ? null : idcardnumber.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

  

    public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getLicensingoftime() {
        return licensingoftime;
    }

    public void setLicensingoftime(Date licensingoftime) {
        this.licensingoftime = licensingoftime;
    }

	public String getWarrantnumber() {
		return warrantnumber;
	}

	public void setWarrantnumber(String warrantnumber) {
		this.warrantnumber = warrantnumber;
	}

	public String getLanduserights() {
		return landuserights;
	}

	public void setLanduserights(String landuserights) {
		this.landuserights = landuserights;
	}

	public String getRealrstateunitnumber() {
		return realrstateunitnumber;
	}

	public void setRealrstateunitnumber(String realrstateunitnumber) {
		this.realrstateunitnumber = realrstateunitnumber;
	}

	public int getBoxofficeid() {
		return boxofficeid;
	}

	public void setBoxofficeid(int boxofficeid) {
		this.boxofficeid = boxofficeid;
	}
    
    
}