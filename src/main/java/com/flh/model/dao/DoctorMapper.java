package com.flh.model.dao;

import com.flh.model.entity.Blog;
import com.flh.model.entity.Doctor;
import com.flh.model.entity.Education;
import com.flh.model.entity.Porfessional;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorMapper {
    int deleteByPrimaryKey(Integer doctorid);

    int insert(Doctor record);

    int insertSelective(Doctor record);
    List<Blog> selectBlog(Integer doctorid);
    List<Education> selectEdu(Integer doctorid);
    List<Porfessional> selectPor(Integer doctorid);

    int totalPageDoctor(@Param("hospitalid") Integer hospitalid);
    List<Doctor> allDcotor(@Param("off")Integer off,@Param("pageSize") Integer pageSize,@Param("hospitalid")Integer hospitalid);
    Doctor selectDoctorInfo(Integer doctorid);

    int updateByPrimaryKeySelective(Doctor record);

    int updateByPrimaryKey(Doctor record);
}