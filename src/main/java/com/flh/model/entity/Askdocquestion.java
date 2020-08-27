package com.flh.model.entity;

import java.io.Serializable;

public class Askdocquestion implements Serializable {
    private Integer docquestionid;

    private String docquestioninfo;

    private String docquesstiontopic;

    private Integer doctorid;

    private String docquestionreplyinfo;

    private Integer userid;

    public Integer getDocquestionid() {
        return docquestionid;
    }

    public void setDocquestionid(Integer docquestionid) {
        this.docquestionid = docquestionid;
    }

    public String getDocquestioninfo() {
        return docquestioninfo;
    }

    public void setDocquestioninfo(String docquestioninfo) {
        this.docquestioninfo = docquestioninfo == null ? null : docquestioninfo.trim();
    }

    public String getDocquesstiontopic() {
        return docquesstiontopic;
    }

    public void setDocquesstiontopic(String docquesstiontopic) {
        this.docquesstiontopic = docquesstiontopic == null ? null : docquesstiontopic.trim();
    }

    public Integer getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(Integer doctorid) {
        this.doctorid = doctorid;
    }

    public String getDocquestionreplyinfo() {
        return docquestionreplyinfo;
    }

    public void setDocquestionreplyinfo(String docquestionreplyinfo) {
        this.docquestionreplyinfo = docquestionreplyinfo == null ? null : docquestionreplyinfo.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}