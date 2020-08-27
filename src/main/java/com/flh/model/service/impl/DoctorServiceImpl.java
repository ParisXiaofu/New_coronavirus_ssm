package com.flh.model.service.impl;

import com.flh.model.dao.AskdocquestionMapper;
import com.flh.model.dao.DoctorMapper;
import com.flh.model.entity.Askdocquestion;
import com.flh.model.entity.Doctor;
import com.flh.model.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class DoctorServiceImpl  implements DoctorService {
    @Autowired
    private DoctorMapper doctorMapper;
@Autowired
private AskdocquestionMapper askdocquestionMapper;
    public void setDoctorMapper(DoctorMapper doctorMapper) {
        this.doctorMapper = doctorMapper;
    }

    /**
     * 查询医生详情
     * @param doctorid
     * @return
     */
    @Override
    public Doctor doctorInfo(int doctorid) {
        return doctorMapper.selectDoctorInfo(doctorid);
    }

    /**
     * 向医医生咨询问题
     * @param askdocquestion
     */
    @Override
    public void addQues(Askdocquestion askdocquestion) {
        askdocquestionMapper.insertSelective(askdocquestion);
    }

    /**
     * 查询总页数
     * @param hospitalid
     * @return
     */
    @Override
    public int gettotalPage( int hospitalid) {
        return doctorMapper.totalPageDoctor( hospitalid);
    }

    /**
     * 分页查询
     * @param pageIndex
     * @param pageSize
     * @param hospitalid
     * @return
     */
    @Override
    public List<Doctor> getAllDoctor(int pageIndex, int pageSize, int hospitalid) {
        int off=(pageIndex-1)*pageSize;
        return doctorMapper.allDcotor(off,pageSize,hospitalid);
    }
}
