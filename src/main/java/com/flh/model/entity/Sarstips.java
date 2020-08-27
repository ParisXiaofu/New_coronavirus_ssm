package com.flh.model.entity;

import java.io.Serializable;

public class Sarstips implements Serializable {
    private Integer sarstipsid;

    private String sarstipsname;

    private String sarstipsinfo;

    private Integer tips;

    private String sarstipspic;

    public Sarstips() {
    }

    public Integer getSarstipsid() {
        return sarstipsid;
    }

    public void setSarstipsid(Integer sarstipsid) {
        this.sarstipsid = sarstipsid;
    }

    public String getSarstipsname() {
        return sarstipsname;
    }

    public void setSarstipsname(String sarstipsname) {
        this.sarstipsname = sarstipsname == null ? null : sarstipsname.trim();
    }

    public String getSarstipsinfo() {
        return sarstipsinfo;
    }

    public void setSarstipsinfo(String sarstipsinfo) {
        this.sarstipsinfo = sarstipsinfo == null ? null : sarstipsinfo.trim();
    }

    public Integer getTips() {
        return tips;
    }

    public void setTips(Integer tips) {
        this.tips = tips;
    }

    public String getSarstipspic() {
        return sarstipspic;
    }

    public void setSarstipspic(String sarstipspic) {
        this.sarstipspic = sarstipspic == null ? null : sarstipspic.trim();
    }
}