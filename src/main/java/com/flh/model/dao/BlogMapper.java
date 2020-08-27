package com.flh.model.dao;

import com.flh.model.entity.Blog;
import com.flh.model.entity.Blogcomment;
import com.flh.model.entity.Bloglabel;
import com.flh.model.entity.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer blogid);

    int insert(Blog record);

    int insertSelective(Blog record);

    List<Bloglabel> selectAllLable(int blogid);

    Doctor selectDoc(Integer doctorid);

    Blog selectByPrimaryKey(int blogid);

    List<Blog> selectRelated(int blogtypeid);

    int selectpage(@Param("blogtopic")String blogtopic,@Param("doctorname") String doctorname);

    List<Blog> select(@Param("blogtopic1")String blogtopic,@Param("doctorname1")String doctorname,@Param("index") int index,@Param("pageSizeS") int pageSizeS);

    List<Blogcomment> selectCom(int blogid);

    int selectBlogNum();

    List<Blog> selectBlogIndex(@Param("total") int total,@Param("pageSize") int pageSize);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
}