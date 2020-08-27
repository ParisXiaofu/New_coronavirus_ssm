package com.flh.model.entity;

import java.io.Serializable;
import java.util.List;

public class Hospital implements Serializable {
    private Integer hospitalid;

    private String hospitalinfo;

    private String hospitalname;

    private String hospitalsarsinfo;

    private String hospitalsarsinfopic;

    private String hospitaladdress;

    private String hospitalemail;

    private Integer hospitaltel;

    private String hospitalfax;

    private Integer hospitalrecovernum;

    private String monday;

    private String tuesday;

    private String wednesday;

    private String thursday;

    private String fridaytosunday;

    private List<Doctor> doctorList;

    private List<Askhosquestion> askhosquestionList;

    public Hospital() {
    }

    public List<Askhosquestion> getAskhosquestionList() {
        return askhosquestionList;
    }

    public void setAskhosquestionList(List<Askhosquestion> askhosquestionList) {
        this.askhosquestionList = askhosquestionList;
    }


    public List<Doctor> getDoctorList() {
        return doctorList;
    }

    public void setDoctorList(List<Doctor> doctorList) {
        this.doctorList = doctorList;
    }

    public Integer getHospitalid() {
        return hospitalid;
    }

    public void setHospitalid(Integer hospitalid) {
        this.hospitalid = hospitalid;
    }

    public String getHospitalinfo() {
        return hospitalinfo;
    }

    public void setHospitalinfo(String hospitalinfo) {
        this.hospitalinfo = hospitalinfo == null ? null : hospitalinfo.trim();
    }

    public String getHospitalname() {
        return hospitalname;
    }

    public void setHospitalname(String hospitalname) {
        this.hospitalname = hospitalname == null ? null : hospitalname.trim();
    }

    public String getHospitalsarsinfo() {
        return hospitalsarsinfo;
    }

    public void setHospitalsarsinfo(String hospitalsarsinfo) {
        this.hospitalsarsinfo = hospitalsarsinfo == null ? null : hospitalsarsinfo.trim();
    }

    public String getHospitalsarsinfopic() {
        return hospitalsarsinfopic;
    }

    public void setHospitalsarsinfopic(String hospitalsarsinfopic) {
        this.hospitalsarsinfopic = hospitalsarsinfopic == null ? null : hospitalsarsinfopic.trim();
    }

    public String getHospitaladdress() {
        return hospitaladdress;
    }

    public void setHospitaladdress(String hospitaladdress) {
        this.hospitaladdress = hospitaladdress == null ? null : hospitaladdress.trim();
    }

    public String getHospitalemail() {
        return hospitalemail;
    }

    public void setHospitalemail(String hospitalemail) {
        this.hospitalemail = hospitalemail == null ? null : hospitalemail.trim();
    }

    public Integer getHospitaltel() {
        return hospitaltel;
    }

    public void setHospitaltel(Integer hospitaltel) {
        this.hospitaltel = hospitaltel;
    }

    public String getHospitalfax() {
        return hospitalfax;
    }

    public void setHospitalfax(String hospitalfax) {
        this.hospitalfax = hospitalfax;
    }

    public Integer getHospitalrecovernum() {
        return hospitalrecovernum;
    }

    public void setHospitalrecovernum(Integer hospitalrecovernum) {
        this.hospitalrecovernum = hospitalrecovernum;
    }

    public String getMonday() {
        return monday;
    }

    public void setMonday(String monday) {
        this.monday = monday == null ? null : monday.trim();
    }

    public String getTuesday() {
        return tuesday;
    }

    public void setTuesday(String tuesday) {
        this.tuesday = tuesday == null ? null : tuesday.trim();
    }

    public String getWednesday() {
        return wednesday;
    }

    public void setWednesday(String wednesday) {
        this.wednesday = wednesday == null ? null : wednesday.trim();
    }

    public String getThursday() {
        return thursday;
    }

    public void setThursday(String thursday) {
        this.thursday = thursday == null ? null : thursday.trim();
    }

    public String getFridaytosunday() {
        return fridaytosunday;
    }

    public void setFridaytosunday(String fridaytosunday) {
        this.fridaytosunday = fridaytosunday == null ? null : fridaytosunday.trim();
    }
}