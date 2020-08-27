package com.flh.model.dao;

import com.flh.model.entity.Bloglabel;

import java.util.List;

public interface BloglabelMapper {
    int deleteByPrimaryKey(Integer labelid);

    int insert(Bloglabel record);

    int insertSelective(Bloglabel record);
    List<Bloglabel> alllabel();
    Bloglabel selectByPrimaryKey(Integer labelid);

    int updateByPrimaryKeySelective(Bloglabel record);

    int updateByPrimaryKey(Bloglabel record);
}