package com.flh.model.service;

import com.flh.model.entity.Askdocquestion;
import com.flh.model.entity.Doctor;

import java.util.List;

public interface DoctorService {
    /**
     * 查询医生详情
     * @param doctorid
     * @return
     */
    public Doctor doctorInfo(int doctorid);

    /**
     * 向医生咨询问题
     * @param askdocquestion
     */
    public void addQues(Askdocquestion askdocquestion);

    public int gettotalPage(int hospitalid);

    public List<Doctor> getAllDoctor(int pageIndex,int pageSize,int hospitalid);
}
