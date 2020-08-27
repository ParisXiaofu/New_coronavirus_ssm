package com.flh.controller.action;

import com.flh.model.entity.User;
import com.flh.model.service.UserService;
import com.flh.model.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Properties;
@Controller
@RequestMapping("/")
public class emailAction {
@Autowired
private UserService userService=new UserServiceImpl();

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
@RequestMapping("getuser")
@ResponseBody
public String getUser(String email,HttpSession session){
    if (userService.selectUser(email)==null){
        return "error";
    }else {
        User user=userService.selectUser(email);
        session.removeAttribute("userGetId");
        session.setAttribute("userGetId",user);
        return "success";
    }
}
    @RequestMapping("email")
    @ResponseBody
    public void GotoEmail(String email, HttpSession session) {
        // 以下变量为用户根据自己的情况设置
        String smtphost = "smtp.qq.com"; // 发送邮件服务器
        String user = "2514770624@qq.com"; // 邮件服务器登录用户名
        String password = "vyxtsepmamysecih"; // 邮件服务器登录密码
        String from = "xiaofu_email@qq.com"; // 发送人邮件地址
        String to = email; // 接受人邮件地址
        String subject = "重置密码"; // 邮件标题
        String body =
                "\n|| =======点击下面网址修改您的密码======= ||" +
                "\n||==||http://localhost:8080/changePwd.jsp ||==||" +
                "\n|| ============================= ||"; // 邮件内容
        // 以下为发送程序，用户无需改动
        try {
            //初始化Properties类对象
            Properties props = new Properties();
            //设置mail.smtp.host属性
            props.put("mail.smtp.host", smtphost);
            //设置使用验证
            props.put("mail.smtp.auth", "true");
            // 获取非共享的session对象
            Session ssn = Session.getInstance(props, null);
            //创建一个默认的MimeMessage对象。
            Message message = new MimeMessage(ssn);
            //创建InternetAddress对象
            InternetAddress fromAddress = new InternetAddress(from);
            //设置From: 头部的header字段
            message.setFrom(fromAddress);
            //创建InternetAddress对象
            InternetAddress toAddress = new InternetAddress(to);
            //设置 To: 头部的header字段
            message.addRecipient(Message.RecipientType.TO, toAddress);
            //设置 Subject: header字段
            message.setSubject(subject);
            // 现在设置的实际消息
            message.setText(body);
            //定义发送协议
            Transport transport = ssn.getTransport("smtp");
            //建立与服务器的链接
            transport.connect(smtphost, user, password);
            //发送邮件
            transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            //transport.send(message);
            //关闭邮件传输
            transport.close();

        } catch(Exception m) //捕获异常
        {
            System.out.println(m.toString());
            m.printStackTrace();
        }
            session.setAttribute("email",email);
    }
    }
