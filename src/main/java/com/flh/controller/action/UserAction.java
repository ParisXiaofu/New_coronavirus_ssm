package com.flh.controller.action;

import com.flh.model.entity.User;
import com.flh.model.service.UserService;
import com.flh.model.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class UserAction {
    @Autowired
    private UserService userService=new UserServiceImpl();

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * 登录
     * @param user
     * @param session
     */
    @RequestMapping("login")
    @ResponseBody
    public Object loginUser(User user, HttpSession session){
        if (userService.loginService(user)!=null){
            User user1=userService.loginService(user);
            session.setAttribute("user1",user1);
            return user1;
        }

    return "error";
    }

    /**
     * 注册
     * @param user
     */
    @RequestMapping("registered")
    @ResponseBody
    public void registertd(User user){
        userService.registeredService(user);
    }

    /**
     * 重置密码
     * @param user
     * @param session
     */
    @RequestMapping("updatePwd")
    @ResponseBody
    public String  updatePwd(User user, HttpSession session){
        if (session.getAttribute("email")==null){
            return "error";
        }else {
        user.setUseremail((String) session.getAttribute("email"));
        userService.updatePwdService(user);
        session.removeAttribute("email");
        return "success";
        }
    }
    /**
     * 退出登录
     */
    @RequestMapping("loadDown")
    public String  loadDown(HttpSession session){
       session.removeAttribute("user1");
       session.removeAttribute("userGetId");
       return "index";

    }
}
