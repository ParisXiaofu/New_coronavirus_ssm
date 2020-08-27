package com.flh.model.dao;

import com.flh.model.entity.Blogcomment;
import com.flh.model.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogcommentMapper {
    int deleteByPrimaryKey(Integer commentid);

    int insert(Blogcomment record);

    int insertSelective(Blogcomment record);

    int  selectByPrimaryKey(int blogid);

    User selectU(int userid);

List<Blogcomment> allCommentIndex(@Param("intal") int intal,@Param("pageSizeCom") int pageSizeCom,@Param("blogids") int blogids);

int updateByPrimaryKeySelective(Blogcomment record);

    int updateByPrimaryKey(Blogcomment record);
}