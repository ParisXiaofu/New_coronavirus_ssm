package com.flh.controller.action;

import com.flh.model.entity.Blogcomment;
import com.flh.model.entity.User;
import com.flh.model.service.CommentService;
import com.flh.model.service.impl.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/")
public class CommentAction {
    @Autowired
    private CommentService commentService=new CommentServiceImpl();
    private int pageSize=2;
    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    /**
     * 添加博客
     * @param comment
     * @param blogidadd
     * @param session
     */
    @RequestMapping("addComment")
    @ResponseBody
    public void insertComment(String comment,Integer blogidadd, HttpSession session){
        User user=(User) session.getAttribute("userGetId");
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date=new Date();
        String createTime=simpleDateFormat.format(date);
        Blogcomment blogcomment=new Blogcomment();
        blogcomment.setBlogid(blogidadd);
        blogcomment.setCommentinfo(comment);
        blogcomment.setCommenttime(createTime);
        blogcomment.setUserid(user.getUserid());
        commentService.insertComment(blogcomment);
    }

    /**
     * 删除博客
     * @param commentid
     */
    @RequestMapping("deleteComment")
    @ResponseBody
    public String  deleteComment(int userid,int commentid,HttpSession session){
        User userid1=(User)session.getAttribute("user1");
        if (!userid1.getUserid().equals(userid)){
            return "error";
        }else {
            commentService.deleteComment(commentid);
            return "success";
        }
    }

    /**
     * 分页查询博客
     * @param pageIndexCom
     * @param blogid
     * @param session
     * @return
     */
    @RequestMapping("allComment")
    @ResponseBody
    public Object allComment(Integer pageIndexCom,Integer blogid, HttpSession session){
        int num=commentService.totalPageComment(blogid);
        int totalPage=(num-1)/pageSize+1;
        if (pageIndexCom<1){
            pageIndexCom=totalPage;
        }
        if (pageIndexCom>totalPage){
            pageIndexCom=1;
        }
        List<Blogcomment> blogcommentList=commentService.commentIndex(pageIndexCom,pageSize,blogid);
        Map map=new HashMap();
        map.put("numCom",num);
        map.put("pageIndexCom",pageIndexCom);
        map.put("totalPage",totalPage);
        map.put("blogcommentList",blogcommentList);
        return map;
    }
}
