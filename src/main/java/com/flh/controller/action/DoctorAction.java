package com.flh.controller.action;

import com.flh.model.entity.Askdocquestion;
import com.flh.model.entity.Doctor;
import com.flh.model.entity.User;
import com.flh.model.service.DoctorService;
import com.flh.model.service.impl.DoctorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class DoctorAction {
    @Autowired
    private DoctorService doctorService=new DoctorServiceImpl();
    private int pageSize=4;
    public void setDoctorService(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    /**
     * 医生详情
     * @param doctorid
     * @param session
     */
    @RequestMapping("doctorInfo")
    public String  doctorInfo(int doctorid, HttpSession session){
       Doctor doctor=doctorService.doctorInfo(doctorid);

       session.setAttribute("BlogDocList",doctor.getBlogList());
        session.setAttribute("doctor",doctor);
        return "doctor-single";
    }
    /**
     * 咨询问题
     * @param que
     * @param session
     */
    @RequestMapping("addDocQue")
    @ResponseBody
    public void addQue(String que,int doctorid,HttpSession session){
        User user=(User) session.getAttribute("userGetId");
        Askdocquestion askdocquestion=new Askdocquestion();
        askdocquestion.setUserid(user.getUserid());
        askdocquestion.setDoctorid(doctorid);
        askdocquestion.setDocquestioninfo(que);
        doctorService.addQues(askdocquestion);
    }
   @RequestMapping("allDoctor")
   @ResponseBody
    public Object allDoctor(int pageIndex,HttpSession session){
        int hospitalid=1001;
        int allNum=doctorService.gettotalPage(hospitalid);
        int totalPage=(allNum-1)/pageSize+1;
        List totalPageList=new ArrayList<>();
        for (int i=1;i<=totalPage;i++){
            (totalPageList).add(i);
        }
        if (pageIndex<1){
            pageIndex=totalPage;
        }if (pageIndex>=pageSize){
            pageIndex=1;
       }
       List<Doctor> doctorListIndex=doctorService.getAllDoctor(pageIndex,pageSize,hospitalid);
        session.setAttribute("doctorListIndex",doctorListIndex);
       session.setAttribute("totalPageList",totalPageList);
       session.setAttribute("pageIndex",pageIndex);
       Map map=new HashMap();
       map.put("pageIndex",pageIndex);
       map.put("doctorListIndex",doctorListIndex);
       map.put("totalPageList",totalPageList);
       return map;
   }
}
