package com.renjun.po;

public class yw_ReceivingData {
   
    private Integer receivingdataid;

   
    private String recipientname;

    
    private String numbercopies;

  
    private Integer datatypeid;

 
    public yw_ReceivingData(Integer receivingdataid, String recipientname, String numbercopies, Integer datatypeid) {
        this.receivingdataid = receivingdataid;
        this.recipientname = recipientname;
        this.numbercopies = numbercopies;
        this.datatypeid = datatypeid;
    }

   
    public yw_ReceivingData() {
        super();
    }

   
    public Integer getReceivingdataid() {
        return receivingdataid;
    }

    
    public void setReceivingdataid(Integer receivingdataid) {
        this.receivingdataid = receivingdataid;
    }

    
    public String getRecipientname() {
        return recipientname;
    }

   
    public void setRecipientname(String recipientname) {
        this.recipientname = recipientname == null ? null : recipientname.trim();
    }

   
    public String getNumbercopies() {
        return numbercopies;
    }

   
    public void setNumbercopies(String numbercopies) {
        this.numbercopies = numbercopies == null ? null : numbercopies.trim();
    }

   
    public Integer getDatatypeid() {
        return datatypeid;
    }

  
    public void setDatatypeid(Integer datatypeid) {
        this.datatypeid = datatypeid;
    }
}