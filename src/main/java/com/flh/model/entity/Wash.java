package com.flh.model.entity;

import java.io.Serializable;

public class Wash implements Serializable {
    private Integer washid;

    private String washname;

    private String washpic;

    public Integer getWashid() {
        return washid;
    }

    public void setWashid(Integer washid) {
        this.washid = washid;
    }

    public String getWashname() {
        return washname;
    }

    public void setWashname(String washname) {
        this.washname = washname == null ? null : washname.trim();
    }

    public String getWashpic() {
        return washpic;
    }

    public void setWashpic(String washpic) {
        this.washpic = washpic == null ? null : washpic.trim();
    }
}