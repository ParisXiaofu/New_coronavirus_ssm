package com.flh.model.service;

import com.flh.model.entity.Askhelp;
import com.flh.model.entity.Askhosquestion;
import com.flh.model.entity.Hospital;

public interface HospitalService {
    /**
     * 查询医院详情+
     *
     * @param hospitalid
     * @return
     */
    public Hospital getHospitalInfo(int hospitalid);
    /**
     * 添加询问的问题
     * @param askhosquestion
     * @return
     */
    public void insertQue(Askhosquestion askhosquestion);
    /**
     * 添加遇到的问题
     * @param askhelp
     */
    public void insertHelp(Askhelp askhelp);
}
