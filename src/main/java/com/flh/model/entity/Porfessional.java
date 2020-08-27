package com.flh.model.entity;

import java.io.Serializable;

public class Porfessional implements Serializable {
    private Integer porfessionalid;

    private String porfessionalname;

    public Integer getPorfessionalid() {
        return porfessionalid;
    }

    public void setPorfessionalid(Integer porfessionalid) {
        this.porfessionalid = porfessionalid;
    }

    public String getPorfessionalname() {
        return porfessionalname;
    }

    public void setPorfessionalname(String porfessionalname) {
        this.porfessionalname = porfessionalname == null ? null : porfessionalname.trim();
    }
}