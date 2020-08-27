package com.flh.model.entity;

import java.io.Serializable;

public class Bloglabel implements Serializable {
    private Integer labelid;

    private String labelname;

    public Integer getLabelid() {
        return labelid;
    }

    public void setLabelid(Integer labelid) {
        this.labelid = labelid;
    }

    public String getLabelname() {
        return labelname;
    }

    public void setLabelname(String labelname) {
        this.labelname = labelname == null ? null : labelname.trim();
    }
}