package com.flh.model.service.impl;

import com.flh.model.dao.BlogMapper;
import com.flh.model.dao.BloglabelMapper;
import com.flh.model.dao.BlogtypeMapper;
import com.flh.model.entity.Blog;
import com.flh.model.entity.Bloglabel;
import com.flh.model.entity.Blogtype;
import com.flh.model.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogMapper blogMapper;
    @Autowired
    private BlogtypeMapper blogtypeMapper;
    @Autowired
    private BloglabelMapper bloglabelMapper;

    public void setBloglabelMapper(BloglabelMapper bloglabelMapper) {
        this.bloglabelMapper = bloglabelMapper;
    }

    public void setBlogMapper(BlogMapper blogMapper) {
        this.blogMapper = blogMapper;
    }

    public void setBlogtypeMapper(BlogtypeMapper blogtypeMapper) {
        this.blogtypeMapper = blogtypeMapper;
    }

    /**
     * 查询博客总条数
     * @return
     */
    @Override
    public int getTotalPage() {
        return blogMapper.selectBlogNum();
    }

    /**
     * 分页查询博客
     * @param pageIndex
     * @param pageSize
     * @return
     */
    @Override
    public List<Blog> getAllBlog(int pageIndex, int pageSize) {
        int total=(pageIndex-1)*pageSize;
        return blogMapper.selectBlogIndex(total,pageSize);
    }

    /**
     * 查询博客详情
     * @param blogid
     * @return
     */
    @Override
    public Blog getBlogInfo(int blogid) {
        return blogMapper.selectByPrimaryKey(blogid);
    }

    /**
     * 查询所有博客类型
     * @return
     */
    @Override
    public List<Blogtype> allType() {
        return blogtypeMapper.alltype();
    }

    /**
     * 查询所有博客标签
     * @return
     */
    @Override
    public List<Bloglabel> allLablel() {
        return bloglabelMapper.alllabel();
    }
    /**
     * 查询相关博客
     * @param blogtypeid
     * @return
     */
    @Override
    public List<Blog> selectRelated(int blogtypeid) {
        return blogMapper.selectRelated(blogtypeid);
    }

    /**
     * 搜索页数
     * @param blogtopic
     * @param doctorname
     * @return
     */
    @Override
    public int selectpageS(String blogtopic, String doctorname) {
        return blogMapper.selectpage(blogtopic,doctorname);
    }

    /**
     * 分类查询
     * @param blogtopic
     * @param doctorname
     * @param pageIndex
     * @param pageSize
     * @return
     */
    @Override
    public List<Blog> selectBlogS(String blogtopic, String doctorname, int pageIndex, int pageSize) {
        int index=(pageIndex-1)*pageSize;
        return blogMapper.select(blogtopic,doctorname,index,pageSize);
    }
}
