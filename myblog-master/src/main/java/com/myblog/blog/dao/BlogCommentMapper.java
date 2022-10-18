package com.myblog.blog.dao;

import com.myblog.blog.model.BlogComment;
import com.myblog.blog.model.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogCommentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BlogComment record);

    int insertSelective(BlogComment record);

    BlogComment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BlogComment record);

    int updateByPrimaryKey(BlogComment record);

    List<BlogComment> selectCommentsByBlogId(Long id);

    int selectCommentsCount();

    List<BlogComment> selectCommentsByBlogIdLimit(@Param("id") Long blogid, @Param("count") Integer count);

    int selectCommentsCountByBlogId(Long blogid);

    BlogComment selectCommentByCommentId(Long commentid);
}