package com.flh.model.entity;

import java.io.Serializable;
import java.util.List;

public class Doctor implements Serializable {
    private Integer doctorid;

    private String doctorname;

    private String doctorinfo;

    private String doctoremail;

    private Integer doctortel;

    private Integer hospitalid;

    private List<Blog> blogList;

    private List<Education> educationList;

    private List<Porfessional> porfessionalList;

    public Doctor() {
    }

    public List<Education> getEducationList() {
        return educationList;
    }

    public void setEducationList(List<Education> educationList) {
        this.educationList = educationList;
    }

    public List<Porfessional> getPorfessionalList() {
        return porfessionalList;
    }

    public void setPorfessionalList(List<Porfessional> porfessionalList) {
        this.porfessionalList = porfessionalList;
    }

    public List<Blog> getBlogList() {
        return blogList;
    }

    public void setBlogList(List<Blog> blogList) {
        this.blogList = blogList;
    }

    public Integer getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(Integer doctorid) {
        this.doctorid = doctorid;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname == null ? null : doctorname.trim();
    }

    public String getDoctorinfo() {
        return doctorinfo;
    }

    public void setDoctorinfo(String doctorinfo) {
        this.doctorinfo = doctorinfo == null ? null : doctorinfo.trim();
    }

    public String getDoctoremail() {
        return doctoremail;
    }

    public void setDoctoremail(String doctoremail) {
        this.doctoremail = doctoremail == null ? null : doctoremail.trim();
    }

    public Integer getDoctortel() {
        return doctortel;
    }

    public void setDoctortel(Integer doctortel) {
        this.doctortel = doctortel;
    }

    public Integer getHospitalid() {
        return hospitalid;
    }

    public void setHospitalid(Integer hospitalid) {
        this.hospitalid = hospitalid;
    }
}