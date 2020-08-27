package com.flh.model.service;

import com.flh.model.entity.Blogcomment;

import java.util.List;

public interface CommentService {
    /**
     * 根据查询评论条数
     * @param blogid
     * @return
     */
    public int totalPageComment(int blogid);

    /**
     * 分页查询博客
     * @param pageIndex
     * @param pageSize
     * @param blogid
     * @return
     */
    public List<Blogcomment> commentIndex(int pageIndex,int pageSize,int blogid);

    /**
     * 添加博客
     * @param blogcomment
     */
    public void insertComment(Blogcomment blogcomment);

    /**
     *删除博客
     * @param commentid
     */
    public void deleteComment(int commentid);
}
