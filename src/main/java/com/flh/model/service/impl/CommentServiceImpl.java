package com.flh.model.service.impl;

import com.flh.model.dao.BlogcommentMapper;
import com.flh.model.entity.Blogcomment;
import com.flh.model.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CommentServiceImpl implements CommentService {
    @Autowired
    private BlogcommentMapper blogcommentMapper;

    public void setBlogcommentMapper(BlogcommentMapper blogcommentMapper) {
        this.blogcommentMapper = blogcommentMapper;
    }
    /**
     * 根据查询评论条数
     * @param blogid
     * @return
     */
    @Override
    public int totalPageComment(int blogid) {
        return blogcommentMapper.selectByPrimaryKey(blogid);
    }

    /**
     * 分页查询博客
     * @param pageIndex
     * @param pageSize
     * @param blogid
     * @return
     */
    @Override
    public List<Blogcomment> commentIndex(int pageIndex, int pageSize, int blogid) {
        int intal=(pageIndex-1)*pageSize;
        return blogcommentMapper.allCommentIndex(intal,pageSize,blogid);
    }

    /**
     * 添加博客
     * @param blogcomment
     */
    @Override
    public void insertComment(Blogcomment blogcomment) {
        blogcommentMapper.insertSelective(blogcomment);
    }

    /**
     * 删除博客
     * @param commentid
     */
    @Override
    public void deleteComment(int commentid) {
        blogcommentMapper.deleteByPrimaryKey(commentid);
    }
}
