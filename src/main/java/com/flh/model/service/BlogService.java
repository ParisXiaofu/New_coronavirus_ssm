package com.flh.model.service;

import com.flh.model.entity.Blog;
import com.flh.model.entity.Bloglabel;
import com.flh.model.entity.Blogtype;

import java.util.List;

public interface BlogService {
    /**
     * 获取博客总条数
     * @return
     */
    public int getTotalPage();

    /**
     * 分页查询博客
     * @param pageIndex
     * @param pageSize
     * @return
     */
    public List<Blog> getAllBlog(int pageIndex, int pageSize);

    /**
     * 查询博客详情
     * @param blogid
     * @return
     */
    public Blog getBlogInfo(int blogid);

    /**
     * 查询所有类型
     * @return
     */
    public List<Blogtype> allType();

    /**
     * 查询所有标签
     */
    public List<Bloglabel> allLablel();

    /**
     * 查询相关博客
     * @param blogtypeid
     * @return
     */
    public List<Blog> selectRelated(int blogtypeid);

    /**
     * 搜索条数
     * @param blogtopic
     * @param doctorname
     * @return
     */
    public int selectpageS(String blogtopic, String doctorname);

    /**
     * 搜索分页
     * @param blogtopic
     * @param doctorname
     * @param pageIndex
     * @param pageSize
     * @return
     */
    public List<Blog> selectBlogS(String blogtopic,String doctorname, int pageIndex,int pageSize);
}
