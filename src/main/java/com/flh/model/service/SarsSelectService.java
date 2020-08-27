package com.flh.model.service;

import com.flh.model.entity.*;

import java.util.Date;
import java.util.List;

public interface SarsSelectService {
    /**
     * 根据当天日期查询确诊新冠病毒人数详情
     * @param newdate
     * @return
     */
    public Sarsnuminfo getSarsNum(String  newdate);

    /**
     * 查询新冠病毒传播途径
     * @return
     */
    public List<Sarsways> getAllSarsWays();

    /**
     * 查询感染新冠病毒的症状
     * @return
     */
    public List<Sarssympt> getAllSarsSympt();

    /**
     * 查询如何正确洗手的方式
     * @return
     */
    public List<Wash> getAllWashWays();

    /**
     * 查询预防新冠病毒需要注意的事项
     * @param tips
     * @return
     */
    public List<Sarstips> getAllSarsTips(int tips);
}
