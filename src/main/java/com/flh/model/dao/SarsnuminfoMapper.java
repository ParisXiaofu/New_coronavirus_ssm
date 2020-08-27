package com.flh.model.dao;

import com.flh.model.entity.Sarsnuminfo;

import java.util.Date;

public interface SarsnuminfoMapper {
    int deleteByPrimaryKey(Integer sarsnuminfoid);

    int insert(Sarsnuminfo record);

    int insertSelective(Sarsnuminfo record);

    Sarsnuminfo selectByPrimaryKey(String  newdate);

    int updateByPrimaryKeySelective(Sarsnuminfo record);

    int updateByPrimaryKey(Sarsnuminfo record);
}