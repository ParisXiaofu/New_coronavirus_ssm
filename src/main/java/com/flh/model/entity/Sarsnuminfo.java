package com.flh.model.entity;

import java.io.Serializable;
import java.util.Date;

public class Sarsnuminfo implements Serializable {
    private Integer sarsnuminfoid;

    private Integer sarsconfirmedcasesnum;

    private Integer sarsdathsnum;

    private Integer sarsrecovernum;

    private Integer sarsactivenum;

    private Date newdate;

    public Sarsnuminfo() {
    }

    public Integer getSarsnuminfoid() {
        return sarsnuminfoid;
    }

    public void setSarsnuminfoid(Integer sarsnuminfoid) {
        this.sarsnuminfoid = sarsnuminfoid;
    }

    public Integer getSarsconfirmedcasesnum() {
        return sarsconfirmedcasesnum;
    }

    public void setSarsconfirmedcasesnum(Integer sarsconfirmedcasesnum) {
        this.sarsconfirmedcasesnum = sarsconfirmedcasesnum;
    }

    public Integer getSarsdathsnum() {
        return sarsdathsnum;
    }

    public void setSarsdathsnum(Integer sarsdathsnum) {
        this.sarsdathsnum = sarsdathsnum;
    }

    public Integer getSarsrecovernum() {
        return sarsrecovernum;
    }

    public void setSarsrecovernum(Integer sarsrecovernum) {
        this.sarsrecovernum = sarsrecovernum;
    }

    public Integer getSarsactivenum() {
        return sarsactivenum;
    }

    public void setSarsactivenum(Integer sarsactivenum) {
        this.sarsactivenum = sarsactivenum;
    }

    public Date getNewdate() {
        return newdate;
    }

    public void setNewdate(Date newdate) {
        this.newdate = newdate;
    }
}