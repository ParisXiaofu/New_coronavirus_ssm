package com.flh.model.dao;

import com.flh.model.entity.Askdocquestion;

public interface AskdocquestionMapper {
    int deleteByPrimaryKey(Integer docquestionid);

    int insert(Askdocquestion record);

    int insertSelective(Askdocquestion askdocquestion);

    Askdocquestion selectByPrimaryKey(Integer docquestionid);

    int updateByPrimaryKeySelective(Askdocquestion record);

    int updateByPrimaryKey(Askdocquestion record);
}