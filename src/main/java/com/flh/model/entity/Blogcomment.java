package com.flh.model.entity;

import java.io.Serializable;

public class Blogcomment implements Serializable {
    private Integer commentid;

    private String commentinfo;

    private String  commenttime;

    private Integer blogid;

    private User user;

    private Integer userid;
    public Blogcomment() {
    }


    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public String getCommentinfo() {
        return commentinfo;
    }

    public void setCommentinfo(String commentinfo) {
        this.commentinfo = commentinfo == null ? null : commentinfo.trim();
    }

    public String getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(String commenttime) {
        this.commenttime = commenttime;
    }

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}