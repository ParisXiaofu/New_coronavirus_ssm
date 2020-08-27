package com.flh.controller.action;

import com.flh.model.entity.*;
import com.flh.model.service.HospitalService;
import com.flh.model.service.impl.HospitalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class HospitalAction {
    @Autowired
    private HospitalService hospitalService=new HospitalServiceImpl();

    public void setHospitalService(HospitalService hospitalService) {
        this.hospitalService = hospitalService;
    }

    /**
     * 医院信息
     * @param session
     * @return
     */
    @RequestMapping("hospital")
    @ResponseBody
    public Object hospitalInfo(HttpSession session){
        Hospital hospital=hospitalService.getHospitalInfo(1001);
        List<Doctor> doctorList1=hospital.getDoctorList();
        List<Askhosquestion> askhosquestionList1=hospital.getAskhosquestionList();
        session.setAttribute("doctorList1",doctorList1);
        session.setAttribute("hospital",hospital);
        return askhosquestionList1;
    }

    /**
     * 咨询问题
     * @param que
     * @param session
     */
    @RequestMapping("addQue")
    @ResponseBody
    public void addQue(String que, HttpSession session){
        User user=(User) session.getAttribute("userGetId");
        Askhosquestion askhosquestion=new Askhosquestion();
        askhosquestion.setUserid(user.getUserid());
        askhosquestion.setHospitalid(1001);
        askhosquestion.setQuestioninfo(que);
        hospitalService.insertQue(askhosquestion);
    }

    /**
     * 添加遇到的问题
     * @param helpInfo
     * @param session
     */
    @RequestMapping("addHelp")
    @ResponseBody
    public void addHelp(String helpInfo,HttpSession session){
        User user=(User) session.getAttribute("userGetId");
        Askhelp askhelp=new Askhelp();
        askhelp.setUserid(user.getUserid());
        askhelp.setHospitalid(1001);
        askhelp.setAskhelpinfo(helpInfo);
        hospitalService.insertHelp(askhelp);
    }
}
