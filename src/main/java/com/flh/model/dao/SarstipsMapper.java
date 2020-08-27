package com.flh.model.dao;

import com.flh.model.entity.Sarstips;

import java.util.List;

public interface SarstipsMapper {
    int deleteByPrimaryKey(Integer sarstipsid);

    int insert(Sarstips record);

    int insertSelective(Sarstips record);

   List<Sarstips> selectByPrimaryKey(Integer tips);

    int updateByPrimaryKeySelective(Sarstips record);

    int updateByPrimaryKey(Sarstips record);
}