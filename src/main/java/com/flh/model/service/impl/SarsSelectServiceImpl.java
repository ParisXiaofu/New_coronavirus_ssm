package com.flh.model.service.impl;

import com.flh.model.dao.*;
import com.flh.model.entity.*;
import com.flh.model.service.SarsSelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
@Service
@Transactional
public class SarsSelectServiceImpl implements SarsSelectService {
    @Autowired
    private SarsnuminfoMapper sarsnuminfoMapper;
    @Autowired
    private SarswaysMapper sarswaysMapper;
    @Autowired
    private SarssymptMapper sarssymptMapper;
    @Autowired
    private SarstipsMapper sarstipsMapper;
   @Autowired
    private WashMapper washMapper;
    /**
     * 根据当天日期查询确诊新冠病毒人数详情
     * @param newdate
     * @return
     */
    @Override
    public Sarsnuminfo getSarsNum(String newdate) {
        return sarsnuminfoMapper.selectByPrimaryKey(newdate);
    }
    /**
     * 查询新冠病毒传播途径
     * @return
     */
    @Override
    public List<Sarsways> getAllSarsWays() {
        return sarswaysMapper.selectByPrimaryKey();
    }
    /**
     * 查询感染新冠病毒的症状
     * @return
     */
    @Override
    public List<Sarssympt> getAllSarsSympt() {
        return sarssymptMapper.selectByPrimaryKey();
    }
    /**
     * 查询如何正确洗手的方式
     * @return
     */
    @Override
    public List<Wash> getAllWashWays() {
        return washMapper.selectByPrimaryKey() ;
    }
    /**
     * 查询预防新冠病毒需要注意的事项
     * @param tips
     * @return
     */
    @Override
    public List<Sarstips> getAllSarsTips(int tips) {
        return sarstipsMapper.selectByPrimaryKey(tips);
    }

    public void setSarsnuminfoMapper(SarsnuminfoMapper sarsnuminfoMapper) {
        this.sarsnuminfoMapper = sarsnuminfoMapper;
    }

    public void setSarswaysMapper(SarswaysMapper sarswaysMapper) {
        this.sarswaysMapper = sarswaysMapper;
    }

    public void setSarssymptMapper(SarssymptMapper sarssymptMapper) {
        this.sarssymptMapper = sarssymptMapper;
    }

    public void setSarstipsMapper(SarstipsMapper sarstipsMapper) {
        this.sarstipsMapper = sarstipsMapper;
    }

    public void setWashMapper(WashMapper washMapper) {
        this.washMapper = washMapper;
    }
}
