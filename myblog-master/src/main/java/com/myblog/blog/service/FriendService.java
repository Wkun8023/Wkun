package com.myblog.blog.service;

import com.myblog.blog.model.Friends;

import java.util.List;

/**
 * ClassName:FriendService
 * Package:com.myblog.blog.service
 * Description:
 *
 * @Date:2021/11/9 22:51
 * @com.chuangmei
 */
public interface FriendService {

    // 查询已授权的友链
    List<Friends> queryAuthorizationFirends();

    Integer AddFriend(Friends friends);

    List<Friends> queryAllFriends();

    int authorization(Long id, boolean status);

    int deleteFriendById(Long id);
}
