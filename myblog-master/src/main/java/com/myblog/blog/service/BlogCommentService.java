package com.myblog.blog.service;

import com.myblog.blog.model.BlogComment;
import com.myblog.blog.model.Comment;

import java.util.List;

/**
 * ClassName:BlogCommentService
 * Package:com.myblog.blog.service
 * Description:
 *
 * @Date:2020/7/29 11:08
 * @com.chuangmei
 */
public interface BlogCommentService {
    //发布评论
    int addBlogComment(BlogComment blogComment);

    List<BlogComment> queryCommentsByBlogId(Long valueOf);

    int queryCommentCount();

    List<BlogComment> queryCommentsByBlogIdLimit(Long blogid, Integer count);

    int queryCommentCountByBlogId(Long blogid);

    BlogComment queryCommentByCommentId(Long id);
}
