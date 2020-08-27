package com.flh.model.entity;

import java.io.Serializable;

public class Askhelp implements Serializable {
    private Integer askhelpid;

    private String askhelptopic;

    private String askhelpinfo;

    private Integer hospitalid;

    private Integer userid;

    public Integer getAskhelpid() {
        return askhelpid;
    }

    public void setAskhelpid(Integer askhelpid) {
        this.askhelpid = askhelpid;
    }

    public String getAskhelptopic() {
        return askhelptopic;
    }

    public void setAskhelptopic(String askhelptopic) {
        this.askhelptopic = askhelptopic == null ? null : askhelptopic.trim();
    }

    public String getAskhelpinfo() {
        return askhelpinfo;
    }

    public void setAskhelpinfo(String askhelpinfo) {
        this.askhelpinfo = askhelpinfo == null ? null : askhelpinfo.trim();
    }

    public Integer getHospitalid() {
        return hospitalid;
    }

    public void setHospitalid(Integer hospitalid) {
        this.hospitalid = hospitalid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}