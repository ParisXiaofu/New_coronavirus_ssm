package com.flh.controller.action;

import com.flh.model.entity.*;
import com.flh.model.service.SarsSelectService;
import com.flh.model.service.impl.SarsSelectServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class SarsSelectAction {
    @Autowired
    private SarsSelectService sarsSelectService=new SarsSelectServiceImpl();

    public void setSarsSelectService(SarsSelectService sarsSelectService) {
        this.sarsSelectService = sarsSelectService;
    }

    /**
     * 根据当天日期查询确诊新冠病毒人数详情
     * @return
     */
    @RequestMapping("sarsNum")
    @ResponseBody
    public Object getSarsNum(){
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        String newday=simpleDateFormat.format(date);
        Sarsnuminfo sarsnuminfo=sarsSelectService.getSarsNum("2020-07-06");
        return sarsnuminfo;
    }
    /**
     * 查询新冠病毒传播途径
     * @return
     */
    @RequestMapping("sarsWays")
    public String  allSarsWays(HttpSession session) {
        List<Sarsways> sarswaysList=sarsSelectService.getAllSarsWays();
        session.setAttribute("sarswaysList",sarswaysList);
        return "redirect:sarsTips.form";
    }
    /**
     * 查询预防新冠病毒需要注意的事项
     * @return
     */
    @RequestMapping("sarsTips")
    public String  allSarsTips(HttpSession session) {
        List<Sarstips> sarstipsListOk=sarsSelectService.getAllSarsTips(1);
        List<Sarstips> sarstipsListNo=sarsSelectService.getAllSarsTips(0);
        session.setAttribute("sarstipsListOk",sarstipsListOk);
        session.setAttribute("sarstipsListNo",sarstipsListNo);
        return "redirect:sarsSympt.form";
    }
    /**
     * 查询新冠病毒传播途径
     * @return
     */
    @RequestMapping("sarsSympt")
    public String  allSarsSympt(HttpSession session) {
       List<Sarssympt> sarssymptList=sarsSelectService.getAllSarsSympt();
        session.setAttribute("sarssymptList",sarssymptList);
        return "redirect:index.jsp";
    }
    /**
     * 查询新冠病毒传播途径
     * @return
     */
    @RequestMapping("wash")
    @ResponseBody
    public Object  allWashWays() {
       List<Wash> washList=sarsSelectService.getAllWashWays();
        return washList;
    }
}
