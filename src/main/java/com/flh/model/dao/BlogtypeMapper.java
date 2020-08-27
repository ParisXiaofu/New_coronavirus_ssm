package com.flh.model.dao;

import com.flh.model.entity.Blogtype;

import java.util.List;

public interface BlogtypeMapper {
    int deleteByPrimaryKey(Integer blogtypeid);

    int insert(Blogtype record);

    int insertSelective(Blogtype record);

    List<Blogtype> alltype();

    Blogtype selectByPrimaryKey(Integer blogtypeid);

    int updateByPrimaryKeySelective(Blogtype record);

    int updateByPrimaryKey(Blogtype record);
}