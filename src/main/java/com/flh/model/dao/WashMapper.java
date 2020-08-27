package com.flh.model.dao;

import com.flh.model.entity.Wash;

import java.util.List;

public interface WashMapper {
    int deleteByPrimaryKey(Integer washid);

    int insert(Wash record);

    int insertSelective(Wash record);

    List<Wash> selectByPrimaryKey();

    int updateByPrimaryKeySelective(Wash record);

    int updateByPrimaryKey(Wash record);
}