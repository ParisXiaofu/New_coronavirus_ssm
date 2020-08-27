package com.flh.model.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Blog implements Serializable {
    private Integer blogid;

    private String blogtopic;

    private String blogpic;

    private String bloginfo;

    private Integer blogtypeid;

    private Date blogtime;

    private Doctor doctor;

    private List<Bloglabel> bloglabelList;

    private List<Blogcomment> blogcommentList;
    public Blog() {
    }

    public List<Blogcomment> getBlogcommentList() {
        return blogcommentList;
    }

    public void setBlogcommentList(List<Blogcomment> blogcommentList) {
        this.blogcommentList = blogcommentList;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public List<Bloglabel> getBloglabelList() {
        return bloglabelList;
    }

    public void setBloglabelList(List<Bloglabel> bloglabelList) {
        this.bloglabelList = bloglabelList;
    }

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }

    public String getBlogtopic() {
        return blogtopic;
    }

    public void setBlogtopic(String blogtopic) {
        this.blogtopic = blogtopic == null ? null : blogtopic.trim();
    }

    public String getBlogpic() {
        return blogpic;
    }

    public void setBlogpic(String blogpic) {
        this.blogpic = blogpic == null ? null : blogpic.trim();
    }

    public String getBloginfo() {
        return bloginfo;
    }

    public void setBloginfo(String bloginfo) {
        this.bloginfo = bloginfo == null ? null : bloginfo.trim();
    }


    public Integer getBlogtypeid() {
        return blogtypeid;
    }

    public void setBlogtypeid(Integer blogtypeid) {
        this.blogtypeid = blogtypeid;
    }

    public Date getBlogtime() {
        return blogtime;
    }

    public void setBlogtime(Date blogtime) {
        this.blogtime = blogtime;
    }
}