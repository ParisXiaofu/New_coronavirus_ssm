package com.flh.model.dao;

import com.flh.model.entity.Askhosquestion;
import com.flh.model.entity.Doctor;
import com.flh.model.entity.Hospital;

import java.util.List;

public interface HospitalMapper {
    int deleteByPrimaryKey(Integer hospitalid);

    int insert(Hospital record);

    int insertSelective(Hospital record);

    List<Askhosquestion> selectAskHos(Integer hospitalid);

    List<Doctor> selectDoctor(Integer hospitalid);

    Hospital selectByPrimaryKey(Integer hospitalid);

    int updateByPrimaryKeySelective(Hospital record);

    int updateByPrimaryKey(Hospital record);
}