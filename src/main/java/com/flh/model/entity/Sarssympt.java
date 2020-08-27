package com.flh.model.entity;

import java.io.Serializable;

public class Sarssympt implements Serializable {
    private Integer sarssymptid;

    private String sarssymptnmae;

    private String sarssymptinfo;

    private String sarssymptpic;

    public Sarssympt() {
    }

    public Integer getSarssymptid() {
        return sarssymptid;
    }

    public void setSarssymptid(Integer sarssymptid) {
        this.sarssymptid = sarssymptid;
    }

    public String getSarssymptnmae() {
        return sarssymptnmae;
    }

    public void setSarssymptnmae(String sarssymptnmae) {
        this.sarssymptnmae = sarssymptnmae == null ? null : sarssymptnmae.trim();
    }

    public String getSarssymptinfo() {
        return sarssymptinfo;
    }

    public void setSarssymptinfo(String sarssymptinfo) {
        this.sarssymptinfo = sarssymptinfo == null ? null : sarssymptinfo.trim();
    }

    public String getSarssymptpic() {
        return sarssymptpic;
    }

    public void setSarssymptpic(String sarssymptpic) {
        this.sarssymptpic = sarssymptpic == null ? null : sarssymptpic.trim();
    }
}