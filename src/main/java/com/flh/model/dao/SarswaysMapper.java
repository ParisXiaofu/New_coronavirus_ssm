package com.flh.model.dao;

import com.flh.model.entity.Sarsways;

import java.util.List;

public interface SarswaysMapper {
    int deleteByPrimaryKey(Integer sarswaysid);

    int insert(Sarsways record);

    int insertSelective(Sarsways record);

   List<Sarsways> selectByPrimaryKey();

    int updateByPrimaryKeySelective(Sarsways record);

    int updateByPrimaryKey(Sarsways record);
}