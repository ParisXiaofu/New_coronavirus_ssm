package com.flh.model.entity;

import java.io.Serializable;

public class Sarsways implements Serializable {
    private Integer sarswaysid;

    private String sarswaysname;

    private String sarswaysinfo;

    private String sarswayspic;

    public Sarsways() {
    }

    public Integer getSarswaysid() {
        return sarswaysid;
    }

    public void setSarswaysid(Integer sarswaysid) {
        this.sarswaysid = sarswaysid;
    }

    public String getSarswaysname() {
        return sarswaysname;
    }

    public void setSarswaysname(String sarswaysname) {
        this.sarswaysname = sarswaysname == null ? null : sarswaysname.trim();
    }

    public String getSarswaysinfo() {
        return sarswaysinfo;
    }

    public void setSarswaysinfo(String sarswaysinfo) {
        this.sarswaysinfo = sarswaysinfo == null ? null : sarswaysinfo.trim();
    }

    public String getSarswayspic() {
        return sarswayspic;
    }

    public void setSarswayspic(String sarswayspic) {
        this.sarswayspic = sarswayspic == null ? null : sarswayspic.trim();
    }
}