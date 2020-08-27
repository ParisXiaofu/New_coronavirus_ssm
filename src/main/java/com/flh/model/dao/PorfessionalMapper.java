package com.flh.model.dao;

import com.flh.model.entity.Porfessional;

public interface PorfessionalMapper {
    int deleteByPrimaryKey(Integer porfessionalid);

    int insert(Porfessional record);

    int insertSelective(Porfessional record);

    Porfessional selectByPrimaryKey(Integer porfessionalid);

    int updateByPrimaryKeySelective(Porfessional record);

    int updateByPrimaryKey(Porfessional record);
}