package com.flh.model.service.impl;

import com.flh.model.dao.AskhelpMapper;
import com.flh.model.dao.AskhosquestionMapper;
import com.flh.model.dao.HospitalMapper;
import com.flh.model.entity.Askhelp;
import com.flh.model.entity.Askhosquestion;
import com.flh.model.entity.Hospital;
import com.flh.model.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HospitalServiceImpl implements HospitalService {
@Autowired
private HospitalMapper hospitalMapper;
@Autowired
private AskhosquestionMapper askhosquestionMapper;
@Autowired
private AskhelpMapper askhelpMapper;

    public void setHospitalMapper(HospitalMapper hospitalMapper) {
        this.hospitalMapper = hospitalMapper;
    }

    /**
     * 查询医院详细信息
     * @param hospitalid
     * @return
     */
    @Override
    public Hospital getHospitalInfo(int hospitalid) {
        return hospitalMapper.selectByPrimaryKey(hospitalid);
    }
    /**
     * 添加询问的问题
     * @param askhosquestion
     * @return
     */
    @Override
    public void insertQue(Askhosquestion askhosquestion) {
         askhosquestionMapper.insertSelective(askhosquestion);
    }

    /**
     * 添加遇到的问题
     * @param askhelp
     */
    @Override
    public void insertHelp(Askhelp askhelp) {
        askhelpMapper.insertSelective(askhelp);
    }
}
