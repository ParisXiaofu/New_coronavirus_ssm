package com.flh.model.entity;

import java.io.Serializable;

public class Blogtype implements Serializable {
    private Integer blogtypeid;

    private String blogtypename;

    public Integer getBlogtypeid() {
        return blogtypeid;
    }

    public void setBlogtypeid(Integer blogtypeid) {
        this.blogtypeid = blogtypeid;
    }

    public String getBlogtypename() {
        return blogtypename;
    }

    public void setBlogtypename(String blogtypename) {
        this.blogtypename = blogtypename == null ? null : blogtypename.trim();
    }
}