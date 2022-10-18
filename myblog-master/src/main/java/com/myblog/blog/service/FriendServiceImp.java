package com.myblog.blog.service;

import com.myblog.blog.dao.FriendsMapper;
import com.myblog.blog.model.Friends;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName:FriendServiceImp
 * Package:com.myblog.blog.service
 * Description:
 *
 * @Date:2021/11/9 22:52
 * @com.chuangmei
 */
@Service
public class FriendServiceImp implements FriendService {

    @Resource
    private FriendsMapper friendDao;

    @Override
    public List<Friends> queryAuthorizationFirends() {

        List<Friends> friends = friendDao.selectAuthorizationFirends();

        return friends;
    }

    @Override
    @Transactional(isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public Integer AddFriend(Friends friends) {

        friends.setAuthorization(false);

        return friendDao.insertSelective(friends);
    }

    @Override
    public List<Friends> queryAllFriends() {

        return friendDao.selectAllFriends();
    }

    @Override
    @Transactional(isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public int authorization(Long id, boolean status) {

        return friendDao.updateAuthorizationByPrimaryKey(id,status);
    }

    @Override
    public int deleteFriendById(Long id) {
        return friendDao.deleteByPrimaryKey(id);
    }


}
