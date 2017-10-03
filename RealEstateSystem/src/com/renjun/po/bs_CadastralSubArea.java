package com.renjun.po;

public class bs_CadastralSubArea {
    private Integer cadastralsubareaid;

    private String cadastralsubarea;

    private String cadastralsubareacode;

    private Integer cadastralareaid;

    public Integer getCadastralsubareaid() {
        return cadastralsubareaid;
    }

    public void setCadastralsubareaid(Integer cadastralsubareaid) {
        this.cadastralsubareaid = cadastralsubareaid;
    }

    public String getCadastralsubarea() {
        return cadastralsubarea;
    }

    public void setCadastralsubarea(String cadastralsubarea) {
        this.cadastralsubarea = cadastralsubarea == null ? null : cadastralsubarea.trim();
    }

    public String getCadastralsubareacode() {
        return cadastralsubareacode;
    }

    public void setCadastralsubareacode(String cadastralsubareacode) {
        this.cadastralsubareacode = cadastralsubareacode == null ? null : cadastralsubareacode.trim();
    }

    public Integer getCadastralareaid() {
        return cadastralareaid;
    }

    public void setCadastralareaid(Integer cadastralareaid) {
        this.cadastralareaid = cadastralareaid;
    }
}