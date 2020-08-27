package com.flh.model.entity;

import java.io.Serializable;

public class Askhosquestion implements Serializable {
    private Integer questionid;

    private String questiontopic;

    private String questionreplyinfo;

    private String questioninfo;

    private Integer hospitalid;

    private Integer userid;

    public Integer getQuestionid() {
        return questionid;
    }

    public void setQuestionid(Integer questionid) {
        this.questionid = questionid;
    }

    public String getQuestiontopic() {
        return questiontopic;
    }

    public void setQuestiontopic(String questiontopic) {
        this.questiontopic = questiontopic == null ? null : questiontopic.trim();
    }

    public String getQuestionreplyinfo() {
        return questionreplyinfo;
    }

    public void setQuestionreplyinfo(String questionreplyinfo) {
        this.questionreplyinfo = questionreplyinfo == null ? null : questionreplyinfo.trim();
    }

    public String getQuestioninfo() {
        return questioninfo;
    }

    public void setQuestioninfo(String questioninfo) {
        this.questioninfo = questioninfo == null ? null : questioninfo.trim();
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