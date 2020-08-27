package com.flh.model.dao;

import com.flh.model.entity.Askhosquestion;

public interface AskhosquestionMapper {
    int deleteByPrimaryKey(Integer questionid);

    int insert(Askhosquestion record);

    int insertSelective(Askhosquestion askhosquestion);

    Askhosquestion selectByPrimaryKey(Integer questionid);

    int updateByPrimaryKeySelective(Askhosquestion record);

    int updateByPrimaryKey(Askhosquestion record);
}