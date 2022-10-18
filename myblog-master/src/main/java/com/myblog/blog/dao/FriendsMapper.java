package com.myblog.blog.dao;

import com.myblog.blog.model.Friends;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FriendsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Friends record);

    int insertSelective(Friends record);

    Friends selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Friends record);

    int updateByPrimaryKey(Friends record);

    List<Friends> selectAuthorizationFirends();

    List<Friends> selectAllFriends();

    int updateAuthorizationByPrimaryKey(@Param("id") Long id, @Param("status") boolean status);
}