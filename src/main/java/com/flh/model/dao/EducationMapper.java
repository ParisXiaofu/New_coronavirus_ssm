package com.flh.model.dao;

import com.flh.model.entity.Education;

public interface EducationMapper {
    int deleteByPrimaryKey(Integer educationid);

    int insert(Education record);

    int insertSelective(Education record);

    Education selectByPrimaryKey(Integer educationid);

    int updateByPrimaryKeySelective(Education record);

    int updateByPrimaryKey(Education record);
}