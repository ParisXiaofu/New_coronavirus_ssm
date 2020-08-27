package com.flh.model.dao;

import com.flh.model.entity.Sarssympt;

import java.util.List;

public interface SarssymptMapper {
    int deleteByPrimaryKey(Integer sarssymptid);

    int insert(Sarssympt record);

    int insertSelective(Sarssympt record);

    List<Sarssympt> selectByPrimaryKey();

    int updateByPrimaryKeySelective(Sarssympt record);

    int updateByPrimaryKey(Sarssympt record);
}