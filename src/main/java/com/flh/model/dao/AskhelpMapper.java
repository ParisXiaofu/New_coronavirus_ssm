package com.flh.model.dao;

import com.flh.model.entity.Askhelp;

public interface AskhelpMapper {
    int deleteByPrimaryKey(Integer askhelpid);

    int insert(Askhelp record);

    int insertSelective(Askhelp askhelp);

    Askhelp selectByPrimaryKey(Integer askhelpid);

    int updateByPrimaryKeySelective(Askhelp record);

    int updateByPrimaryKey(Askhelp record);
}