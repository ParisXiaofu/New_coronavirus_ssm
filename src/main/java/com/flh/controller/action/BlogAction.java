package com.flh.controller.action;

import com.flh.model.entity.Blog;
import com.flh.model.entity.Bloglabel;
import com.flh.model.entity.Blogtype;
import com.flh.model.service.BlogService;
import com.flh.model.service.impl.BlogServiceImpl;
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
public class BlogAction {
    @Autowired
    private BlogService blogService=new BlogServiceImpl();
    private int pageSize=6;
    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    /**
     * 查询博客详情
     * @param blogid
     * @param session
     */
    @RequestMapping("blogInfo")
public String  blogInfo(int blogid,HttpSession session){
    Blog blog=blogService.getBlogInfo(blogid);
    session.setAttribute("blogInfo",blog);
        List<Bloglabel> bloglabelList=blog.getBloglabelList();
        int comment=blog.getBlogcommentList().size();
    session.setAttribute("blogLableList1",bloglabelList);
    session.setAttribute("comment",comment);
    return "redirect:blog-single.jsp";
}
    /**
     * 分页查询博客
     * @param pageIndex2
     * @return
     */
    @RequestMapping("allBlog")
    @ResponseBody
    public  Object pageIndexBlog(int pageIndex2, HttpSession session){
        int num=blogService.getTotalPage();
        int totalPage=(num-1)/pageSize+1;
        List totalPageList=new ArrayList();
        for (int i=1;i<=totalPage;i++){
         totalPageList.add(i);
        }
        if (pageIndex2<1){
            pageIndex2=totalPage;
        }
        if (pageIndex2>totalPage){
            pageIndex2=1;
        }
        List<com.flh.model.entity.Blog> blogList1=blogService.getAllBlog(pageIndex2,pageSize);
        session.setAttribute("blogList1",blogList1);
        session.setAttribute("totalPageBlogList",totalPageList);
        Map map=new HashMap();
        map.put("totalPageBlogList",totalPageList);
        map.put("pageIndex2",pageIndex2);
        map.put("blogList1",blogList1);
        return map;
    }

    /**
     * 查询最近文章
     */
    @RequestMapping("newBlog")
    @ResponseBody
    public Object newBlog(){
        List<Blog> blogList=blogService.getAllBlog(1,4);
        return blogList;
    }
    /**
     * 查询所有类型
     */
    @RequestMapping("alltype")
    @ResponseBody
    public Object alltype(){
        List<Blogtype> blogtypeList=blogService.allType();
        return blogtypeList;
    }
    /**
     * 查询所有类型
     */
    @RequestMapping("alllabel")
    @ResponseBody
    public Object alllabel(){
       List<Bloglabel> bloglabelList=blogService.allLablel();
        return bloglabelList;
    }
    /**
     * 查询相关博客
     * @param blogtypeid
     * @return
     */
    @RequestMapping("relatedBlog")
    @ResponseBody
    public Object relatedBlog(int blogtypeid){
        List<Blog> blogList=blogService.selectRelated(blogtypeid);
        return blogList;
    }

    @RequestMapping("select")
    @ResponseBody
    public Object select(String blogtopic, String doctorname,int pageindex){
        int num=blogService.selectpageS(blogtopic,doctorname);
        int totalPage=(num-1)/pageSize+1;
        if (pageindex<1){
            pageindex=totalPage;
        }if (pageindex>totalPage){
            pageindex=1;
        }
        List<Blog> blogList=blogService.selectBlogS(blogtopic,doctorname,pageindex,pageSize);
        Map map=new HashMap();
        map.put("pageindex",pageindex);
        map.put("totalPage",totalPage);
        map.put("blogListS",blogList);
        return map;
    }
}
