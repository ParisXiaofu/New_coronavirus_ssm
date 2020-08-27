package com.flh.model.entity;

import java.io.Serializable;

public class Education implements Serializable {
    private Integer educationid;

    private String educationname;

    public Integer getEducationid() {
        return educationid;
    }

    public void setEducationid(Integer educationid) {
        this.educationid = educationid;
    }

    public String getEducationname() {
        return educationname;
    }

    public void setEducationname(String educationname) {
        this.educationname = educationname == null ? null : educationname.trim();
    }
}